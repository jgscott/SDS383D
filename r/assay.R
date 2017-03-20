library(mosaic)
library(lme4)
library(ggplot2)

assay = read.csv('assay.csv', header=TRUE)
summary(assay)

# EDA
xyplot(uterus ~ EE | protocol, data=assay)

# 1) Things look bunched up
# 2) Noninear dose-response curve
xyplot(uterus ~ factor(EE) | protocol, data=subset(assay, ZM==0))

# Major differences among the protocols
# A/B: juvenile rats
# C/D: adult rats
# Define a new response
assay$ubw = assay$uterus/assay$weight
assay$lubw = log(assay$ubw)

# Look at ubw for controls on a lab-by-protocol basis
controls = subset(assay, EE==0 & ZM==0)
xyplot(lubw ~ factor(group) | lab + protocol, data=controls) 

# An aside: can also use ggplot2
qplot(factor(group), ubw, facets=protocol~lab, data=controls)




# Compute the mean control ubw within each lab/protocol
vehiclecontrol = aggregate(lubw ~ lab + protocol, data=controls, mean) 

# Merge the data sets
assaywc = merge(assay, vehiclecontrol, by = c("lab", "protocol"))
head(assaywc)

# Use some better suffixes
assaywc = merge(assay, vehiclecontrol, by = c("lab", "protocol"), suffixes = c("", ".control"))
head(assaywc)

# Define the ratio of response to vehicle control response
assaywc$ubwnorm = assaywc$lubw - assaywc$lubw.control


xyplot(ubw ~ log10(EE) | lab, data=assay)

# Split the data set into the two sub-experiments
# We can leave out the controls in the EE data, which
# have average ubwnorm = 1 by construction
xtabs(~factor(ZM) + factor(EE), data=assaywc)
assayEE = subset(assaywc, ZM==0)
assayZM = subset(assaywc, EE==3)

xyplot(ubwnorm ~ log10(EE) | protocol, data=assayEE)
xyplot(ubwnorm ~ log10(EE) | protocol, type=c('p', 'r'), data=assayEE)
xyplot(ubwnorm ~ log10(EE) | lab, data=assayEE)
bwplot(ubwnorm ~ factor(EE) | lab, data=assayEE)


xyplot(ubwnorm ~ log10(EE) | lab, data=subset(assayEE, protocol=="A"))
xyplot(ubwnorm ~ log10(EE) | lab, data=subset(assayEE, protocol=="B"))
xyplot(ubwnorm ~ log10(EE) | lab, data=subset(assayEE, protocol=="C"))
xyplot(ubwnorm ~ log10(EE) | lab, data=subset(assayEE, protocol=="D"))

# Using ggplot2's qplot()
qplot(log10(EE), ubwnorm, facets= protocol~lab, data=assayEE)

# Start with a mixed model
# Treat EE as a factor as a cheap way
# to handle nonlinearity in the log curve
# Random effects for lab and protocol
hlm1 = lmer(ubwnorm ~ factor(EE) + (1 | lab) + (1 | protocol), data=assayEE)

r1.lab = ranef(hlm1, postVar=TRUE, whichel="lab")
dotplot(r1.lab)

r1.protocol = ranef(hlm1, postVar=TRUE, whichel="protocol")
dotplot(r1.protocol)

# Check the residuals
bwplot(resid(hlm1) ~ factor(EE) | protocol, data=assayEE)
bwplot(resid(hlm1) ~ factor(EE) | lab, data=assayEE)


# Random effects for each protocol/dosage combination
# This attempts to ease out systematic differences due
# to lab from those due to protocol/dosage combinations
hlm2 = lmer(ubwnorm ~ factor(EE) - 1 + (1 | lab) + (0 + factor(EE) | protocol), data=assayEE)

summary(hlm2)

r2.lab = ranef(hlm2, postVar=TRUE, whichel="lab")
dotplot(r2.lab)

se.lab = sqrt(attr(r2.lab$lab,"postVar"))

r2.protocol = ranef(hlm2, postVar=TRUE, whichel="protocol")
dotplot(r2.protocol)

round( attr(VarCorr(hlm2)$protocol, "correlation"), 2)

# Check the residuals
bwplot(resid(hlm2) ~ factor(EE) | protocol, data=assayEE)
bwplot(resid(hlm2) ~ factor(EE) | lab, data=assayEE)


# Allow both labs andprotocols to have 
# random effects at each level of dosage.
# Still separable in lab/protocol at a given dosage level
# This will take awhile!
system.time(hlm3 <- lmer(ubwnorm ~ factor(EE) - 1  + (0 + factor(EE) | protocol) + (0 + factor(EE) | lab), data=assayEE, control=list(maxIter = 2000, maxFN=6000)) )

r3.lab = ranef(hlm3, postVar=TRUE, whichel="lab")
dotplot(r3.lab)

r3.protocol = ranef(hlm3, postVar=TRUE, whichel="protocol")
dotplot(r3.protocol)

# Check the residuals
bwplot(resid(hlm3) ~ factor(EE) | protocol, data=assayEE)
bwplot(resid(hlm3) ~ factor(EE) | lab, data=assayEE)

round( attr(VarCorr(hlm3)$protocol, "correlation"), 2)
round( attr(VarCorr(hlm3)$lab, "correlation"), 2)


summary(hlm3)

# compare this to an ordinary fixed-effects model
lm3 = lm(ubwnorm ~ factor(EE) + protocol + lab + factor(EE):protocol + factor(EE):lab, data=assayEE)

# Similar fitted values
plot(fitted(lm3), fitted(hlm3))
abline(0,1)

# But the linear model is harder to interpret
summary(lm3)

# And now for the ZM experiment
bwplot(ubwnorm ~ factor(ZM) | protocol, data=assayZM)


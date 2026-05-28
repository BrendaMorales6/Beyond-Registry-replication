# Methodological References

The references below document the main methodological decisions implemented in `analysis/Beyond_RCode_SEM_MXL_WTP_LC.Rmd`. References are formatted in APA 6th style.

## Where References Are Used in the Code

| Code section | Purpose | Main references |
| --- | --- | --- |
| Mixed logit estimation and Halton-draw stabilisation loops | Simulated maximum likelihood, random-parameter logit estimation, and convergence/stability checks across increasing numbers of draws | Czajkowski and Budziński (2019); Hensher and Greene (2003); Hess et al. (2006); McFadden and Train (2000); Train (2009) |
| McFadden pseudo-R2 and discrete choice model fit | Interpretation of log-likelihood-based fit in conditional and mixed logit models | McFadden (1974) |
| Latent class model selection | Selection across 2-, 3-, and 4-class specifications using log-likelihood, AIC, BIC, entropy, posterior probabilities/APCP, OCC, convergence, and valid covariance matrix | Akaike (1974); Celeux and Soromenho (1996); Lanza et al. (2007, 2015); McFadden (1974); Nagin (2005); Nylund et al. (2007); Schwarz (1978); Vermunt and Magidson (2005) |
| PLS-SEM measurement model assessment | Internal consistency, composite reliability, AVE, Fornell-Larcker criterion, cross-loadings, and HTMT | Bagozzi and Yi (1988); Fornell and Larcker (1981); Hair et al. (2017); Henseler et al. (2015) |
| Krinsky-Robb confidence intervals for WTP | Simulation-based confidence intervals for willingness-to-pay estimates derived from model coefficients and the variance-covariance matrix | Krinsky and Robb (1986, 1990) |
| Substantive and code precedent for the Registry sample | Earlier implementation of the TPB, PLS-SEM, DCE, and forest carbon offset preference framework used as the starting point for parts of this code | Morales and Ovando (2026) |

## Mixed Logit Loop Tolerance Thresholds

The mixed logit loops increase the number of Halton draws and stop when consecutive estimates are stable according to four criteria:

- `beta_switch` and `se_switch`: values below `0.05` are assessed with absolute rather than relative differences because relative metrics are unstable around parameters that are essentially zero.
- Mean coefficients: `0.001` absolute or relative tolerance, reflecting stability in approximately the third significant digit across draw counts.
- Standard deviation coefficients: `0.005` absolute or relative tolerance, allowing higher simulation noise in mixing-distribution standard deviations.
- Standard errors: `0.010` absolute tolerance or `0.020` relative tolerance, so simulation variability is evaluated relative to the magnitude of the estimated standard error.
- Log-likelihood: `1e-5` relative tolerance across consecutive draw counts, stricter than common optimiser convergence tolerances and used as a practical simulation-stability check.

These thresholds are pragmatic reproducibility criteria rather than universal rules. They are grounded in the mixed logit and simulation literature on simulated maximum likelihood, draw sequence stability, and simulation error diagnostics.

## APA 6th References

Akaike, H. (1974). A new look at the statistical model identification. *IEEE Transactions on Automatic Control, 19*(6), 716-723. https://doi.org/10.1109/TAC.1974.1100705

Bagozzi, R. P., & Yi, Y. (1988). On the evaluation of structural equation models. *Journal of the Academy of Marketing Science, 16*(1), 74-94. https://doi.org/10.1007/BF02723327

Celeux, G., & Soromenho, G. (1996). An entropy criterion for assessing the number of clusters in a mixture model. *Journal of Classification, 13*(2), 195-212. https://doi.org/10.1007/BF01246098

Czajkowski, M., & Budziński, W. (2019). Simulation error in maximum likelihood estimation of discrete choice models. *Journal of Choice Modelling, 31*, 73-85. https://doi.org/10.1016/j.jocm.2019.04.002

Fornell, C., & Larcker, D. F. (1981). Evaluating structural equation models with unobservable variables and measurement error. *Journal of Marketing Research, 18*(1), 39-50. https://doi.org/10.1177/002224378101800104

Hair, J. F., Jr., Hult, G. T. M., Ringle, C. M., & Sarstedt, M. (2017). *A primer on partial least squares structural equation modeling (PLS-SEM)* (2nd ed.). Thousand Oaks, CA: Sage.

Henseler, J., Ringle, C. M., & Sarstedt, M. (2015). A new criterion for assessing discriminant validity in variance-based structural equation modeling. *Journal of the Academy of Marketing Science, 43*(1), 115-135. https://doi.org/10.1007/s11747-014-0403-8

Hensher, D. A., & Greene, W. H. (2003). The mixed logit model: The state of practice. *Transportation, 30*(2), 133-176. https://doi.org/10.1023/A:1022558715350

Hess, S., Train, K. E., & Polak, J. W. (2006). On the use of a modified Latin hypercube sampling (MLHS) method in the estimation of a mixed logit model for vehicle choice. *Transportation Research Part B: Methodological, 40*(2), 147-163. https://doi.org/10.1016/j.trb.2004.10.005

Krinsky, I., & Robb, A. L. (1986). On approximating the statistical properties of elasticities. *The Review of Economics and Statistics, 68*(4), 715-719. https://doi.org/10.2307/1924536

Krinsky, I., & Robb, A. L. (1990). On approximating the statistical properties of elasticities: A correction. *The Review of Economics and Statistics, 72*(1), 189-190. https://doi.org/10.2307/2109761

Lanza, S. T., Collins, L. M., Lemmon, D. R., & Schafer, J. L. (2007). PROC LCA: A SAS procedure for latent class analysis. *Structural Equation Modeling: A Multidisciplinary Journal, 14*(4), 671-694. https://doi.org/10.1080/10705510701575602

Lanza, S. T., Dziak, J. J., Huang, L., Wagner, A., & Collins, L. M. (2015). *PROC LCA & PROC LTA users' guide* (Version 1.3.2). University Park, PA: The Methodology Center, Penn State.

McFadden, D. (1974). Conditional logit analysis of qualitative choice behavior. In P. Zarembka (Ed.), *Frontiers in econometrics* (pp. 105-142). New York, NY: Academic Press.

McFadden, D., & Train, K. (2000). Mixed MNL models for discrete response. *Journal of Applied Econometrics, 15*(5), 447-470. https://doi.org/10.1002/1099-1255(200009/10)15:5%3C447::AID-JAE570%3E3.0.CO;2-1

Morales, B., & Ovando, P. (2026). Organisational attitudes and preferences towards forest carbon offsets in Spain's Carbon Footprint Registry. *Ecological Economics, 246*, 109015. https://doi.org/10.1016/j.ecolecon.2026.109015

Nagin, D. S. (2005). *Group-based modeling of development*. Cambridge, MA: Harvard University Press.

Nylund, K. L., Asparouhov, T., & Muthén, B. O. (2007). Deciding on the number of classes in latent class analysis and growth mixture modeling: A Monte Carlo simulation study. *Structural Equation Modeling: A Multidisciplinary Journal, 14*(4), 535-569. https://doi.org/10.1080/10705510701575396

Schwarz, G. (1978). Estimating the dimension of a model. *The Annals of Statistics, 6*(2), 461-464. https://doi.org/10.1214/aos/1176344136

Train, K. E. (2009). *Discrete choice methods with simulation* (2nd ed.). Cambridge, England: Cambridge University Press.

Vermunt, J. K., & Magidson, J. (2005). *Latent GOLD 4.0 user's guide*. Belmont, MA: Statistical Innovations.

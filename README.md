biips-examples
================
This repository contains several illustrations of the use of Biips software via R and MATLAB.

First, in order to familiarize with the software, we provide a tutorial in three parts:

* `tutorial`: Inference on a standard univariate nonlinear non-Gaussian state-space model (aka hidden Markov model).
    - `tutorial1`: Sequential Monte Carlo, Particle Independent Metropolis Hastings
    - `tutorial2`: Sensitivity analysis with SMC, Particle Marginal Metropolis-Hastings
    - `tutorial3`: Adding a user-defined function

Three additional, realistic applications are then provided:

* `stoch_volatility`: (Switching) Stochastic volatility
    - `stoch_volatility`: Stochastic volatility model
    - `switch_stoch_volatility`: Switching Stochastic volatility model
    - `switch_stoch_volatility_param`: Switching Stochastic volatility with parameter estimation
* `stoch_kinetic`: Stochastic kinetic
    - `stoch_kinetic`: Stochastic kinetic prey-predator model
    - `stoch_kinetic_gill`: Stochastic kinetic prey-predator model with Gillespie algorithm
* `object_tracking`: Object tracking
    - `stoch_kinetic`: 4-dimensional (2-d position and velicity) radar tracking model

# Lab Manual — Quick Reference

Personal notes on the overall lab manual structure, kept here so the main README stays clean.

## General reminders from the manual
- Bring a laptop with MATLAB (Signal Processing Toolbox) or GNU Octave installed and ready before each session.
- Review the lab sheet and complete preparatory tasks *before* the session — marks are awarded for prep completion.
- A lab report is expected at the end of each session: code, graphs, answers to discussion questions, and explanations.

## Session map

| Session | Core commands / concepts to know |
|---|---|
| Prep Task 1 | Array indexing, slicing, concatenation, `zeros`, `ones`, `stem`, `plot`, `conv` |
| Prep Task 2 | Advanced indexing, `find`, complex numbers, `for` loops, `conv` |
| 1 — Intro to MATLAB | Vector creation, concatenation, `zeros`/`ones`/colon operator, elementwise vs matrix ops |
| 2 — Basic Plotting | `plot` vs `stem`, `subplot`, axis labels/titles, sampling rate effects |
| 3 — Convolution | `conv`, LTI system response via impulse response, continuous vs discrete convolution |
| 4 — Laplace Transform | `laplace`, `ilaplace`, `residue`, `roots`, `impulse`, `step`, `bode` |
| 5 — Fourier Series & Transform | `fourier`, `ifourier`, truncated series convergence, line spectra, magnitude/phase plots |
| Mini Project | FIR filter design via windowing + Kaiser window: `kaiserord`, `kaiser`, `fir1`, `freqz`, `fvtool` |

## Useful MATLAB/Octave function cheat sheet
`plot`, `stem`, `subplot`, `conv`, `laplace`, `ilaplace`, `residue`, `roots`, `impulse`, `step`, `lsim`, `bode`, `fourier`, `ifourier`, `kaiserord`, `kaiser`, `fir1`, `impz`, `freqs`, `freqz`, `unwrap`, `phasedelay`, `grpdelay`, `fft`, `fftshift`, `fvtool`

> Full task-by-task detail lives in each session's own README — this file is just the bird's-eye view.

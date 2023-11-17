# EEG to BIDS conversion

This repository contains the MATLAB scripts implemented by [@DidiLamers](http://github.com/DidiLamers/) to convert three EEG datasets from the DCC BabyBrain group to the [Brain Imaging Data Structure](https://www.bids-standard.org) (BIDS). The conversion was done in 2021 using FieldTrip [data2bids](http://fieldtriptoolbox.org/reference/data2bids). Note that both the BIDS standard and the `data2bids` function have been updated since, so it might be that some aspects of the scripts are outdated when considering the current versions.

## BeeG

These scripts are for the EEG dataset that was acquired for the study [Nine-month-old infants update their predictive models of a changing environment](https://doi.org/10.1016/j.dcn.2019.100680) by Kayhan et al (2019).

The BIDS converted dataset is published on the [Donders Repository](https://doi.org/10.34973/gvr3-6g88) and subsequently used for the paper [Enhancing reproducibility in developmental EEG research: BIDS, cluster-based permutation tests, and effect sizes](https://doi.org/10.1016/j.dcn.2021.101036) by Meyer et al. (2021) for which also the derived data was published on the [Donders Repository](https://doi.org/10.34973/g4we-5v66).

## Prestimulus Theta Flicker

These scripts are for the EEG dataset "Investigating theta-induced effects on memory encoding in adults" that was acquired by Maria (Rocio) Fernandez Barrero. The [data acquisition collection](https://doi.org/10.34973/x2ar-9j44) and the [research documentation collection](https://doi.org/10.34973/26fc-4p67) are archived on the Donders Repository, but the data is not (yet) published.

## Variability Infant Directed Actions

These scripts are for the EEG dataset that was acquired for the study [How infant-directed actions enhance infants’ attention, learning, and exploration: Evidence from EEG and computational modeling](https://doi.org/10.1111/desc.13259) by Meyer et al (2022).

The BIDS converted dataset is published on the [Donders Repository](https://doi.org/10.34973/0egj-ky51).

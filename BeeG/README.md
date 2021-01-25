
# Converting EEG data to BIDS

This is data corresponding to the publication [Nine-month-old infants update their predictive models of a changing environment](https://doi.org/10.1016/j.dcn.2019.100680).

## The original sourcedata, not yet in BIDS

```
sourcedata
├── Channel\ configuration.xlsx
├── Logfiles
│   ├── 01_logfile.txt
│   ├── 02_logfile.txt
│   ├── 03_logfile.txt
│   ├── 04_logfile.txt
│   ├── 05_logfile.txt
│   ├── 06_logfile.txt
│   ├── 07_logfile.txt
│   ├── 08_logfile.txt
│   ├── 09_logfile.txt
│   ├── 10_logfile.txt
│   ├── 11_logfile.txt
│   ├── 12_logfile.txt
│   ├── 13_logfile.txt
│   ├── 14_logfile.txt
│   ├── 15_logfile.txt
│   ├── 16_logfile.txt
│   ├── 17_logfile.txt
│   ├── 18_logfile.txt
│   ├── 19_logfile.txt
│   ├── 20_logfile.txt
│   ├── 21_logfile.txt
│   ├── 22_logfile.txt
│   ├── 23_logfile.txt
│   ├── 24_logfile.txt
│   ├── 25_logfile.txt
│   ├── 26_logfile.txt
│   ├── 27_logfile.txt
│   ├── 28_logfile.txt
│   ├── 29_logfile.txt
│   ├── 30_logfile.txt
│   ├── 31_logfile.txt
│   ├── 32_logfile.txt
│   ├── 33_logfile.txt
│   ├── 34_logfile.txt
│   ├── 35_logfile.txt
│   ├── 36_logfile.txt
│   ├── 37_logfile.txt
│   ├── 38_logfile.txt
│   ├── 39_logfile.txt
│   ├── 40_logfile.txt
│   ├── 41_logfile.txt
│   ├── 42_logfile.txt
│   ├── 43_logfile.txt
│   ├── 44_logfile.txt
│   ├── 45_logfile.txt
│   ├── 46_logfile.txt
│   ├── 47_logfile.txt
│   ├── 48_logfile.txt
│   ├── 49_logfile.txt
│   ├── 50_logfile.txt
│   ├── 51_logfile.txt
│   ├── 52_logfile.txt
│   ├── 53_logfile.txt
│   ├── 54_logfile.txt
│   ├── 55_logfile.txt
│   ├── 56_logfile.txt
│   ├── 57_logfile.txt
│   ├── 58_logfile.txt
│   └── 59_logfile.txt
├── Marker\ Info.docx
├── Raw_data_infant
│   ├── K_01_09.eeg
│   ├── K_01_09.vhdr
│   ├── K_01_09.vmrk
│   ├── K_02_09.eeg
│   ├── K_02_09.vhdr
│   ├── K_02_09.vmrk
│   ├── K_03_09.eeg
│   ├── K_03_09.vhdr
│   ├── K_03_09.vmrk
│   ├── K_04_09.eeg
│   ├── K_04_09.vhdr
│   ├── K_04_09.vmrk
│   ├── K_05_09.eeg
│   ├── K_05_09.vhdr
│   ├── K_05_09.vmrk
│   ├── K_06_09.eeg
│   ├── K_06_09.vhdr
│   ├── K_06_09.vmrk
│   ├── K_07_09.eeg
│   ├── K_07_09.vhdr
│   ├── K_07_09.vmrk
│   ├── K_08_09.eeg
│   ├── K_08_09.vhdr
│   ├── K_08_09.vmrk
│   ├── K_09_09.eeg
│   ├── K_09_09.vhdr
│   ├── K_09_09.vmrk
│   ├── K_10_09.eeg
│   ├── K_10_09.vhdr
│   ├── K_10_09.vmrk
│   ├── K_11_09.eeg
│   ├── K_11_09.vhdr
│   ├── K_11_09.vmrk
│   ├── K_12_09.eeg
│   ├── K_12_09.vhdr
│   ├── K_12_09.vmrk
│   ├── K_13_09.eeg
│   ├── K_13_09.vhdr
│   ├── K_13_09.vmrk
│   ├── K_14_09.eeg
│   ├── K_14_09.vhdr
│   ├── K_14_09.vmrk
│   ├── K_15_09.eeg
│   ├── K_15_09.vhdr
│   ├── K_15_09.vmrk
│   ├── K_16_09.eeg
│   ├── K_16_09.vhdr
│   ├── K_16_09.vmrk
│   ├── K_17_09.eeg
│   ├── K_17_09.vhdr
│   ├── K_17_09.vmrk
│   ├── K_18_09.eeg
│   ├── K_18_09.vhdr
│   ├── K_18_09.vmrk
│   ├── K_19_09.eeg
│   ├── K_19_09.vhdr
│   ├── K_19_09.vmrk
│   ├── K_20_09.eeg
│   ├── K_20_09.vhdr
│   ├── K_20_09.vmrk
│   ├── K_21_09.eeg
│   ├── K_21_09.vhdr
│   ├── K_21_09.vmrk
│   ├── K_22_09.eeg
│   ├── K_22_09.vhdr
│   ├── K_22_09.vmrk
│   ├── K_23_09.eeg
│   ├── K_23_09.vhdr
│   ├── K_23_09.vmrk
│   ├── K_24_09.eeg
│   ├── K_24_09.vhdr
│   ├── K_24_09.vmrk
│   ├── K_25_09.eeg
│   ├── K_25_09.vhdr
│   ├── K_25_09.vmrk
│   ├── K_26_09.eeg
│   ├── K_26_09.vhdr
│   ├── K_26_09.vmrk
│   ├── K_27_09.eeg
│   ├── K_27_09.vhdr
│   ├── K_27_09.vmrk
│   ├── K_28_09.eeg
│   ├── K_28_09.vhdr
│   ├── K_28_09.vmrk
│   ├── K_29_09.eeg
│   ├── K_29_09.vhdr
│   ├── K_29_09.vmrk
│   ├── K_30_09.eeg
│   ├── K_30_09.vhdr
│   ├── K_30_09.vmrk
│   ├── K_31_09.eeg
│   ├── K_31_09.vhdr
│   ├── K_31_09.vmrk
│   ├── K_32_09.eeg
│   ├── K_32_09.vhdr
│   ├── K_32_09.vmrk
│   ├── K_33_09.eeg
│   ├── K_33_09.vhdr
│   ├── K_33_09.vmrk
│   ├── K_34_09.eeg
│   ├── K_34_09.vhdr
│   ├── K_34_09.vmrk
│   ├── K_35_09.eeg
│   ├── K_35_09.vhdr
│   ├── K_35_09.vmrk
│   ├── K_36_09.eeg
│   ├── K_36_09.vhdr
│   ├── K_36_09.vmrk
│   ├── K_37_09.eeg
│   ├── K_37_09.vhdr
│   ├── K_37_09.vmrk
│   ├── K_38_09.eeg
│   ├── K_38_09.vhdr
│   ├── K_38_09.vmrk
│   ├── K_39_09.eeg
│   ├── K_39_09.vhdr
│   ├── K_39_09.vmrk
│   ├── K_40_09.eeg
│   ├── K_40_09.vhdr
│   ├── K_40_09.vmrk
│   ├── K_41_09.eeg
│   ├── K_41_09.vhdr
│   ├── K_41_09.vmrk
│   ├── K_42_09.eeg
│   ├── K_42_09.vhdr
│   ├── K_42_09.vmrk
│   ├── K_43_09.eeg
│   ├── K_43_09.vhdr
│   ├── K_43_09.vmrk
│   ├── K_44_09.eeg
│   ├── K_44_09.vhdr
│   ├── K_44_09.vmrk
│   ├── K_45_09.eeg
│   ├── K_45_09.vhdr
│   ├── K_45_09.vmrk
│   ├── K_46_09.eeg
│   ├── K_46_09.vhdr
│   ├── K_46_09.vmrk
│   ├── K_47_09.eeg
│   ├── K_47_09.vhdr
│   ├── K_47_09.vmrk
│   ├── K_48_09.eeg
│   ├── K_48_09.vhdr
│   ├── K_48_09.vmrk
│   ├── K_49_09.eeg
│   ├── K_49_09.vhdr
│   ├── K_49_09.vmrk
│   ├── K_50_09.eeg
│   ├── K_50_09.vhdr
│   ├── K_50_09.vmrk
│   ├── K_51_09.eeg
│   ├── K_51_09.vhdr
│   ├── K_51_09.vmrk
│   ├── K_52_09.eeg
│   ├── K_52_09.vhdr
│   ├── K_52_09.vmrk
│   ├── K_53_09.eeg
│   ├── K_53_09.vhdr
│   ├── K_53_09.vmrk
│   ├── K_54_09.eeg
│   ├── K_54_09.vhdr
│   ├── K_54_09.vmrk
│   ├── K_55_09.eeg
│   ├── K_55_09.vhdr
│   ├── K_55_09.vmrk
│   ├── K_56_09.eeg
│   ├── K_56_09.vhdr
│   ├── K_56_09.vmrk
│   ├── K_57_09.eeg
│   ├── K_57_09.vhdr
│   ├── K_57_09.vmrk
│   ├── K_58_09.eeg
│   ├── K_58_09.vhdr
│   ├── K_58_09.vmrk
│   ├── K_59_09.eeg
│   ├── K_59_09.vhdr
│   └── K_59_09.vmrk
├── S_BeeG_participant_info_all.xlsx
└── Stimuli
    ├── Ding_Sound_Effect.wav
    ├── Thumbs.db
    ├── bee_left.bmp
    ├── bee_left_1.bmp
    ├── bee_left_2.bmp
    ├── bee_left_3.bmp
    ├── bee_left_4.bmp
    ├── bee_right.bmp
    ├── bee_right_1.bmp
    ├── bee_right_2.bmp
    ├── bee_right_3.bmp
    ├── bee_right_4.bmp
    ├── circle.bmp
    ├── fixation.bmp
    ├── sound_1.wav
    ├── sound_10.wav
    ├── sound_11.wav
    ├── sound_2.wav
    ├── sound_3.wav
    ├── sound_4.wav
    ├── sound_5.wav
    ├── sound_6.wav
    ├── sound_7.wav
    ├── sound_8.wav
    ├── sound_9.wav
    └── triangle.bmp

3 directories, 265 files
    
```

## BIDS representation of the raw data

```
bids/
├── CHANGES
├── README
├── code
│   ├── BIDSconversion_BeeG.m
│   └── trialfun_BeeG.m
├── dataset_description.json
├── participants.json
├── participants.tsv
├── sourcedata
│   └── Logfiles
│       ├── 01_logfile.txt
│       ├── 02_logfile.txt
│       ├── 03_logfile.txt
│       ├── 04_logfile.txt
│       ├── 05_logfile.txt
│       ├── 06_logfile.txt
│       ├── 07_logfile.txt
│       ├── 08_logfile.txt
│       ├── 09_logfile.txt
│       ├── 10_logfile.txt
│       ├── 11_logfile.txt
│       ├── 12_logfile.txt
│       ├── 13_logfile.txt
│       ├── 14_logfile.txt
│       ├── 15_logfile.txt
│       ├── 16_logfile.txt
│       ├── 17_logfile.txt
│       ├── 18_logfile.txt
│       ├── 19_logfile.txt
│       ├── 20_logfile.txt
│       ├── 21_logfile.txt
│       ├── 22_logfile.txt
│       ├── 23_logfile.txt
│       ├── 24_logfile.txt
│       ├── 25_logfile.txt
│       ├── 26_logfile.txt
│       ├── 27_logfile.txt
│       ├── 28_logfile.txt
│       ├── 29_logfile.txt
│       ├── 30_logfile.txt
│       ├── 31_logfile.txt
│       ├── 32_logfile.txt
│       ├── 33_logfile.txt
│       ├── 34_logfile.txt
│       ├── 35_logfile.txt
│       ├── 36_logfile.txt
│       ├── 37_logfile.txt
│       ├── 38_logfile.txt
│       ├── 39_logfile.txt
│       ├── 40_logfile.txt
│       ├── 41_logfile.txt
│       ├── 42_logfile.txt
│       ├── 43_logfile.txt
│       ├── 44_logfile.txt
│       ├── 45_logfile.txt
│       ├── 46_logfile.txt
│       ├── 47_logfile.txt
│       ├── 48_logfile.txt
│       ├── 49_logfile.txt
│       ├── 50_logfile.txt
│       ├── 51_logfile.txt
│       ├── 52_logfile.txt
│       ├── 53_logfile.txt
│       ├── 54_logfile.txt
│       ├── 55_logfile.txt
│       ├── 56_logfile.txt
│       ├── 57_logfile.txt
│       ├── 58_logfile.txt
│       └── 59_logfile.txt
├── stimuli
│   ├── Ding_Sound_Effect.wav
│   ├── Thumbs.db
│   ├── bee_left.bmp
│   ├── bee_left_1.bmp
│   ├── bee_left_2.bmp
│   ├── bee_left_3.bmp
│   ├── bee_left_4.bmp
│   ├── bee_right.bmp
│   ├── bee_right_1.bmp
│   ├── bee_right_2.bmp
│   ├── bee_right_3.bmp
│   ├── bee_right_4.bmp
│   ├── circle.bmp
│   ├── fixation.bmp
│   ├── sound_1.wav
│   ├── sound_10.wav
│   ├── sound_11.wav
│   ├── sound_2.wav
│   ├── sound_3.wav
│   ├── sound_4.wav
│   ├── sound_5.wav
│   ├── sound_6.wav
│   ├── sound_7.wav
│   ├── sound_8.wav
│   ├── sound_9.wav
│   └── triangle.bmp
├── sub-K0109
│   ├── eeg
│   │   ├── sub-K0109_task-audiovisual_channels.tsv
│   │   ├── sub-K0109_task-audiovisual_eeg.eeg
│   │   ├── sub-K0109_task-audiovisual_eeg.json
│   │   ├── sub-K0109_task-audiovisual_eeg.vhdr
│   │   ├── sub-K0109_task-audiovisual_eeg.vmrk
│   │   ├── sub-K0109_task-audiovisual_events.json
│   │   └── sub-K0109_task-audiovisual_events.tsv
│   └── sub-K0109_scans.tsv
├── sub-K0209
│   ├── eeg
│   │   ├── sub-K0209_task-audiovisual_channels.tsv
│   │   ├── sub-K0209_task-audiovisual_eeg.eeg
│   │   ├── sub-K0209_task-audiovisual_eeg.json
│   │   ├── sub-K0209_task-audiovisual_eeg.vhdr
│   │   ├── sub-K0209_task-audiovisual_eeg.vmrk
│   │   ├── sub-K0209_task-audiovisual_events.json
│   │   └── sub-K0209_task-audiovisual_events.tsv
│   └── sub-K0209_scans.tsv
├── sub-K0309
│   ├── eeg
│   │   ├── sub-K0309_task-audiovisual_channels.tsv
│   │   ├── sub-K0309_task-audiovisual_eeg.eeg
│   │   ├── sub-K0309_task-audiovisual_eeg.json
│   │   ├── sub-K0309_task-audiovisual_eeg.vhdr
│   │   ├── sub-K0309_task-audiovisual_eeg.vmrk
│   │   ├── sub-K0309_task-audiovisual_events.json
│   │   └── sub-K0309_task-audiovisual_events.tsv
│   └── sub-K0309_scans.tsv
├── sub-K0409
│   ├── eeg
│   │   ├── sub-K0409_task-audiovisual_channels.tsv
│   │   ├── sub-K0409_task-audiovisual_eeg.eeg
│   │   ├── sub-K0409_task-audiovisual_eeg.json
│   │   ├── sub-K0409_task-audiovisual_eeg.vhdr
│   │   ├── sub-K0409_task-audiovisual_eeg.vmrk
│   │   ├── sub-K0409_task-audiovisual_events.json
│   │   └── sub-K0409_task-audiovisual_events.tsv
│   └── sub-K0409_scans.tsv
├── sub-K0509
│   ├── eeg
│   │   ├── sub-K0509_task-audiovisual_channels.tsv
│   │   ├── sub-K0509_task-audiovisual_eeg.eeg
│   │   ├── sub-K0509_task-audiovisual_eeg.json
│   │   ├── sub-K0509_task-audiovisual_eeg.vhdr
│   │   ├── sub-K0509_task-audiovisual_eeg.vmrk
│   │   ├── sub-K0509_task-audiovisual_events.json
│   │   └── sub-K0509_task-audiovisual_events.tsv
│   └── sub-K0509_scans.tsv
├── sub-K0609
│   ├── eeg
│   │   ├── sub-K0609_task-audiovisual_channels.tsv
│   │   ├── sub-K0609_task-audiovisual_eeg.eeg
│   │   ├── sub-K0609_task-audiovisual_eeg.json
│   │   ├── sub-K0609_task-audiovisual_eeg.vhdr
│   │   ├── sub-K0609_task-audiovisual_eeg.vmrk
│   │   ├── sub-K0609_task-audiovisual_events.json
│   │   └── sub-K0609_task-audiovisual_events.tsv
│   └── sub-K0609_scans.tsv
├── sub-K0709
│   ├── eeg
│   │   ├── sub-K0709_task-audiovisual_channels.tsv
│   │   ├── sub-K0709_task-audiovisual_eeg.eeg
│   │   ├── sub-K0709_task-audiovisual_eeg.json
│   │   ├── sub-K0709_task-audiovisual_eeg.vhdr
│   │   ├── sub-K0709_task-audiovisual_eeg.vmrk
│   │   ├── sub-K0709_task-audiovisual_events.json
│   │   └── sub-K0709_task-audiovisual_events.tsv
│   └── sub-K0709_scans.tsv
├── sub-K0809
│   ├── eeg
│   │   ├── sub-K0809_task-audiovisual_channels.tsv
│   │   ├── sub-K0809_task-audiovisual_eeg.eeg
│   │   ├── sub-K0809_task-audiovisual_eeg.json
│   │   ├── sub-K0809_task-audiovisual_eeg.vhdr
│   │   ├── sub-K0809_task-audiovisual_eeg.vmrk
│   │   ├── sub-K0809_task-audiovisual_events.json
│   │   └── sub-K0809_task-audiovisual_events.tsv
│   └── sub-K0809_scans.tsv
├── sub-K0909
│   ├── eeg
│   │   ├── sub-K0909_task-audiovisual_channels.tsv
│   │   ├── sub-K0909_task-audiovisual_eeg.eeg
│   │   ├── sub-K0909_task-audiovisual_eeg.json
│   │   ├── sub-K0909_task-audiovisual_eeg.vhdr
│   │   ├── sub-K0909_task-audiovisual_eeg.vmrk
│   │   ├── sub-K0909_task-audiovisual_events.json
│   │   └── sub-K0909_task-audiovisual_events.tsv
│   └── sub-K0909_scans.tsv
├── sub-K1009
│   ├── eeg
│   │   ├── sub-K1009_task-audiovisual_channels.tsv
│   │   ├── sub-K1009_task-audiovisual_eeg.eeg
│   │   ├── sub-K1009_task-audiovisual_eeg.json
│   │   ├── sub-K1009_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1009_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1009_task-audiovisual_events.json
│   │   └── sub-K1009_task-audiovisual_events.tsv
│   └── sub-K1009_scans.tsv
├── sub-K1109
│   ├── eeg
│   │   ├── sub-K1109_task-audiovisual_channels.tsv
│   │   ├── sub-K1109_task-audiovisual_eeg.eeg
│   │   ├── sub-K1109_task-audiovisual_eeg.json
│   │   ├── sub-K1109_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1109_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1109_task-audiovisual_events.json
│   │   └── sub-K1109_task-audiovisual_events.tsv
│   └── sub-K1109_scans.tsv
├── sub-K1209
│   ├── eeg
│   │   ├── sub-K1209_task-audiovisual_channels.tsv
│   │   ├── sub-K1209_task-audiovisual_eeg.eeg
│   │   ├── sub-K1209_task-audiovisual_eeg.json
│   │   ├── sub-K1209_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1209_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1209_task-audiovisual_events.json
│   │   └── sub-K1209_task-audiovisual_events.tsv
│   └── sub-K1209_scans.tsv
├── sub-K1309
│   ├── eeg
│   │   ├── sub-K1309_task-audiovisual_channels.tsv
│   │   ├── sub-K1309_task-audiovisual_eeg.eeg
│   │   ├── sub-K1309_task-audiovisual_eeg.json
│   │   ├── sub-K1309_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1309_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1309_task-audiovisual_events.json
│   │   └── sub-K1309_task-audiovisual_events.tsv
│   └── sub-K1309_scans.tsv
├── sub-K1409
│   ├── eeg
│   │   ├── sub-K1409_task-audiovisual_channels.tsv
│   │   ├── sub-K1409_task-audiovisual_eeg.eeg
│   │   ├── sub-K1409_task-audiovisual_eeg.json
│   │   ├── sub-K1409_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1409_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1409_task-audiovisual_events.json
│   │   └── sub-K1409_task-audiovisual_events.tsv
│   └── sub-K1409_scans.tsv
├── sub-K1509
│   ├── eeg
│   │   ├── sub-K1509_task-audiovisual_channels.tsv
│   │   ├── sub-K1509_task-audiovisual_eeg.eeg
│   │   ├── sub-K1509_task-audiovisual_eeg.json
│   │   ├── sub-K1509_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1509_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1509_task-audiovisual_events.json
│   │   └── sub-K1509_task-audiovisual_events.tsv
│   └── sub-K1509_scans.tsv
├── sub-K1609
│   ├── eeg
│   │   ├── sub-K1609_task-audiovisual_channels.tsv
│   │   ├── sub-K1609_task-audiovisual_eeg.eeg
│   │   ├── sub-K1609_task-audiovisual_eeg.json
│   │   ├── sub-K1609_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1609_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1609_task-audiovisual_events.json
│   │   └── sub-K1609_task-audiovisual_events.tsv
│   └── sub-K1609_scans.tsv
├── sub-K1709
│   ├── eeg
│   │   ├── sub-K1709_task-audiovisual_channels.tsv
│   │   ├── sub-K1709_task-audiovisual_eeg.eeg
│   │   ├── sub-K1709_task-audiovisual_eeg.json
│   │   ├── sub-K1709_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1709_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1709_task-audiovisual_events.json
│   │   └── sub-K1709_task-audiovisual_events.tsv
│   └── sub-K1709_scans.tsv
├── sub-K1809
│   ├── eeg
│   │   ├── sub-K1809_task-audiovisual_channels.tsv
│   │   ├── sub-K1809_task-audiovisual_eeg.eeg
│   │   ├── sub-K1809_task-audiovisual_eeg.json
│   │   ├── sub-K1809_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1809_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1809_task-audiovisual_events.json
│   │   └── sub-K1809_task-audiovisual_events.tsv
│   └── sub-K1809_scans.tsv
├── sub-K1909
│   ├── eeg
│   │   ├── sub-K1909_task-audiovisual_channels.tsv
│   │   ├── sub-K1909_task-audiovisual_eeg.eeg
│   │   ├── sub-K1909_task-audiovisual_eeg.json
│   │   ├── sub-K1909_task-audiovisual_eeg.vhdr
│   │   ├── sub-K1909_task-audiovisual_eeg.vmrk
│   │   ├── sub-K1909_task-audiovisual_events.json
│   │   └── sub-K1909_task-audiovisual_events.tsv
│   └── sub-K1909_scans.tsv
├── sub-K2009
│   ├── eeg
│   │   ├── sub-K2009_task-audiovisual_channels.tsv
│   │   ├── sub-K2009_task-audiovisual_eeg.eeg
│   │   ├── sub-K2009_task-audiovisual_eeg.json
│   │   ├── sub-K2009_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2009_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2009_task-audiovisual_events.json
│   │   └── sub-K2009_task-audiovisual_events.tsv
│   └── sub-K2009_scans.tsv
├── sub-K2109
│   ├── eeg
│   │   ├── sub-K2109_task-audiovisual_channels.tsv
│   │   ├── sub-K2109_task-audiovisual_eeg.eeg
│   │   ├── sub-K2109_task-audiovisual_eeg.json
│   │   ├── sub-K2109_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2109_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2109_task-audiovisual_events.json
│   │   └── sub-K2109_task-audiovisual_events.tsv
│   └── sub-K2109_scans.tsv
├── sub-K2209
│   ├── eeg
│   │   ├── sub-K2209_task-audiovisual_channels.tsv
│   │   ├── sub-K2209_task-audiovisual_eeg.eeg
│   │   ├── sub-K2209_task-audiovisual_eeg.json
│   │   ├── sub-K2209_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2209_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2209_task-audiovisual_events.json
│   │   └── sub-K2209_task-audiovisual_events.tsv
│   └── sub-K2209_scans.tsv
├── sub-K2309
│   ├── eeg
│   │   ├── sub-K2309_task-audiovisual_channels.tsv
│   │   ├── sub-K2309_task-audiovisual_eeg.eeg
│   │   ├── sub-K2309_task-audiovisual_eeg.json
│   │   ├── sub-K2309_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2309_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2309_task-audiovisual_events.json
│   │   └── sub-K2309_task-audiovisual_events.tsv
│   └── sub-K2309_scans.tsv
├── sub-K2409
│   ├── eeg
│   │   ├── sub-K2409_task-audiovisual_channels.tsv
│   │   ├── sub-K2409_task-audiovisual_eeg.eeg
│   │   ├── sub-K2409_task-audiovisual_eeg.json
│   │   ├── sub-K2409_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2409_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2409_task-audiovisual_events.json
│   │   └── sub-K2409_task-audiovisual_events.tsv
│   └── sub-K2409_scans.tsv
├── sub-K2509
│   ├── eeg
│   │   ├── sub-K2509_task-audiovisual_channels.tsv
│   │   ├── sub-K2509_task-audiovisual_eeg.eeg
│   │   ├── sub-K2509_task-audiovisual_eeg.json
│   │   ├── sub-K2509_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2509_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2509_task-audiovisual_events.json
│   │   └── sub-K2509_task-audiovisual_events.tsv
│   └── sub-K2509_scans.tsv
├── sub-K2609
│   ├── eeg
│   │   ├── sub-K2609_task-audiovisual_channels.tsv
│   │   ├── sub-K2609_task-audiovisual_eeg.eeg
│   │   ├── sub-K2609_task-audiovisual_eeg.json
│   │   ├── sub-K2609_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2609_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2609_task-audiovisual_events.json
│   │   └── sub-K2609_task-audiovisual_events.tsv
│   └── sub-K2609_scans.tsv
├── sub-K2709
│   ├── eeg
│   │   ├── sub-K2709_task-audiovisual_channels.tsv
│   │   ├── sub-K2709_task-audiovisual_eeg.eeg
│   │   ├── sub-K2709_task-audiovisual_eeg.json
│   │   ├── sub-K2709_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2709_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2709_task-audiovisual_events.json
│   │   └── sub-K2709_task-audiovisual_events.tsv
│   └── sub-K2709_scans.tsv
├── sub-K2809
│   ├── eeg
│   │   ├── sub-K2809_task-audiovisual_channels.tsv
│   │   ├── sub-K2809_task-audiovisual_eeg.eeg
│   │   ├── sub-K2809_task-audiovisual_eeg.json
│   │   ├── sub-K2809_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2809_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2809_task-audiovisual_events.json
│   │   └── sub-K2809_task-audiovisual_events.tsv
│   └── sub-K2809_scans.tsv
├── sub-K2909
│   ├── eeg
│   │   ├── sub-K2909_task-audiovisual_channels.tsv
│   │   ├── sub-K2909_task-audiovisual_eeg.eeg
│   │   ├── sub-K2909_task-audiovisual_eeg.json
│   │   ├── sub-K2909_task-audiovisual_eeg.vhdr
│   │   ├── sub-K2909_task-audiovisual_eeg.vmrk
│   │   ├── sub-K2909_task-audiovisual_events.json
│   │   └── sub-K2909_task-audiovisual_events.tsv
│   └── sub-K2909_scans.tsv
├── sub-K3009
│   ├── eeg
│   │   ├── sub-K3009_task-audiovisual_channels.tsv
│   │   ├── sub-K3009_task-audiovisual_eeg.eeg
│   │   ├── sub-K3009_task-audiovisual_eeg.json
│   │   ├── sub-K3009_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3009_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3009_task-audiovisual_events.json
│   │   └── sub-K3009_task-audiovisual_events.tsv
│   └── sub-K3009_scans.tsv
├── sub-K3109
│   ├── eeg
│   │   ├── sub-K3109_task-audiovisual_channels.tsv
│   │   ├── sub-K3109_task-audiovisual_eeg.eeg
│   │   ├── sub-K3109_task-audiovisual_eeg.json
│   │   ├── sub-K3109_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3109_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3109_task-audiovisual_events.json
│   │   └── sub-K3109_task-audiovisual_events.tsv
│   └── sub-K3109_scans.tsv
├── sub-K3209
│   ├── eeg
│   │   ├── sub-K3209_task-audiovisual_channels.tsv
│   │   ├── sub-K3209_task-audiovisual_eeg.eeg
│   │   ├── sub-K3209_task-audiovisual_eeg.json
│   │   ├── sub-K3209_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3209_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3209_task-audiovisual_events.json
│   │   └── sub-K3209_task-audiovisual_events.tsv
│   └── sub-K3209_scans.tsv
├── sub-K3309
│   ├── eeg
│   │   ├── sub-K3309_task-audiovisual_channels.tsv
│   │   ├── sub-K3309_task-audiovisual_eeg.eeg
│   │   ├── sub-K3309_task-audiovisual_eeg.json
│   │   ├── sub-K3309_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3309_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3309_task-audiovisual_events.json
│   │   └── sub-K3309_task-audiovisual_events.tsv
│   └── sub-K3309_scans.tsv
├── sub-K3409
│   ├── eeg
│   │   ├── sub-K3409_task-audiovisual_channels.tsv
│   │   ├── sub-K3409_task-audiovisual_eeg.eeg
│   │   ├── sub-K3409_task-audiovisual_eeg.json
│   │   ├── sub-K3409_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3409_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3409_task-audiovisual_events.json
│   │   └── sub-K3409_task-audiovisual_events.tsv
│   └── sub-K3409_scans.tsv
├── sub-K3509
│   ├── eeg
│   │   ├── sub-K3509_task-audiovisual_channels.tsv
│   │   ├── sub-K3509_task-audiovisual_eeg.eeg
│   │   ├── sub-K3509_task-audiovisual_eeg.json
│   │   ├── sub-K3509_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3509_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3509_task-audiovisual_events.json
│   │   └── sub-K3509_task-audiovisual_events.tsv
│   └── sub-K3509_scans.tsv
├── sub-K3609
│   ├── eeg
│   │   ├── sub-K3609_task-audiovisual_channels.tsv
│   │   ├── sub-K3609_task-audiovisual_eeg.eeg
│   │   ├── sub-K3609_task-audiovisual_eeg.json
│   │   ├── sub-K3609_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3609_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3609_task-audiovisual_events.json
│   │   └── sub-K3609_task-audiovisual_events.tsv
│   └── sub-K3609_scans.tsv
├── sub-K3709
│   ├── eeg
│   │   ├── sub-K3709_task-audiovisual_channels.tsv
│   │   ├── sub-K3709_task-audiovisual_eeg.eeg
│   │   ├── sub-K3709_task-audiovisual_eeg.json
│   │   ├── sub-K3709_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3709_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3709_task-audiovisual_events.json
│   │   └── sub-K3709_task-audiovisual_events.tsv
│   └── sub-K3709_scans.tsv
├── sub-K3809
│   ├── eeg
│   │   ├── sub-K3809_task-audiovisual_channels.tsv
│   │   ├── sub-K3809_task-audiovisual_eeg.eeg
│   │   ├── sub-K3809_task-audiovisual_eeg.json
│   │   ├── sub-K3809_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3809_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3809_task-audiovisual_events.json
│   │   └── sub-K3809_task-audiovisual_events.tsv
│   └── sub-K3809_scans.tsv
├── sub-K3909
│   ├── eeg
│   │   ├── sub-K3909_task-audiovisual_channels.tsv
│   │   ├── sub-K3909_task-audiovisual_eeg.eeg
│   │   ├── sub-K3909_task-audiovisual_eeg.json
│   │   ├── sub-K3909_task-audiovisual_eeg.vhdr
│   │   ├── sub-K3909_task-audiovisual_eeg.vmrk
│   │   ├── sub-K3909_task-audiovisual_events.json
│   │   └── sub-K3909_task-audiovisual_events.tsv
│   └── sub-K3909_scans.tsv
├── sub-K4009
│   ├── eeg
│   │   ├── sub-K4009_task-audiovisual_channels.tsv
│   │   ├── sub-K4009_task-audiovisual_eeg.eeg
│   │   ├── sub-K4009_task-audiovisual_eeg.json
│   │   ├── sub-K4009_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4009_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4009_task-audiovisual_events.json
│   │   └── sub-K4009_task-audiovisual_events.tsv
│   └── sub-K4009_scans.tsv
├── sub-K4109
│   ├── eeg
│   │   ├── sub-K4109_task-audiovisual_channels.tsv
│   │   ├── sub-K4109_task-audiovisual_eeg.eeg
│   │   ├── sub-K4109_task-audiovisual_eeg.json
│   │   ├── sub-K4109_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4109_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4109_task-audiovisual_events.json
│   │   └── sub-K4109_task-audiovisual_events.tsv
│   └── sub-K4109_scans.tsv
├── sub-K4209
│   ├── eeg
│   │   ├── sub-K4209_task-audiovisual_channels.tsv
│   │   ├── sub-K4209_task-audiovisual_eeg.eeg
│   │   ├── sub-K4209_task-audiovisual_eeg.json
│   │   ├── sub-K4209_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4209_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4209_task-audiovisual_events.json
│   │   └── sub-K4209_task-audiovisual_events.tsv
│   └── sub-K4209_scans.tsv
├── sub-K4309
│   ├── eeg
│   │   ├── sub-K4309_task-audiovisual_channels.tsv
│   │   ├── sub-K4309_task-audiovisual_eeg.eeg
│   │   ├── sub-K4309_task-audiovisual_eeg.json
│   │   ├── sub-K4309_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4309_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4309_task-audiovisual_events.json
│   │   └── sub-K4309_task-audiovisual_events.tsv
│   └── sub-K4309_scans.tsv
├── sub-K4409
│   ├── eeg
│   │   ├── sub-K4409_task-audiovisual_channels.tsv
│   │   ├── sub-K4409_task-audiovisual_eeg.eeg
│   │   ├── sub-K4409_task-audiovisual_eeg.json
│   │   ├── sub-K4409_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4409_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4409_task-audiovisual_events.json
│   │   └── sub-K4409_task-audiovisual_events.tsv
│   └── sub-K4409_scans.tsv
├── sub-K4509
│   ├── eeg
│   │   ├── sub-K4509_task-audiovisual_channels.tsv
│   │   ├── sub-K4509_task-audiovisual_eeg.eeg
│   │   ├── sub-K4509_task-audiovisual_eeg.json
│   │   ├── sub-K4509_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4509_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4509_task-audiovisual_events.json
│   │   └── sub-K4509_task-audiovisual_events.tsv
│   └── sub-K4509_scans.tsv
├── sub-K4609
│   ├── eeg
│   │   ├── sub-K4609_task-audiovisual_channels.tsv
│   │   ├── sub-K4609_task-audiovisual_eeg.eeg
│   │   ├── sub-K4609_task-audiovisual_eeg.json
│   │   ├── sub-K4609_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4609_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4609_task-audiovisual_events.json
│   │   └── sub-K4609_task-audiovisual_events.tsv
│   └── sub-K4609_scans.tsv
├── sub-K4709
│   ├── eeg
│   │   ├── sub-K4709_task-audiovisual_channels.tsv
│   │   ├── sub-K4709_task-audiovisual_eeg.eeg
│   │   ├── sub-K4709_task-audiovisual_eeg.json
│   │   ├── sub-K4709_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4709_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4709_task-audiovisual_events.json
│   │   └── sub-K4709_task-audiovisual_events.tsv
│   └── sub-K4709_scans.tsv
├── sub-K4809
│   ├── eeg
│   │   ├── sub-K4809_task-audiovisual_channels.tsv
│   │   ├── sub-K4809_task-audiovisual_eeg.eeg
│   │   ├── sub-K4809_task-audiovisual_eeg.json
│   │   ├── sub-K4809_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4809_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4809_task-audiovisual_events.json
│   │   └── sub-K4809_task-audiovisual_events.tsv
│   └── sub-K4809_scans.tsv
├── sub-K4909
│   ├── eeg
│   │   ├── sub-K4909_task-audiovisual_channels.tsv
│   │   ├── sub-K4909_task-audiovisual_eeg.eeg
│   │   ├── sub-K4909_task-audiovisual_eeg.json
│   │   ├── sub-K4909_task-audiovisual_eeg.vhdr
│   │   ├── sub-K4909_task-audiovisual_eeg.vmrk
│   │   ├── sub-K4909_task-audiovisual_events.json
│   │   └── sub-K4909_task-audiovisual_events.tsv
│   └── sub-K4909_scans.tsv
├── sub-K5009
│   ├── eeg
│   │   ├── sub-K5009_task-audiovisual_channels.tsv
│   │   ├── sub-K5009_task-audiovisual_eeg.eeg
│   │   ├── sub-K5009_task-audiovisual_eeg.json
│   │   ├── sub-K5009_task-audiovisual_eeg.vhdr
│   │   ├── sub-K5009_task-audiovisual_eeg.vmrk
│   │   ├── sub-K5009_task-audiovisual_events.json
│   │   └── sub-K5009_task-audiovisual_events.tsv
│   └── sub-K5009_scans.tsv
├── sub-K5109
│   ├── eeg
│   │   ├── sub-K5109_task-audiovisual_channels.tsv
│   │   ├── sub-K5109_task-audiovisual_eeg.eeg
│   │   ├── sub-K5109_task-audiovisual_eeg.json
│   │   ├── sub-K5109_task-audiovisual_eeg.vhdr
│   │   ├── sub-K5109_task-audiovisual_eeg.vmrk
│   │   ├── sub-K5109_task-audiovisual_events.json
│   │   └── sub-K5109_task-audiovisual_events.tsv
│   └── sub-K5109_scans.tsv
├── sub-K5209
│   ├── eeg
│   │   ├── sub-K5209_task-audiovisual_channels.tsv
│   │   ├── sub-K5209_task-audiovisual_eeg.eeg
│   │   ├── sub-K5209_task-audiovisual_eeg.json
│   │   ├── sub-K5209_task-audiovisual_eeg.vhdr
│   │   ├── sub-K5209_task-audiovisual_eeg.vmrk
│   │   ├── sub-K5209_task-audiovisual_events.json
│   │   └── sub-K5209_task-audiovisual_events.tsv
│   └── sub-K5209_scans.tsv
├── sub-K5309
│   ├── eeg
│   │   ├── sub-K5309_task-audiovisual_channels.tsv
│   │   ├── sub-K5309_task-audiovisual_eeg.eeg
│   │   ├── sub-K5309_task-audiovisual_eeg.json
│   │   ├── sub-K5309_task-audiovisual_eeg.vhdr
│   │   ├── sub-K5309_task-audiovisual_eeg.vmrk
│   │   ├── sub-K5309_task-audiovisual_events.json
│   │   └── sub-K5309_task-audiovisual_events.tsv
│   └── sub-K5309_scans.tsv
├── sub-K5409
│   ├── eeg
│   │   ├── sub-K5409_task-audiovisual_channels.tsv
│   │   ├── sub-K5409_task-audiovisual_eeg.eeg
│   │   ├── sub-K5409_task-audiovisual_eeg.json
│   │   ├── sub-K5409_task-audiovisual_eeg.vhdr
│   │   ├── sub-K5409_task-audiovisual_eeg.vmrk
│   │   ├── sub-K5409_task-audiovisual_events.json
│   │   └── sub-K5409_task-audiovisual_events.tsv
│   └── sub-K5409_scans.tsv
├── sub-K5509
│   ├── eeg
│   │   ├── sub-K5509_task-audiovisual_channels.tsv
│   │   ├── sub-K5509_task-audiovisual_eeg.eeg
│   │   ├── sub-K5509_task-audiovisual_eeg.json
│   │   ├── sub-K5509_task-audiovisual_eeg.vhdr
│   │   ├── sub-K5509_task-audiovisual_eeg.vmrk
│   │   ├── sub-K5509_task-audiovisual_events.json
│   │   └── sub-K5509_task-audiovisual_events.tsv
│   └── sub-K5509_scans.tsv
├── sub-K5609
│   ├── eeg
│   │   ├── sub-K5609_task-audiovisual_channels.tsv
│   │   ├── sub-K5609_task-audiovisual_eeg.eeg
│   │   ├── sub-K5609_task-audiovisual_eeg.json
│   │   ├── sub-K5609_task-audiovisual_eeg.vhdr
│   │   ├── sub-K5609_task-audiovisual_eeg.vmrk
│   │   ├── sub-K5609_task-audiovisual_events.json
│   │   └── sub-K5609_task-audiovisual_events.tsv
│   └── sub-K5609_scans.tsv
├── sub-K5709
│   ├── eeg
│   │   ├── sub-K5709_task-audiovisual_channels.tsv
│   │   ├── sub-K5709_task-audiovisual_eeg.eeg
│   │   ├── sub-K5709_task-audiovisual_eeg.json
│   │   ├── sub-K5709_task-audiovisual_eeg.vhdr
│   │   ├── sub-K5709_task-audiovisual_eeg.vmrk
│   │   ├── sub-K5709_task-audiovisual_events.json
│   │   └── sub-K5709_task-audiovisual_events.tsv
│   └── sub-K5709_scans.tsv
├── sub-K5809
│   ├── eeg
│   │   ├── sub-K5809_task-audiovisual_channels.tsv
│   │   ├── sub-K5809_task-audiovisual_eeg.eeg
│   │   ├── sub-K5809_task-audiovisual_eeg.json
│   │   ├── sub-K5809_task-audiovisual_eeg.vhdr
│   │   ├── sub-K5809_task-audiovisual_eeg.vmrk
│   │   ├── sub-K5809_task-audiovisual_events.json
│   │   └── sub-K5809_task-audiovisual_events.tsv
│   └── sub-K5809_scans.tsv
└── sub-K5909
    ├── eeg
    │   ├── sub-K5909_task-audiovisual_channels.tsv
    │   ├── sub-K5909_task-audiovisual_eeg.eeg
    │   ├── sub-K5909_task-audiovisual_eeg.json
    │   ├── sub-K5909_task-audiovisual_eeg.vhdr
    │   ├── sub-K5909_task-audiovisual_eeg.vmrk
    │   ├── sub-K5909_task-audiovisual_events.json
    │   └── sub-K5909_task-audiovisual_events.tsv
    └── sub-K5909_scans.tsv

122 directories, 564 files
```

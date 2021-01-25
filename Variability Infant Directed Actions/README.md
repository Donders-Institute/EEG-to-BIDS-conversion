# Converting EEG data to BIDS

This is data for a study by Marlene Meyer.

## The original sourcedata, not yet in BIDS

```
sourcedata/
├── Additional_Info
│   ├── EEG_Trigger
│   │   ├── EEG\ Marker\ List.docx
│   │   ├── General\ Info\ of\ video\ presentation.docx
│   │   ├── Marker_Info.xlsx
│   │   ├── Randomization_Overview.xlsx
│   │   ├── later_coded_from_stimuli
│   │   │   ├── rules_timing_updated_23August2019.txt
│   │   │   └── stim_videos_msec_info_actiongoals.mat
│   │   ├── video_namelist_experimental.xlsx
│   │   ├── video_namelist_intro.xlsx
│   │   └── video_namelist_peek-a-boo.xlsx
│   └── Participants
│       ├── final_sample_Participant_age_gender.xlsx
│       └── note_on_participant_info.txt
├── EEG
│   ├── P1.eeg
│   ├── P1.vhdr
│   ├── P1.vmrk
│   ├── P10.eeg
│   ├── P10.vhdr
│   ├── P10.vmrk
│   ├── P12.eeg
│   ├── P12.vhdr
│   ├── P12.vmrk
│   ├── P13.eeg
│   ├── P13.vhdr
│   ├── P13.vmrk
│   ├── P14.eeg
│   ├── P14.vhdr
│   ├── P14.vmrk
│   ├── P15.eeg
│   ├── P15.vhdr
│   ├── P15.vmrk
│   ├── P16.eeg
│   ├── P16.vhdr
│   ├── P16.vmrk
│   ├── P17.eeg
│   ├── P17.vhdr
│   ├── P17.vmrk
│   ├── P18.eeg
│   ├── P18.vhdr
│   ├── P18.vmrk
│   ├── P19.eeg
│   ├── P19.vhdr
│   ├── P19.vmrk
│   ├── P2.eeg
│   ├── P2.vhdr
│   ├── P2.vmrk
│   ├── P20.eeg
│   ├── P20.vhdr
│   ├── P20.vmrk
│   ├── P21.eeg
│   ├── P21.vhdr
│   ├── P21.vmrk
│   ├── P22.eeg
│   ├── P22.vhdr
│   ├── P22.vmrk
│   ├── P23.eeg
│   ├── P23.vhdr
│   ├── P23.vmrk
│   ├── P24.eeg
│   ├── P24.vhdr
│   ├── P24.vmrk
│   ├── P25.eeg
│   ├── P25.vhdr
│   ├── P25.vmrk
│   ├── P26.eeg
│   ├── P26.vhdr
│   ├── P26.vmrk
│   ├── P27.eeg
│   ├── P27.vhdr
│   ├── P27.vmrk
│   ├── P28.eeg
│   ├── P28.vhdr
│   ├── P28.vmrk
│   ├── P29.eeg
│   ├── P29.vhdr
│   ├── P29.vmrk
│   ├── P3.eeg
│   ├── P3.vhdr
│   ├── P3.vmrk
│   ├── P30.eeg
│   ├── P30.vhdr
│   ├── P30.vmrk
│   ├── P31.eeg
│   ├── P31.vhdr
│   ├── P31.vmrk
│   ├── P32.eeg
│   ├── P32.vhdr
│   ├── P32.vmrk
│   ├── P33.eeg
│   ├── P33.vhdr
│   ├── P33.vmrk
│   ├── P35.eeg
│   ├── P35.vhdr
│   ├── P35.vmrk
│   ├── P36.eeg
│   ├── P36.vhdr
│   ├── P36.vmrk
│   ├── P37.eeg
│   ├── P37.vhdr
│   ├── P37.vmrk
│   ├── P38.eeg
│   ├── P38.vhdr
│   ├── P38.vmrk
│   ├── P4.eeg
│   ├── P4.vhdr
│   ├── P4.vmrk
│   ├── P40.eeg
│   ├── P40.vhdr
│   ├── P40.vmrk
│   ├── P41.eeg
│   ├── P41.vhdr
│   ├── P41.vmrk
│   ├── P42.eeg
│   ├── P42.vhdr
│   ├── P42.vmrk
│   ├── P43.eeg
│   ├── P43.vhdr
│   ├── P43.vmrk
│   ├── P44.eeg
│   ├── P44.vhdr
│   ├── P44.vmrk
│   ├── P45.eeg
│   ├── P45.vhdr
│   ├── P45.vmrk
│   ├── P46.eeg
│   ├── P46.vhdr
│   ├── P46.vmrk
│   ├── P47.eeg
│   ├── P47.vhdr
│   ├── P47.vmrk
│   ├── P5.eeg
│   ├── P5.vhdr
│   ├── P5.vmrk
│   ├── P6.eeg
│   ├── P6.vhdr
│   ├── P6.vmrk
│   ├── P7.eeg
│   ├── P7.vhdr
│   ├── P7.vmrk
│   ├── P8.eeg
│   ├── P8.vhdr
│   ├── P8.vmrk
│   ├── P9.eeg
│   ├── P9.vhdr
│   └── P9.vmrk
├── Logfiles
│   ├── Logfile_S_MotioneseEEG__Ppn10_Rand4_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn11_Rand5_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn12_Rand6_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn13_Rand1_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn14_Rand2_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn15_Rand3_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn16_Rand4_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn17_Rand5_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn18_Rand6_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn19_Rand6_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn1_Rand1_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn20_Rand5_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn21_Rand4_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn22_Rand3_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn23_Rand2_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn24_Rand1_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn25_Rand6_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn26_Rand5_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn27_Rand4_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn28_Rand3_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn29_Rand2_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn2_Rand2_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn30_Rand1_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn31_Rand6_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn32_Rand5_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn33_Rand4_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn34_Rand4_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn35_Rand6_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn36_Rand4_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn37_Rand6_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn38_Rand4_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn39_Rand6_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn3_Rand3_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn40_Rand6_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn41_Rand4_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn42_Rand6_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn43_Rand4_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn44_Rand6_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn45_Rand4_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn46_Rand1_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn47_Rand2_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn4_Rand4_VOrder4.txt
│   ├── Logfile_S_MotioneseEEG__Ppn5_Rand5_VOrder1.txt
│   ├── Logfile_S_MotioneseEEG__Ppn6_Rand6_VOrder2.txt
│   ├── Logfile_S_MotioneseEEG__Ppn7_Rand1_VOrder3.txt
│   ├── Logfile_S_MotioneseEEG__Ppn8_Rand2_VOrder4.txt
│   └── Logfile_S_MotioneseEEG__Ppn9_Rand3_VOrder1.txt
├── Stimuli
│   ├── motionese_intro_balls_hellobaby.avi
│   ├── motionese_intro_balls_hellowave.avi
│   ├── motionese_intro_cups_hellobaby.avi
│   ├── motionese_intro_cups_hellowave.avi
│   ├── motionese_intro_peekaboo_1s.avi
│   ├── motionese_intro_peekaboo_2s.avi
│   ├── motionese_intro_peekaboo_3s.avi
│   ├── motionese_intro_peekaboo_4s.avi
│   ├── motionese_intro_rings_hellobaby.avi
│   ├── motionese_intro_rings_hellowave.avi
│   ├── motionese_stackballs_high.avi
│   ├── motionese_stackballs_norm.avi
│   ├── motionese_stackballs_var1.avi
│   ├── motionese_stackballs_var2.avi
│   ├── motionese_stackballs_var3.avi
│   ├── motionese_stackballs_var4.avi
│   ├── motionese_stackcups_high.avi
│   ├── motionese_stackcups_norm.avi
│   ├── motionese_stackcups_var1.avi
│   ├── motionese_stackcups_var2.avi
│   ├── motionese_stackcups_var3.avi
│   ├── motionese_stackcups_var4.avi
│   ├── motionese_stackrings_high.avi
│   ├── motionese_stackrings_norm.avi
│   ├── motionese_stackrings_var1.avi
│   ├── motionese_stackrings_var2.avi
│   ├── motionese_stackrings_var3.avi
│   └── motionese_stackrings_var4.avi
└── VideoCoding
    ├── ExplorationPhase_Behavior
    │   ├── Behavioural\ Coding\ S_EEGMotionese.docx
    │   ├── p11_behavior_coding.xlsx
    │   ├── p13_behavior_coding.xlsx
    │   ├── p14_behavior_coding.xlsx
    │   ├── p15_behavior_coding.xlsx
    │   ├── p17_behavior_coding.xlsx
    │   ├── p1_behavior_coding.xlsx
    │   ├── p22_behavior_coding.xlsx
    │   ├── p23_behavior_coding.xlsx
    │   ├── p24_behavior_coding.xlsx
    │   ├── p26_behavior_coding.xlsx
    │   ├── p28_behavior_coding.xlsx
    │   ├── p29_behavior_coding.xlsx
    │   ├── p30_behavior_coding.xlsx
    │   ├── p32_behavior_coding.xlsx
    │   ├── p35_behavior_coding.xlsx
    │   ├── p36_behavior_coding.xlsx
    │   ├── p37_behavior_coding.xlsx
    │   ├── p38_behavior_coding.xlsx
    │   ├── p40_behavior_coding.xlsx
    │   ├── p41_behavior_coding.xlsx
    │   ├── p42_behavior_coding.xlsx
    │   ├── p43_behavior_coding.xlsx
    │   ├── p44_behavior_coding.xlsx
    │   ├── p45_behavior_coding.xlsx
    │   ├── p46_behavior_coding.xlsx
    │   ├── p47_behavior_coding.xlsx
    │   ├── p5_behavior_coding.xlsx
    │   ├── p7_behavior_coding.xlsx
    │   ├── p8_behavior_coding.xlsx
    │   └── p9_behavior_coding.xlsx
    └── ObservationPhase_Looking
        ├── Coding\ of\ looking\ instructions.docx
        ├── Coding_Scheme_P11_coded.xls
        ├── Coding_Scheme_P13_coded.xls
        ├── Coding_Scheme_P14_coded.xls
        ├── Coding_Scheme_P15_coded.xls
        ├── Coding_Scheme_P17_coded.xls
        ├── Coding_Scheme_P1_coded.xls
        ├── Coding_Scheme_P22_coded.xls
        ├── Coding_Scheme_P23_coded.xls
        ├── Coding_Scheme_P24_coded.xls
        ├── Coding_Scheme_P26_coded.xls
        ├── Coding_Scheme_P28_coded.xls
        ├── Coding_Scheme_P29_coded.xls
        ├── Coding_Scheme_P30_coded.xls
        ├── Coding_Scheme_P32_coded.xls
        ├── Coding_Scheme_P35_coded.xls
        ├── Coding_Scheme_P36_coded.xls
        ├── Coding_Scheme_P37_coded.xls
        ├── Coding_Scheme_P38_coded.xls
        ├── Coding_Scheme_P40_coded.xls
        ├── Coding_Scheme_P41_coded.xls
        ├── Coding_Scheme_P42_coded.xls
        ├── Coding_Scheme_P43_coded.xls
        ├── Coding_Scheme_P44_coded.xls
        ├── Coding_Scheme_P45_coded.xls
        ├── Coding_Scheme_P46_coded.xls
        ├── Coding_Scheme_P47_coded.xls
        ├── Coding_Scheme_P5_coded.xls
        ├── Coding_Scheme_P7_coded.xls
        ├── Coding_Scheme_P8_coded.xls
        └── Coding_Scheme_P9_coded.xls

10 directories, 280 files
```

## BIDS representation of the raw data

```
bids
├── CHANGES
├── README
├── code
│   ├── BIDSconversion_motionese.m
│   └── trialfun_motionese.m
├── dataset_description.json
├── participants.json
├── participants.tsv
├── sourcedata
│   └── logfiles
│       ├── Logfile_S_MotioneseEEG__Ppn10_Rand4_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn11_Rand5_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn12_Rand6_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn13_Rand1_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn14_Rand2_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn15_Rand3_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn16_Rand4_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn17_Rand5_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn18_Rand6_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn19_Rand6_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn1_Rand1_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn20_Rand5_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn21_Rand4_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn22_Rand3_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn23_Rand2_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn24_Rand1_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn25_Rand6_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn26_Rand5_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn27_Rand4_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn28_Rand3_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn29_Rand2_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn2_Rand2_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn30_Rand1_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn31_Rand6_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn32_Rand5_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn33_Rand4_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn34_Rand4_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn35_Rand6_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn36_Rand4_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn37_Rand6_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn38_Rand4_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn39_Rand6_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn3_Rand3_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn40_Rand6_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn41_Rand4_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn42_Rand6_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn43_Rand4_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn44_Rand6_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn45_Rand4_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn46_Rand1_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn47_Rand2_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn4_Rand4_VOrder4.txt
│       ├── Logfile_S_MotioneseEEG__Ppn5_Rand5_VOrder1.txt
│       ├── Logfile_S_MotioneseEEG__Ppn6_Rand6_VOrder2.txt
│       ├── Logfile_S_MotioneseEEG__Ppn7_Rand1_VOrder3.txt
│       ├── Logfile_S_MotioneseEEG__Ppn8_Rand2_VOrder4.txt
│       └── Logfile_S_MotioneseEEG__Ppn9_Rand3_VOrder1.txt
├── stimuli
│   ├── motionese_intro_balls_hellobaby.avi
│   ├── motionese_intro_cups_hellobaby.avi
│   ├── motionese_intro_peekaboo_1s.avi
│   ├── motionese_intro_peekaboo_2s.avi
│   ├── motionese_intro_peekaboo_3s.avi
│   ├── motionese_intro_peekaboo_4s.avi
│   ├── motionese_intro_rings_hellobaby.avi
│   ├── motionese_stackballs_high.avi
│   ├── motionese_stackballs_norm.avi
│   ├── motionese_stackballs_var1.avi
│   ├── motionese_stackballs_var2.avi
│   ├── motionese_stackballs_var3.avi
│   ├── motionese_stackballs_var4.avi
│   ├── motionese_stackcups_high.avi
│   ├── motionese_stackcups_norm.avi
│   ├── motionese_stackcups_var1.avi
│   ├── motionese_stackcups_var2.avi
│   ├── motionese_stackcups_var3.avi
│   ├── motionese_stackcups_var4.avi
│   ├── motionese_stackrings_high.avi
│   ├── motionese_stackrings_norm.avi
│   ├── motionese_stackrings_var1.avi
│   ├── motionese_stackrings_var2.avi
│   ├── motionese_stackrings_var3.avi
│   └── motionese_stackrings_var4.avi
├── sub-P1
│   ├── beh
│   │   ├── sub-P1_task-actionobservation_events.json
│   │   ├── sub-P1_task-actionobservation_events.tsv
│   │   ├── sub-P1_task-exploration_events.json
│   │   └── sub-P1_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P1_task-actionobservation_channels.tsv
│   │   ├── sub-P1_task-actionobservation_eeg.eeg
│   │   ├── sub-P1_task-actionobservation_eeg.json
│   │   ├── sub-P1_task-actionobservation_eeg.vhdr
│   │   ├── sub-P1_task-actionobservation_eeg.vmrk
│   │   ├── sub-P1_task-actionobservation_events.json
│   │   └── sub-P1_task-actionobservation_events.tsv
│   └── sub-P1_scans.tsv
├── sub-P10
│   ├── beh
│   │   ├── sub-P10_task-actionobservation_events.json
│   │   ├── sub-P10_task-actionobservation_events.tsv
│   │   ├── sub-P10_task-exploration_events.json
│   │   └── sub-P10_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P10_task-actionobservation_channels.tsv
│   │   ├── sub-P10_task-actionobservation_eeg.eeg
│   │   ├── sub-P10_task-actionobservation_eeg.json
│   │   ├── sub-P10_task-actionobservation_eeg.vhdr
│   │   ├── sub-P10_task-actionobservation_eeg.vmrk
│   │   ├── sub-P10_task-actionobservation_events.json
│   │   └── sub-P10_task-actionobservation_events.tsv
│   └── sub-P10_scans.tsv
├── sub-P12
│   ├── beh
│   │   ├── sub-P12_task-actionobservation_events.json
│   │   ├── sub-P12_task-actionobservation_events.tsv
│   │   ├── sub-P12_task-exploration_events.json
│   │   └── sub-P12_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P12_task-actionobservation_channels.tsv
│   │   ├── sub-P12_task-actionobservation_eeg.eeg
│   │   ├── sub-P12_task-actionobservation_eeg.json
│   │   ├── sub-P12_task-actionobservation_eeg.vhdr
│   │   ├── sub-P12_task-actionobservation_eeg.vmrk
│   │   ├── sub-P12_task-actionobservation_events.json
│   │   └── sub-P12_task-actionobservation_events.tsv
│   └── sub-P12_scans.tsv
├── sub-P13
│   ├── beh
│   │   ├── sub-P13_task-actionobservation_events.json
│   │   ├── sub-P13_task-actionobservation_events.tsv
│   │   ├── sub-P13_task-exploration_events.json
│   │   └── sub-P13_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P13_task-actionobservation_channels.tsv
│   │   ├── sub-P13_task-actionobservation_eeg.eeg
│   │   ├── sub-P13_task-actionobservation_eeg.json
│   │   ├── sub-P13_task-actionobservation_eeg.vhdr
│   │   ├── sub-P13_task-actionobservation_eeg.vmrk
│   │   ├── sub-P13_task-actionobservation_events.json
│   │   └── sub-P13_task-actionobservation_events.tsv
│   └── sub-P13_scans.tsv
├── sub-P14
│   ├── beh
│   │   ├── sub-P14_task-actionobservation_events.json
│   │   ├── sub-P14_task-actionobservation_events.tsv
│   │   ├── sub-P14_task-exploration_events.json
│   │   └── sub-P14_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P14_task-actionobservation_channels.tsv
│   │   ├── sub-P14_task-actionobservation_eeg.eeg
│   │   ├── sub-P14_task-actionobservation_eeg.json
│   │   ├── sub-P14_task-actionobservation_eeg.vhdr
│   │   ├── sub-P14_task-actionobservation_eeg.vmrk
│   │   ├── sub-P14_task-actionobservation_events.json
│   │   └── sub-P14_task-actionobservation_events.tsv
│   └── sub-P14_scans.tsv
├── sub-P15
│   ├── beh
│   │   ├── sub-P15_task-actionobservation_events.json
│   │   ├── sub-P15_task-actionobservation_events.tsv
│   │   ├── sub-P15_task-exploration_events.json
│   │   └── sub-P15_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P15_task-actionobservation_channels.tsv
│   │   ├── sub-P15_task-actionobservation_eeg.eeg
│   │   ├── sub-P15_task-actionobservation_eeg.json
│   │   ├── sub-P15_task-actionobservation_eeg.vhdr
│   │   ├── sub-P15_task-actionobservation_eeg.vmrk
│   │   ├── sub-P15_task-actionobservation_events.json
│   │   └── sub-P15_task-actionobservation_events.tsv
│   └── sub-P15_scans.tsv
├── sub-P16
│   ├── beh
│   │   ├── sub-P16_task-actionobservation_events.json
│   │   ├── sub-P16_task-actionobservation_events.tsv
│   │   ├── sub-P16_task-exploration_events.json
│   │   └── sub-P16_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P16_task-actionobservation_channels.tsv
│   │   ├── sub-P16_task-actionobservation_eeg.eeg
│   │   ├── sub-P16_task-actionobservation_eeg.json
│   │   ├── sub-P16_task-actionobservation_eeg.vhdr
│   │   ├── sub-P16_task-actionobservation_eeg.vmrk
│   │   ├── sub-P16_task-actionobservation_events.json
│   │   └── sub-P16_task-actionobservation_events.tsv
│   └── sub-P16_scans.tsv
├── sub-P17
│   ├── beh
│   │   ├── sub-P17_task-actionobservation_events.json
│   │   ├── sub-P17_task-actionobservation_events.tsv
│   │   ├── sub-P17_task-exploration_events.json
│   │   └── sub-P17_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P17_task-actionobservation_channels.tsv
│   │   ├── sub-P17_task-actionobservation_eeg.eeg
│   │   ├── sub-P17_task-actionobservation_eeg.json
│   │   ├── sub-P17_task-actionobservation_eeg.vhdr
│   │   ├── sub-P17_task-actionobservation_eeg.vmrk
│   │   ├── sub-P17_task-actionobservation_events.json
│   │   └── sub-P17_task-actionobservation_events.tsv
│   └── sub-P17_scans.tsv
├── sub-P18
│   ├── beh
│   │   ├── sub-P18_task-actionobservation_events.json
│   │   ├── sub-P18_task-actionobservation_events.tsv
│   │   ├── sub-P18_task-exploration_events.json
│   │   └── sub-P18_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P18_task-actionobservation_channels.tsv
│   │   ├── sub-P18_task-actionobservation_eeg.eeg
│   │   ├── sub-P18_task-actionobservation_eeg.json
│   │   ├── sub-P18_task-actionobservation_eeg.vhdr
│   │   ├── sub-P18_task-actionobservation_eeg.vmrk
│   │   ├── sub-P18_task-actionobservation_events.json
│   │   └── sub-P18_task-actionobservation_events.tsv
│   └── sub-P18_scans.tsv
├── sub-P19
│   ├── beh
│   │   ├── sub-P19_task-actionobservation_events.json
│   │   ├── sub-P19_task-actionobservation_events.tsv
│   │   ├── sub-P19_task-exploration_events.json
│   │   └── sub-P19_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P19_task-actionobservation_channels.tsv
│   │   ├── sub-P19_task-actionobservation_eeg.eeg
│   │   ├── sub-P19_task-actionobservation_eeg.json
│   │   ├── sub-P19_task-actionobservation_eeg.vhdr
│   │   ├── sub-P19_task-actionobservation_eeg.vmrk
│   │   ├── sub-P19_task-actionobservation_events.json
│   │   └── sub-P19_task-actionobservation_events.tsv
│   └── sub-P19_scans.tsv
├── sub-P2
│   ├── beh
│   │   ├── sub-P2_task-actionobservation_events.json
│   │   ├── sub-P2_task-actionobservation_events.tsv
│   │   ├── sub-P2_task-exploration_events.json
│   │   └── sub-P2_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P2_task-actionobservation_channels.tsv
│   │   ├── sub-P2_task-actionobservation_eeg.eeg
│   │   ├── sub-P2_task-actionobservation_eeg.json
│   │   ├── sub-P2_task-actionobservation_eeg.vhdr
│   │   ├── sub-P2_task-actionobservation_eeg.vmrk
│   │   ├── sub-P2_task-actionobservation_events.json
│   │   └── sub-P2_task-actionobservation_events.tsv
│   └── sub-P2_scans.tsv
├── sub-P20
│   ├── beh
│   │   ├── sub-P20_task-actionobservation_events.json
│   │   ├── sub-P20_task-actionobservation_events.tsv
│   │   ├── sub-P20_task-exploration_events.json
│   │   └── sub-P20_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P20_task-actionobservation_channels.tsv
│   │   ├── sub-P20_task-actionobservation_eeg.eeg
│   │   ├── sub-P20_task-actionobservation_eeg.json
│   │   ├── sub-P20_task-actionobservation_eeg.vhdr
│   │   ├── sub-P20_task-actionobservation_eeg.vmrk
│   │   ├── sub-P20_task-actionobservation_events.json
│   │   └── sub-P20_task-actionobservation_events.tsv
│   └── sub-P20_scans.tsv
├── sub-P21
│   ├── beh
│   │   ├── sub-P21_task-actionobservation_events.json
│   │   ├── sub-P21_task-actionobservation_events.tsv
│   │   ├── sub-P21_task-exploration_events.json
│   │   └── sub-P21_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P21_task-actionobservation_channels.tsv
│   │   ├── sub-P21_task-actionobservation_eeg.eeg
│   │   ├── sub-P21_task-actionobservation_eeg.json
│   │   ├── sub-P21_task-actionobservation_eeg.vhdr
│   │   ├── sub-P21_task-actionobservation_eeg.vmrk
│   │   ├── sub-P21_task-actionobservation_events.json
│   │   └── sub-P21_task-actionobservation_events.tsv
│   └── sub-P21_scans.tsv
├── sub-P22
│   ├── beh
│   │   ├── sub-P22_task-actionobservation_events.json
│   │   ├── sub-P22_task-actionobservation_events.tsv
│   │   ├── sub-P22_task-exploration_events.json
│   │   └── sub-P22_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P22_task-actionobservation_channels.tsv
│   │   ├── sub-P22_task-actionobservation_eeg.eeg
│   │   ├── sub-P22_task-actionobservation_eeg.json
│   │   ├── sub-P22_task-actionobservation_eeg.vhdr
│   │   ├── sub-P22_task-actionobservation_eeg.vmrk
│   │   ├── sub-P22_task-actionobservation_events.json
│   │   └── sub-P22_task-actionobservation_events.tsv
│   └── sub-P22_scans.tsv
├── sub-P23
│   ├── beh
│   │   ├── sub-P23_task-actionobservation_events.json
│   │   ├── sub-P23_task-actionobservation_events.tsv
│   │   ├── sub-P23_task-exploration_events.json
│   │   └── sub-P23_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P23_task-actionobservation_channels.tsv
│   │   ├── sub-P23_task-actionobservation_eeg.eeg
│   │   ├── sub-P23_task-actionobservation_eeg.json
│   │   ├── sub-P23_task-actionobservation_eeg.vhdr
│   │   ├── sub-P23_task-actionobservation_eeg.vmrk
│   │   ├── sub-P23_task-actionobservation_events.json
│   │   └── sub-P23_task-actionobservation_events.tsv
│   └── sub-P23_scans.tsv
├── sub-P24
│   ├── beh
│   │   ├── sub-P24_task-actionobservation_events.json
│   │   ├── sub-P24_task-actionobservation_events.tsv
│   │   ├── sub-P24_task-exploration_events.json
│   │   └── sub-P24_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P24_task-actionobservation_channels.tsv
│   │   ├── sub-P24_task-actionobservation_eeg.eeg
│   │   ├── sub-P24_task-actionobservation_eeg.json
│   │   ├── sub-P24_task-actionobservation_eeg.vhdr
│   │   ├── sub-P24_task-actionobservation_eeg.vmrk
│   │   ├── sub-P24_task-actionobservation_events.json
│   │   └── sub-P24_task-actionobservation_events.tsv
│   └── sub-P24_scans.tsv
├── sub-P25
│   ├── beh
│   │   ├── sub-P25_task-actionobservation_events.json
│   │   ├── sub-P25_task-actionobservation_events.tsv
│   │   ├── sub-P25_task-exploration_events.json
│   │   └── sub-P25_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P25_task-actionobservation_channels.tsv
│   │   ├── sub-P25_task-actionobservation_eeg.eeg
│   │   ├── sub-P25_task-actionobservation_eeg.json
│   │   ├── sub-P25_task-actionobservation_eeg.vhdr
│   │   ├── sub-P25_task-actionobservation_eeg.vmrk
│   │   ├── sub-P25_task-actionobservation_events.json
│   │   └── sub-P25_task-actionobservation_events.tsv
│   └── sub-P25_scans.tsv
├── sub-P26
│   ├── beh
│   │   ├── sub-P26_task-actionobservation_events.json
│   │   ├── sub-P26_task-actionobservation_events.tsv
│   │   ├── sub-P26_task-exploration_events.json
│   │   └── sub-P26_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P26_task-actionobservation_channels.tsv
│   │   ├── sub-P26_task-actionobservation_eeg.eeg
│   │   ├── sub-P26_task-actionobservation_eeg.json
│   │   ├── sub-P26_task-actionobservation_eeg.vhdr
│   │   ├── sub-P26_task-actionobservation_eeg.vmrk
│   │   ├── sub-P26_task-actionobservation_events.json
│   │   └── sub-P26_task-actionobservation_events.tsv
│   └── sub-P26_scans.tsv
├── sub-P27
│   ├── beh
│   │   ├── sub-P27_task-actionobservation_events.json
│   │   ├── sub-P27_task-actionobservation_events.tsv
│   │   ├── sub-P27_task-exploration_events.json
│   │   └── sub-P27_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P27_task-actionobservation_channels.tsv
│   │   ├── sub-P27_task-actionobservation_eeg.eeg
│   │   ├── sub-P27_task-actionobservation_eeg.json
│   │   ├── sub-P27_task-actionobservation_eeg.vhdr
│   │   ├── sub-P27_task-actionobservation_eeg.vmrk
│   │   ├── sub-P27_task-actionobservation_events.json
│   │   └── sub-P27_task-actionobservation_events.tsv
│   └── sub-P27_scans.tsv
├── sub-P28
│   ├── beh
│   │   ├── sub-P28_task-actionobservation_events.json
│   │   ├── sub-P28_task-actionobservation_events.tsv
│   │   ├── sub-P28_task-exploration_events.json
│   │   └── sub-P28_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P28_task-actionobservation_channels.tsv
│   │   ├── sub-P28_task-actionobservation_eeg.eeg
│   │   ├── sub-P28_task-actionobservation_eeg.json
│   │   ├── sub-P28_task-actionobservation_eeg.vhdr
│   │   ├── sub-P28_task-actionobservation_eeg.vmrk
│   │   ├── sub-P28_task-actionobservation_events.json
│   │   └── sub-P28_task-actionobservation_events.tsv
│   └── sub-P28_scans.tsv
├── sub-P29
│   ├── beh
│   │   ├── sub-P29_task-actionobservation_events.json
│   │   ├── sub-P29_task-actionobservation_events.tsv
│   │   ├── sub-P29_task-exploration_events.json
│   │   └── sub-P29_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P29_task-actionobservation_channels.tsv
│   │   ├── sub-P29_task-actionobservation_eeg.eeg
│   │   ├── sub-P29_task-actionobservation_eeg.json
│   │   ├── sub-P29_task-actionobservation_eeg.vhdr
│   │   ├── sub-P29_task-actionobservation_eeg.vmrk
│   │   ├── sub-P29_task-actionobservation_events.json
│   │   └── sub-P29_task-actionobservation_events.tsv
│   └── sub-P29_scans.tsv
├── sub-P3
│   ├── beh
│   │   ├── sub-P3_task-actionobservation_events.json
│   │   ├── sub-P3_task-actionobservation_events.tsv
│   │   ├── sub-P3_task-exploration_events.json
│   │   └── sub-P3_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P3_task-actionobservation_channels.tsv
│   │   ├── sub-P3_task-actionobservation_eeg.eeg
│   │   ├── sub-P3_task-actionobservation_eeg.json
│   │   ├── sub-P3_task-actionobservation_eeg.vhdr
│   │   ├── sub-P3_task-actionobservation_eeg.vmrk
│   │   ├── sub-P3_task-actionobservation_events.json
│   │   └── sub-P3_task-actionobservation_events.tsv
│   └── sub-P3_scans.tsv
├── sub-P30
│   ├── beh
│   │   ├── sub-P30_task-actionobservation_events.json
│   │   ├── sub-P30_task-actionobservation_events.tsv
│   │   ├── sub-P30_task-exploration_events.json
│   │   └── sub-P30_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P30_task-actionobservation_channels.tsv
│   │   ├── sub-P30_task-actionobservation_eeg.eeg
│   │   ├── sub-P30_task-actionobservation_eeg.json
│   │   ├── sub-P30_task-actionobservation_eeg.vhdr
│   │   ├── sub-P30_task-actionobservation_eeg.vmrk
│   │   ├── sub-P30_task-actionobservation_events.json
│   │   └── sub-P30_task-actionobservation_events.tsv
│   └── sub-P30_scans.tsv
├── sub-P31
│   ├── beh
│   │   ├── sub-P31_task-actionobservation_events.json
│   │   ├── sub-P31_task-actionobservation_events.tsv
│   │   ├── sub-P31_task-exploration_events.json
│   │   └── sub-P31_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P31_task-actionobservation_channels.tsv
│   │   ├── sub-P31_task-actionobservation_eeg.eeg
│   │   ├── sub-P31_task-actionobservation_eeg.json
│   │   ├── sub-P31_task-actionobservation_eeg.vhdr
│   │   ├── sub-P31_task-actionobservation_eeg.vmrk
│   │   ├── sub-P31_task-actionobservation_events.json
│   │   └── sub-P31_task-actionobservation_events.tsv
│   └── sub-P31_scans.tsv
├── sub-P32
│   ├── beh
│   │   ├── sub-P32_task-actionobservation_events.json
│   │   ├── sub-P32_task-actionobservation_events.tsv
│   │   ├── sub-P32_task-exploration_events.json
│   │   └── sub-P32_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P32_task-actionobservation_channels.tsv
│   │   ├── sub-P32_task-actionobservation_eeg.eeg
│   │   ├── sub-P32_task-actionobservation_eeg.json
│   │   ├── sub-P32_task-actionobservation_eeg.vhdr
│   │   ├── sub-P32_task-actionobservation_eeg.vmrk
│   │   ├── sub-P32_task-actionobservation_events.json
│   │   └── sub-P32_task-actionobservation_events.tsv
│   └── sub-P32_scans.tsv
├── sub-P33
│   ├── beh
│   │   ├── sub-P33_task-actionobservation_events.json
│   │   ├── sub-P33_task-actionobservation_events.tsv
│   │   ├── sub-P33_task-exploration_events.json
│   │   └── sub-P33_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P33_task-actionobservation_channels.tsv
│   │   ├── sub-P33_task-actionobservation_eeg.eeg
│   │   ├── sub-P33_task-actionobservation_eeg.json
│   │   ├── sub-P33_task-actionobservation_eeg.vhdr
│   │   ├── sub-P33_task-actionobservation_eeg.vmrk
│   │   ├── sub-P33_task-actionobservation_events.json
│   │   └── sub-P33_task-actionobservation_events.tsv
│   └── sub-P33_scans.tsv
├── sub-P35
│   ├── beh
│   │   ├── sub-P35_task-actionobservation_events.json
│   │   ├── sub-P35_task-actionobservation_events.tsv
│   │   ├── sub-P35_task-exploration_events.json
│   │   └── sub-P35_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P35_task-actionobservation_channels.tsv
│   │   ├── sub-P35_task-actionobservation_eeg.eeg
│   │   ├── sub-P35_task-actionobservation_eeg.json
│   │   ├── sub-P35_task-actionobservation_eeg.vhdr
│   │   ├── sub-P35_task-actionobservation_eeg.vmrk
│   │   ├── sub-P35_task-actionobservation_events.json
│   │   └── sub-P35_task-actionobservation_events.tsv
│   └── sub-P35_scans.tsv
├── sub-P36
│   ├── beh
│   │   ├── sub-P36_task-actionobservation_events.json
│   │   ├── sub-P36_task-actionobservation_events.tsv
│   │   ├── sub-P36_task-exploration_events.json
│   │   └── sub-P36_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P36_task-actionobservation_channels.tsv
│   │   ├── sub-P36_task-actionobservation_eeg.eeg
│   │   ├── sub-P36_task-actionobservation_eeg.json
│   │   ├── sub-P36_task-actionobservation_eeg.vhdr
│   │   ├── sub-P36_task-actionobservation_eeg.vmrk
│   │   ├── sub-P36_task-actionobservation_events.json
│   │   └── sub-P36_task-actionobservation_events.tsv
│   └── sub-P36_scans.tsv
├── sub-P37
│   ├── beh
│   │   ├── sub-P37_task-actionobservation_events.json
│   │   ├── sub-P37_task-actionobservation_events.tsv
│   │   ├── sub-P37_task-exploration_events.json
│   │   └── sub-P37_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P37_task-actionobservation_channels.tsv
│   │   ├── sub-P37_task-actionobservation_eeg.eeg
│   │   ├── sub-P37_task-actionobservation_eeg.json
│   │   ├── sub-P37_task-actionobservation_eeg.vhdr
│   │   ├── sub-P37_task-actionobservation_eeg.vmrk
│   │   ├── sub-P37_task-actionobservation_events.json
│   │   └── sub-P37_task-actionobservation_events.tsv
│   └── sub-P37_scans.tsv
├── sub-P38
│   ├── beh
│   │   ├── sub-P38_task-actionobservation_events.json
│   │   ├── sub-P38_task-actionobservation_events.tsv
│   │   ├── sub-P38_task-exploration_events.json
│   │   └── sub-P38_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P38_task-actionobservation_channels.tsv
│   │   ├── sub-P38_task-actionobservation_eeg.eeg
│   │   ├── sub-P38_task-actionobservation_eeg.json
│   │   ├── sub-P38_task-actionobservation_eeg.vhdr
│   │   ├── sub-P38_task-actionobservation_eeg.vmrk
│   │   ├── sub-P38_task-actionobservation_events.json
│   │   └── sub-P38_task-actionobservation_events.tsv
│   └── sub-P38_scans.tsv
├── sub-P4
│   ├── beh
│   │   ├── sub-P4_task-actionobservation_events.json
│   │   ├── sub-P4_task-actionobservation_events.tsv
│   │   ├── sub-P4_task-exploration_events.json
│   │   └── sub-P4_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P4_task-actionobservation_channels.tsv
│   │   ├── sub-P4_task-actionobservation_eeg.eeg
│   │   ├── sub-P4_task-actionobservation_eeg.json
│   │   ├── sub-P4_task-actionobservation_eeg.vhdr
│   │   ├── sub-P4_task-actionobservation_eeg.vmrk
│   │   ├── sub-P4_task-actionobservation_events.json
│   │   └── sub-P4_task-actionobservation_events.tsv
│   └── sub-P4_scans.tsv
├── sub-P40
│   ├── beh
│   │   ├── sub-P40_task-actionobservation_events.json
│   │   ├── sub-P40_task-actionobservation_events.tsv
│   │   ├── sub-P40_task-exploration_events.json
│   │   └── sub-P40_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P40_task-actionobservation_channels.tsv
│   │   ├── sub-P40_task-actionobservation_eeg.eeg
│   │   ├── sub-P40_task-actionobservation_eeg.json
│   │   ├── sub-P40_task-actionobservation_eeg.vhdr
│   │   ├── sub-P40_task-actionobservation_eeg.vmrk
│   │   ├── sub-P40_task-actionobservation_events.json
│   │   └── sub-P40_task-actionobservation_events.tsv
│   └── sub-P40_scans.tsv
├── sub-P41
│   ├── beh
│   │   ├── sub-P41_task-actionobservation_events.json
│   │   ├── sub-P41_task-actionobservation_events.tsv
│   │   ├── sub-P41_task-exploration_events.json
│   │   └── sub-P41_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P41_task-actionobservation_channels.tsv
│   │   ├── sub-P41_task-actionobservation_eeg.eeg
│   │   ├── sub-P41_task-actionobservation_eeg.json
│   │   ├── sub-P41_task-actionobservation_eeg.vhdr
│   │   ├── sub-P41_task-actionobservation_eeg.vmrk
│   │   ├── sub-P41_task-actionobservation_events.json
│   │   └── sub-P41_task-actionobservation_events.tsv
│   └── sub-P41_scans.tsv
├── sub-P42
│   ├── beh
│   │   ├── sub-P42_task-actionobservation_events.json
│   │   ├── sub-P42_task-actionobservation_events.tsv
│   │   ├── sub-P42_task-exploration_events.json
│   │   └── sub-P42_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P42_task-actionobservation_channels.tsv
│   │   ├── sub-P42_task-actionobservation_eeg.eeg
│   │   ├── sub-P42_task-actionobservation_eeg.json
│   │   ├── sub-P42_task-actionobservation_eeg.vhdr
│   │   ├── sub-P42_task-actionobservation_eeg.vmrk
│   │   ├── sub-P42_task-actionobservation_events.json
│   │   └── sub-P42_task-actionobservation_events.tsv
│   └── sub-P42_scans.tsv
├── sub-P43
│   ├── beh
│   │   ├── sub-P43_task-actionobservation_events.json
│   │   ├── sub-P43_task-actionobservation_events.tsv
│   │   ├── sub-P43_task-exploration_events.json
│   │   └── sub-P43_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P43_task-actionobservation_channels.tsv
│   │   ├── sub-P43_task-actionobservation_eeg.eeg
│   │   ├── sub-P43_task-actionobservation_eeg.json
│   │   ├── sub-P43_task-actionobservation_eeg.vhdr
│   │   ├── sub-P43_task-actionobservation_eeg.vmrk
│   │   ├── sub-P43_task-actionobservation_events.json
│   │   └── sub-P43_task-actionobservation_events.tsv
│   └── sub-P43_scans.tsv
├── sub-P44
│   ├── beh
│   │   ├── sub-P44_task-actionobservation_events.json
│   │   ├── sub-P44_task-actionobservation_events.tsv
│   │   ├── sub-P44_task-exploration_events.json
│   │   └── sub-P44_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P44_task-actionobservation_channels.tsv
│   │   ├── sub-P44_task-actionobservation_eeg.eeg
│   │   ├── sub-P44_task-actionobservation_eeg.json
│   │   ├── sub-P44_task-actionobservation_eeg.vhdr
│   │   ├── sub-P44_task-actionobservation_eeg.vmrk
│   │   ├── sub-P44_task-actionobservation_events.json
│   │   └── sub-P44_task-actionobservation_events.tsv
│   └── sub-P44_scans.tsv
├── sub-P45
│   ├── beh
│   │   ├── sub-P45_task-actionobservation_events.json
│   │   ├── sub-P45_task-actionobservation_events.tsv
│   │   ├── sub-P45_task-exploration_events.json
│   │   └── sub-P45_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P45_task-actionobservation_channels.tsv
│   │   ├── sub-P45_task-actionobservation_eeg.eeg
│   │   ├── sub-P45_task-actionobservation_eeg.json
│   │   ├── sub-P45_task-actionobservation_eeg.vhdr
│   │   ├── sub-P45_task-actionobservation_eeg.vmrk
│   │   ├── sub-P45_task-actionobservation_events.json
│   │   └── sub-P45_task-actionobservation_events.tsv
│   └── sub-P45_scans.tsv
├── sub-P46
│   ├── beh
│   │   ├── sub-P46_task-actionobservation_events.json
│   │   ├── sub-P46_task-actionobservation_events.tsv
│   │   ├── sub-P46_task-exploration_events.json
│   │   └── sub-P46_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P46_task-actionobservation_channels.tsv
│   │   ├── sub-P46_task-actionobservation_eeg.eeg
│   │   ├── sub-P46_task-actionobservation_eeg.json
│   │   ├── sub-P46_task-actionobservation_eeg.vhdr
│   │   ├── sub-P46_task-actionobservation_eeg.vmrk
│   │   ├── sub-P46_task-actionobservation_events.json
│   │   └── sub-P46_task-actionobservation_events.tsv
│   └── sub-P46_scans.tsv
├── sub-P47
│   ├── beh
│   │   ├── sub-P47_task-actionobservation_events.json
│   │   ├── sub-P47_task-actionobservation_events.tsv
│   │   ├── sub-P47_task-exploration_events.json
│   │   └── sub-P47_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P47_task-actionobservation_channels.tsv
│   │   ├── sub-P47_task-actionobservation_eeg.eeg
│   │   ├── sub-P47_task-actionobservation_eeg.json
│   │   ├── sub-P47_task-actionobservation_eeg.vhdr
│   │   ├── sub-P47_task-actionobservation_eeg.vmrk
│   │   ├── sub-P47_task-actionobservation_events.json
│   │   └── sub-P47_task-actionobservation_events.tsv
│   └── sub-P47_scans.tsv
├── sub-P5
│   ├── beh
│   │   ├── sub-P5_task-actionobservation_events.json
│   │   ├── sub-P5_task-actionobservation_events.tsv
│   │   ├── sub-P5_task-exploration_events.json
│   │   └── sub-P5_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P5_task-actionobservation_channels.tsv
│   │   ├── sub-P5_task-actionobservation_eeg.eeg
│   │   ├── sub-P5_task-actionobservation_eeg.json
│   │   ├── sub-P5_task-actionobservation_eeg.vhdr
│   │   ├── sub-P5_task-actionobservation_eeg.vmrk
│   │   ├── sub-P5_task-actionobservation_events.json
│   │   └── sub-P5_task-actionobservation_events.tsv
│   └── sub-P5_scans.tsv
├── sub-P6
│   ├── beh
│   │   ├── sub-P6_task-actionobservation_events.json
│   │   ├── sub-P6_task-actionobservation_events.tsv
│   │   ├── sub-P6_task-exploration_events.json
│   │   └── sub-P6_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P6_task-actionobservation_channels.tsv
│   │   ├── sub-P6_task-actionobservation_eeg.eeg
│   │   ├── sub-P6_task-actionobservation_eeg.json
│   │   ├── sub-P6_task-actionobservation_eeg.vhdr
│   │   ├── sub-P6_task-actionobservation_eeg.vmrk
│   │   ├── sub-P6_task-actionobservation_events.json
│   │   └── sub-P6_task-actionobservation_events.tsv
│   └── sub-P6_scans.tsv
├── sub-P7
│   ├── beh
│   │   ├── sub-P7_task-actionobservation_events.json
│   │   ├── sub-P7_task-actionobservation_events.tsv
│   │   ├── sub-P7_task-exploration_events.json
│   │   └── sub-P7_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P7_task-actionobservation_channels.tsv
│   │   ├── sub-P7_task-actionobservation_eeg.eeg
│   │   ├── sub-P7_task-actionobservation_eeg.json
│   │   ├── sub-P7_task-actionobservation_eeg.vhdr
│   │   ├── sub-P7_task-actionobservation_eeg.vmrk
│   │   ├── sub-P7_task-actionobservation_events.json
│   │   └── sub-P7_task-actionobservation_events.tsv
│   └── sub-P7_scans.tsv
├── sub-P8
│   ├── beh
│   │   ├── sub-P8_task-actionobservation_events.json
│   │   ├── sub-P8_task-actionobservation_events.tsv
│   │   ├── sub-P8_task-exploration_events.json
│   │   └── sub-P8_task-exploration_events.tsv
│   ├── eeg
│   │   ├── sub-P8_task-actionobservation_channels.tsv
│   │   ├── sub-P8_task-actionobservation_eeg.eeg
│   │   ├── sub-P8_task-actionobservation_eeg.json
│   │   ├── sub-P8_task-actionobservation_eeg.vhdr
│   │   ├── sub-P8_task-actionobservation_eeg.vmrk
│   │   ├── sub-P8_task-actionobservation_events.json
│   │   └── sub-P8_task-actionobservation_events.tsv
│   └── sub-P8_scans.tsv
└── sub-P9
    ├── beh
    │   ├── sub-P9_task-actionobservation_events.json
    │   ├── sub-P9_task-actionobservation_events.tsv
    │   ├── sub-P9_task-exploration_events.json
    │   └── sub-P9_task-exploration_events.tsv
    ├── eeg
    │   ├── sub-P9_task-actionobservation_channels.tsv
    │   ├── sub-P9_task-actionobservation_eeg.eeg
    │   ├── sub-P9_task-actionobservation_eeg.json
    │   ├── sub-P9_task-actionobservation_eeg.vhdr
    │   ├── sub-P9_task-actionobservation_eeg.vmrk
    │   ├── sub-P9_task-actionobservation_events.json
    │   └── sub-P9_task-actionobservation_events.tsv
    └── sub-P9_scans.tsv

136 directories, 607 files
```

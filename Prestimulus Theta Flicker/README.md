
# Converting EEG data to BIDS

This is data for a study by Rocio (Maria Fernandez-Barrero) that is currently in progress.

## The original sourcedata, not yet in BIDS

```
sourcedata/
└── 3_Data
    ├── ActiCap_64Ch_DCC_customized.mat
    ├── Lab\ notes
    │   └── notes.txt
    ├── Raw\ data
    │   ├── pilot01
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20200723165436.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20200723165446.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20200723165506.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20200723165516.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20200723165530.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20200723165545.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20200723165609.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20200723165616.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20200723165626.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20200723165634.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20200723165650.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20200723165658.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20200723165714.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20200723165730.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20200723165746.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20200723165807.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20200723165815.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20200723165828.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20200723165836.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20200723165846.wav
    │   │   │   ├── logfile1
    │   │   │   │   └── Theta_Exp_Adult
    │   │   │   ├── logfile2
    │   │   │   │   └── Theta_Exp_Adult
    │   │   │   └── logfile3
    │   │   │       └── Theta_Exp_Adult
    │   │   └── Neural
    │   │       ├── pilot01.eeg
    │   │       ├── pilot01.vhdr
    │   │       └── pilot01.vmrk
    │   ├── pilot02
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20200820143804.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20200820143819.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20200820143829.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20200820143840.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20200820143852.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20200820143910.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20200820143920.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20200820143941.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20200820143955.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20200820144005.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20200820144014.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20200820144022.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20200820144033.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20200820144049.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20200820144103.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20200820144111.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20200820144120.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20200820144143.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20200820144153.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20200820144202.wav
    │   │   │   ├── Theta_Exp_Adult1
    │   │   │   ├── Theta_Exp_Adult2
    │   │   │   └── Theta_Exp_Adult3
    │   │   └── Neural
    │   │       ├── pilot02.eeg
    │   │       ├── pilot02.vhdr
    │   │       └── pilot02.vmrk
    │   ├── pilot03
    │   │   ├── Neural
    │   │   │   ├── pilot03_correct.eeg
    │   │   │   ├── pilot03_correct.vhdr
    │   │   │   └── pilot03_correct.vmrk
    │   │   ├── component10_10Hz.png
    │   │   ├── component10_4Hz.png
    │   │   ├── component10_5Hz.png
    │   │   └── components1-10_topography.png
    │   ├── pilot04
    │   │   ├── flowerflicker_10Hz_sine_6s.avi
    │   │   ├── flowerflicker_4Hz_sine_6s.avi
    │   │   ├── flowerflicker_5Hz_sine_6s.avi
    │   │   ├── flowerflicker_random_sine_6s.avi
    │   │   ├── pilot04.eeg
    │   │   ├── pilot04.vhdr
    │   │   └── pilot04.vmrk
    │   ├── subject_01
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20200930122448.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20200930122512.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20200930122543.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20200930122549.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20200930122555.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20200930122600.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20200930122607.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20200930122624.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20200930122644.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20200930122719.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20200930122726.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20200930122734.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20200930122755.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20200930122812.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20200930122912.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20200930122942.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20200930122948.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20200930123006.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20200930123029.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20200930123105.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_01.eeg
    │   │   │   ├── subject_01.vhdr
    │   │   │   └── subject_01.vmrk
    │   │   └── labnotes_subject01.txt
    │   ├── subject_02
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201001124044.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201001124054.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201001124109.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201001124115.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201001124125.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201001124130.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201001124135.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201001124151.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201001124205.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201001124212.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201001124224.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201001124229.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201001124234.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201001124246.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201001124254.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201001124301.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201001124306.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201001124317.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201001124332.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201001124340.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_02.eeg
    │   │   │   ├── subject_02.vhdr
    │   │   │   └── subject_02.vmrk
    │   │   └── labnotes_subject02.txt
    │   ├── subject_03
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201005155825.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201005155839.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201005155845.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201005155858.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201005155907.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201005155913.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201005155919.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201005155925.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201005155934.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201005155940.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201005155947.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201005155955.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201005160001.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201005160011.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201005160016.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201005160022.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201005160026.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201005160033.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201005160038.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201005160045.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_03.eeg
    │   │   │   ├── subject_03.vhdr
    │   │   │   └── subject_03.vmrk
    │   │   └── labnotes_subject03.txt
    │   ├── subject_04
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201007160543.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201007160602.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201007160623.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201007160652.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201007160659.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201007160709.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201007160721.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201007160729.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201007160737.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201007160748.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201007160759.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201007160813.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201007160823.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201007160837.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201007160842.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201007160851.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201007160858.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201007160910.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201007160921.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201007160929.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_04.eeg
    │   │   │   ├── subject_04.vhdr
    │   │   │   └── subject_04.vmrk
    │   │   └── labnotes_subject04.txt
    │   ├── subject_05
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201008114925.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201008114933.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201008114939.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201008115004.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201008115008.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201008115015.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201008115019.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201008115042.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201008115054.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201008115059.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201008115116.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201008115120.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201008115124.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201008115146.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201008115206.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201008115215.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201008115222.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201008115235.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201008115247.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201008115251.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_05.eeg
    │   │   │   ├── subject_05.vhdr
    │   │   │   └── subject_05.vmrk
    │   │   └── labnotes_subject05.txt
    │   ├── subject_06
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201008162049.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201008162057.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201008162108.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201008162115.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201008162123.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201008162131.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201008162136.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201008162141.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201008162211.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201008162216.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201008162220.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201008162226.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201008162230.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201008162235.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201008162259.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201008162321.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201008162326.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201008162332.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201008162337.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201008162341.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_06.eeg
    │   │   │   ├── subject_06.vhdr
    │   │   │   └── subject_06.vmrk
    │   │   └── labnotes_subject06.txt
    │   ├── subject_07
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201009115454.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201009115501.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201009115509.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201009115514.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201009115519.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201009115524.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201009115529.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201009115537.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201009115542.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201009115554.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201009115600.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201009115606.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201009115627.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201009115633.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201009115638.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201009115647.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201009115652.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201009115656.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201009115701.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201009115706.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_07.eeg
    │   │   │   ├── subject_07.vhdr
    │   │   │   └── subject_07.vmrk
    │   │   └── labnotes_subject07.txt
    │   ├── subject_08
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201012131416.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201012131434.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201012131448.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201012131455.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201012131500.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201012131510.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201012131516.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201012131527.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201012131543.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201012131551.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201012131557.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201012131603.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201012131608.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201012131615.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201012131623.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201012131629.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201012131635.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201012131649.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201012131700.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201012131710.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_08.eeg
    │   │   │   ├── subject_08.vhdr
    │   │   │   └── subject_08.vmrk
    │   │   └── labnotes_subject08.txt
    │   ├── subject_09
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201012170423.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201012170432.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201012170441.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201012170447.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201012170456.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201012170502.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201012170518.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201012170523.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201012170531.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201012170537.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201012170553.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201012170609.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201012170618.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201012170628.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201012170634.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201012170640.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201012170654.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201012170701.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201012170714.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201012170724.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_09.eeg
    │   │   │   ├── subject_09.vhdr
    │   │   │   └── subject_09.vmrk
    │   │   └── labnotes_subject09.txt
    │   ├── subject_10
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201013131735.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201013131750.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201013131816.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201013131822.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201013131826.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201013131831.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201013131840.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201013131856.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201013131912.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201013131922.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201013131928.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201013131932.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201013131937.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201013131954.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201013132014.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201013132028.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201013132033.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201013132043.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201013132057.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201013132117.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_10.eeg
    │   │   │   ├── subject_10.vhdr
    │   │   │   └── subject_10.vmrk
    │   │   └── labnotes_subject10.txt
    │   ├── subject_11
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201014161339.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201014161404.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201014161419.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201014161438.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201014161453.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201014161500.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201014161516.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201014161521.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201014161532.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201014161537.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201014161559.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201014161603.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201014161614.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201014161622.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201014161628.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201014161633.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201014161645.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201014161700.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201014161710.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201014161716.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_11.eeg
    │   │   │   ├── subject_11.vhdr
    │   │   │   └── subject_11.vmrk
    │   │   └── labnotes_subject11.txt
    │   ├── subject_12
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201015161437.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201015161443.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201015161449.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201015161452.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201015161457.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201015161508.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201015161523.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201015161539.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201015161547.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201015161553.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201015161610.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201015161620.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201015161634.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201015161653.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201015161701.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201015161713.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201015161719.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201015161727.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201015161738.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201015161745.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_12.eeg
    │   │   │   ├── subject_12.vhdr
    │   │   │   └── subject_12.vmrk
    │   │   └── labnotes_subject12.txt
    │   ├── subject_13
    │   │   ├── Behavioural
    │   │   │   ├── 04_phase_adult_Dutch-001-20201016151233.wav
    │   │   │   ├── 04_phase_adult_Dutch-002-20201016151237.wav
    │   │   │   ├── 04_phase_adult_Dutch-003-20201016151243.wav
    │   │   │   ├── 04_phase_adult_Dutch-004-20201016151247.wav
    │   │   │   ├── 04_phase_adult_Dutch-005-20201016151254.wav
    │   │   │   ├── 04_phase_adult_Dutch-006-20201016151303.wav
    │   │   │   ├── 04_phase_adult_Dutch-007-20201016151309.wav
    │   │   │   ├── 04_phase_adult_Dutch-008-20201016151324.wav
    │   │   │   ├── 04_phase_adult_Dutch-009-20201016151329.wav
    │   │   │   ├── 04_phase_adult_Dutch-010-20201016151333.wav
    │   │   │   ├── 04_phase_adult_Dutch-011-20201016151337.wav
    │   │   │   ├── 04_phase_adult_Dutch-012-20201016151342.wav
    │   │   │   ├── 04_phase_adult_Dutch-013-20201016151346.wav
    │   │   │   ├── 04_phase_adult_Dutch-014-20201016151357.wav
    │   │   │   ├── 04_phase_adult_Dutch-015-20201016151405.wav
    │   │   │   ├── 04_phase_adult_Dutch-016-20201016151410.wav
    │   │   │   ├── 04_phase_adult_Dutch-017-20201016151414.wav
    │   │   │   ├── 04_phase_adult_Dutch-018-20201016151420.wav
    │   │   │   ├── 04_phase_adult_Dutch-019-20201016151424.wav
    │   │   │   ├── 04_phase_adult_Dutch-020-20201016151437.wav
    │   │   │   ├── Theta_Exp_Adult_part1
    │   │   │   ├── Theta_Exp_Adult_part2
    │   │   │   └── Theta_Exp_Adult_part3
    │   │   ├── Neural
    │   │   │   ├── subject_13eeg.eeg
    │   │   │   ├── subject_13eeg.vhdr
    │   │   │   └── subject_13eeg.vmrk
    │   │   └── labnotes_subject13.txt
    │   ├── subject_14
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_14.eeg
    │   │       ├── subject_14.vhdr
    │   │       └── subject_14.vmrk
    │   ├── subject_15
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_15.eeg
    │   │       ├── subject_15.vhdr
    │   │       └── subject_15.vmrk
    │   ├── subject_16
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_16.eeg
    │   │       ├── subject_16.vhdr
    │   │       └── subject_16.vmrk
    │   ├── subject_17
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_17.eeg
    │   │       ├── subject_17.vhdr
    │   │       └── subject_17.vmrk
    │   ├── subject_18
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_18.eeg
    │   │       ├── subject_18.vhdr
    │   │       └── subject_18.vmrk
    │   ├── subject_19
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_19.eeg
    │   │       ├── subject_19.vhdr
    │   │       └── subject_19.vmrk
    │   ├── subject_20
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_20.eeg
    │   │       ├── subject_20.vhdr
    │   │       └── subject_20.vmrk
    │   ├── subject_21
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_21.eeg
    │   │       ├── subject_21.vhdr
    │   │       └── subject_21.vmrk
    │   ├── subject_22
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_22.eeg
    │   │       ├── subject_22.vhdr
    │   │       └── subject_22.vmrk
    │   ├── subject_23
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_23.eeg
    │   │       ├── subject_23.vhdr
    │   │       └── subject_23.vmrk
    │   ├── subject_24
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_24.eeg
    │   │       ├── subject_24.vhdr
    │   │       └── subject_24.vmrk
    │   ├── subject_25
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_25.eeg
    │   │       ├── subject_25.vhdr
    │   │       └── subject_25.vmrk
    │   ├── subject_26
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_26.eeg
    │   │       ├── subject_26.vhdr
    │   │       └── subject_26.vmrk
    │   ├── subject_27
    │   │   ├── Behavioural
    │   │   └── Neural
    │   │       ├── subject_27.eeg
    │   │       ├── subject_27.vhdr
    │   │       └── subject_27.vmrk
    │   └── subject_28
    │       ├── Behavioural
    │       └── Neural
    │           ├── subject_28.eeg
    │           ├── subject_28.vhdr
    │           └── subject_28.vmrk
    └── Video\ recordings

100 directories, 464 files
```

## BIDS representation of the raw data

```
bids/
├── CHANGES
├── README
├── code
│   ├── BIDSconversion_thetalearning.m
│   └── trialfun_thetalearning.m
├── dataset_description.json
├── participants.json
├── participants.tsv
├── sub-01
│   ├── eeg
│   │   ├── sub-01_task-visual_channels.tsv
│   │   ├── sub-01_task-visual_eeg.eeg
│   │   ├── sub-01_task-visual_eeg.json
│   │   ├── sub-01_task-visual_eeg.vhdr
│   │   ├── sub-01_task-visual_eeg.vmrk
│   │   └── sub-01_task-visual_events.tsv
│   ├── labnotes_subject01.txt
│   └── sub-01_scans.tsv
├── sub-02
│   ├── eeg
│   │   ├── sub-02_task-visual_channels.tsv
│   │   ├── sub-02_task-visual_eeg.eeg
│   │   ├── sub-02_task-visual_eeg.json
│   │   ├── sub-02_task-visual_eeg.vhdr
│   │   ├── sub-02_task-visual_eeg.vmrk
│   │   └── sub-02_task-visual_events.tsv
│   ├── labnotes_subject02.txt
│   └── sub-02_scans.tsv
├── sub-03
│   ├── eeg
│   │   ├── sub-03_task-visual_channels.tsv
│   │   ├── sub-03_task-visual_eeg.eeg
│   │   ├── sub-03_task-visual_eeg.json
│   │   ├── sub-03_task-visual_eeg.vhdr
│   │   ├── sub-03_task-visual_eeg.vmrk
│   │   └── sub-03_task-visual_events.tsv
│   ├── labnotes_subject03.txt
│   └── sub-03_scans.tsv
├── sub-04
│   ├── eeg
│   │   ├── sub-04_task-visual_channels.tsv
│   │   ├── sub-04_task-visual_eeg.eeg
│   │   ├── sub-04_task-visual_eeg.json
│   │   ├── sub-04_task-visual_eeg.vhdr
│   │   ├── sub-04_task-visual_eeg.vmrk
│   │   └── sub-04_task-visual_events.tsv
│   ├── labnotes_subject04.txt
│   └── sub-04_scans.tsv
├── sub-05
│   ├── eeg
│   │   ├── sub-05_task-visual_channels.tsv
│   │   ├── sub-05_task-visual_eeg.eeg
│   │   ├── sub-05_task-visual_eeg.json
│   │   ├── sub-05_task-visual_eeg.vhdr
│   │   ├── sub-05_task-visual_eeg.vmrk
│   │   └── sub-05_task-visual_events.tsv
│   ├── labnotes_subject05.txt
│   └── sub-05_scans.tsv
├── sub-06
│   ├── eeg
│   │   ├── sub-06_task-visual_channels.tsv
│   │   ├── sub-06_task-visual_eeg.eeg
│   │   ├── sub-06_task-visual_eeg.json
│   │   ├── sub-06_task-visual_eeg.vhdr
│   │   ├── sub-06_task-visual_eeg.vmrk
│   │   └── sub-06_task-visual_events.tsv
│   ├── labnotes_subject06.txt
│   └── sub-06_scans.tsv
├── sub-07
│   ├── eeg
│   │   ├── sub-07_task-visual_channels.tsv
│   │   ├── sub-07_task-visual_eeg.eeg
│   │   ├── sub-07_task-visual_eeg.json
│   │   ├── sub-07_task-visual_eeg.vhdr
│   │   ├── sub-07_task-visual_eeg.vmrk
│   │   └── sub-07_task-visual_events.tsv
│   ├── labnotes_subject07.txt
│   └── sub-07_scans.tsv
├── sub-08
│   ├── eeg
│   │   ├── sub-08_task-visual_channels.tsv
│   │   ├── sub-08_task-visual_eeg.eeg
│   │   ├── sub-08_task-visual_eeg.json
│   │   ├── sub-08_task-visual_eeg.vhdr
│   │   ├── sub-08_task-visual_eeg.vmrk
│   │   └── sub-08_task-visual_events.tsv
│   ├── labnotes_subject08.txt
│   └── sub-08_scans.tsv
├── sub-09
│   ├── eeg
│   │   ├── sub-09_task-visual_channels.tsv
│   │   ├── sub-09_task-visual_eeg.eeg
│   │   ├── sub-09_task-visual_eeg.json
│   │   ├── sub-09_task-visual_eeg.vhdr
│   │   ├── sub-09_task-visual_eeg.vmrk
│   │   └── sub-09_task-visual_events.tsv
│   ├── labnotes_subject09.txt
│   └── sub-09_scans.tsv
├── sub-10
│   ├── eeg
│   │   ├── sub-10_task-visual_channels.tsv
│   │   ├── sub-10_task-visual_eeg.eeg
│   │   ├── sub-10_task-visual_eeg.json
│   │   ├── sub-10_task-visual_eeg.vhdr
│   │   ├── sub-10_task-visual_eeg.vmrk
│   │   └── sub-10_task-visual_events.tsv
│   ├── labnotes_subject10.txt
│   └── sub-10_scans.tsv
├── sub-11
│   ├── eeg
│   │   ├── sub-11_task-visual_channels.tsv
│   │   ├── sub-11_task-visual_eeg.eeg
│   │   ├── sub-11_task-visual_eeg.json
│   │   ├── sub-11_task-visual_eeg.vhdr
│   │   ├── sub-11_task-visual_eeg.vmrk
│   │   └── sub-11_task-visual_events.tsv
│   ├── labnotes_subject11.txt
│   └── sub-11_scans.tsv
├── sub-12
│   ├── eeg
│   │   ├── sub-12_task-visual_channels.tsv
│   │   ├── sub-12_task-visual_eeg.eeg
│   │   ├── sub-12_task-visual_eeg.json
│   │   ├── sub-12_task-visual_eeg.vhdr
│   │   ├── sub-12_task-visual_eeg.vmrk
│   │   └── sub-12_task-visual_events.tsv
│   ├── labnotes_subject12.txt
│   └── sub-12_scans.tsv
├── sub-13
│   ├── eeg
│   │   ├── sub-13_task-visual_channels.tsv
│   │   ├── sub-13_task-visual_eeg.eeg
│   │   ├── sub-13_task-visual_eeg.json
│   │   ├── sub-13_task-visual_eeg.vhdr
│   │   ├── sub-13_task-visual_eeg.vmrk
│   │   └── sub-13_task-visual_events.tsv
│   ├── labnotes_subject13.txt
│   └── sub-13_scans.tsv
├── sub-14
│   ├── eeg
│   │   ├── sub-14_task-visual_channels.tsv
│   │   ├── sub-14_task-visual_eeg.eeg
│   │   ├── sub-14_task-visual_eeg.json
│   │   ├── sub-14_task-visual_eeg.vhdr
│   │   ├── sub-14_task-visual_eeg.vmrk
│   │   └── sub-14_task-visual_events.tsv
│   └── sub-14_scans.tsv
├── sub-15
│   ├── eeg
│   │   ├── sub-15_task-visual_channels.tsv
│   │   ├── sub-15_task-visual_eeg.eeg
│   │   ├── sub-15_task-visual_eeg.json
│   │   ├── sub-15_task-visual_eeg.vhdr
│   │   ├── sub-15_task-visual_eeg.vmrk
│   │   └── sub-15_task-visual_events.tsv
│   └── sub-15_scans.tsv
├── sub-16
│   ├── eeg
│   │   ├── sub-16_task-visual_channels.tsv
│   │   ├── sub-16_task-visual_eeg.eeg
│   │   ├── sub-16_task-visual_eeg.json
│   │   ├── sub-16_task-visual_eeg.vhdr
│   │   ├── sub-16_task-visual_eeg.vmrk
│   │   └── sub-16_task-visual_events.tsv
│   └── sub-16_scans.tsv
├── sub-17
│   ├── eeg
│   │   ├── sub-17_task-visual_channels.tsv
│   │   ├── sub-17_task-visual_eeg.eeg
│   │   ├── sub-17_task-visual_eeg.json
│   │   ├── sub-17_task-visual_eeg.vhdr
│   │   ├── sub-17_task-visual_eeg.vmrk
│   │   └── sub-17_task-visual_events.tsv
│   └── sub-17_scans.tsv
├── sub-18
│   ├── eeg
│   │   ├── sub-18_task-visual_channels.tsv
│   │   ├── sub-18_task-visual_eeg.eeg
│   │   ├── sub-18_task-visual_eeg.json
│   │   ├── sub-18_task-visual_eeg.vhdr
│   │   ├── sub-18_task-visual_eeg.vmrk
│   │   └── sub-18_task-visual_events.tsv
│   └── sub-18_scans.tsv
├── sub-19
│   ├── eeg
│   │   ├── sub-19_task-visual_channels.tsv
│   │   ├── sub-19_task-visual_eeg.eeg
│   │   ├── sub-19_task-visual_eeg.json
│   │   ├── sub-19_task-visual_eeg.vhdr
│   │   ├── sub-19_task-visual_eeg.vmrk
│   │   └── sub-19_task-visual_events.tsv
│   └── sub-19_scans.tsv
├── sub-20
│   ├── eeg
│   │   ├── sub-20_task-visual_channels.tsv
│   │   ├── sub-20_task-visual_eeg.eeg
│   │   ├── sub-20_task-visual_eeg.json
│   │   ├── sub-20_task-visual_eeg.vhdr
│   │   ├── sub-20_task-visual_eeg.vmrk
│   │   └── sub-20_task-visual_events.tsv
│   └── sub-20_scans.tsv
├── sub-21
│   ├── eeg
│   │   ├── sub-21_task-visual_channels.tsv
│   │   ├── sub-21_task-visual_eeg.eeg
│   │   ├── sub-21_task-visual_eeg.json
│   │   ├── sub-21_task-visual_eeg.vhdr
│   │   ├── sub-21_task-visual_eeg.vmrk
│   │   └── sub-21_task-visual_events.tsv
│   └── sub-21_scans.tsv
└── task-visual_events.json

43 directories, 168 files
```

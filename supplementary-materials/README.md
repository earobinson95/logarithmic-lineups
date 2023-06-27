# Perception and Cognitive Implications of Logarithmic Scales for Increasing Exponential Data: Perceptual Sensitivity Tested with Statistical Lineups
Emily A. Robinson, Reka Howard, and Susan VanderPlas

## Supplementary Material

+ **Participant Data:** De-identified participant data collected in the study and used for analyses are available in `lineup-model-data.csv`.

+ **Data Analysis Code:** The code used to replicate the analysis in this paper can be in `lineups-analysis.qmd`.

+ **Study Applet Code:** The code used to create the study applet via RShiny can be found on GitHub at <https://github.com/earobinson95/perception-of-statistical-graphics-log>

## Participant Data Contents

+ **participant_id:** provides the unique participant identifier as a combination of nick_name and study_starttime
+ **n_lineups:** the total number of lineups completed by that participant.
+ **age:** indicates the participants age range.
+ **gender:** indicates the gender the participant identifies by.
+ **academic_study:** indicates the level of education the participant has completed.
+ **computer_mouse:** indicates whether or not the participant used a computer mouse to complete the study.
+ **recruitment:** indicates how the participant was recruited for the study.
+ **dataset_id**:** unique identifier for a specific simulated data set plotted in the statistical lineups.
+ **set:** indicates the simulated replication of each curvature combination.
+ **curvature** indicates the unique curvature combination ID `t-H_n-E, t-E_n-H, t-M_n-H, t-H_n-M, t-E_n-M, t-M_n-E`.
+ **target:** indicates the curvature of the embedded target panel `E, M, H`.
+ **null:** indicates the curvature of the other null panels `E, M, H`.
+ **scale:** indicates the scale in which the data was displayed `log, linear`.
+ **correct:** indicates the actual location of the target panel.
+ **response_no:** indicates the location of the participants selection of the target panel.
+ **binary_response:** indicates whether or not the participant correctly identified the target panel.
+ **conf_level:** provides the participants confidence level selection in identifying the target panel.
+ **choice_reason:** provides the participants reason for selecting the panel they did for the target.

Note that the curvature is encoded as:

+ `E` -- high curvature (easy)
+ `M` -- medium curvature (medium)
+ `H` -- low curvature (hard)

#!/usr/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4
#-------------------------------------------

# /usr/lib/qflow/scripts/synthesize.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 || exit 1
# /usr/lib/qflow/scripts/placement.sh -d /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 || exit 1
/usr/lib/qflow/scripts/vesta.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 || exit 1
# /usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 || exit 1
# /usr/lib/qflow/scripts/placement.sh -f -d /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 || exit 1
# /usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 || exit 1 $status
# /usr/lib/qflow/scripts/cleanup.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 || exit 1
# /usr/lib/qflow/scripts/display.sh /home/belindabrown/Desktop/Designs_Verification/Design_Complete_Process/layout/projects/counter_b4 counter_b4 || exit 1


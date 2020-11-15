#!/usr/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/belindabrown/Desktop/Qflow_Analysis/projects/uart
#-------------------------------------------

# /usr/lib/qflow/scripts/synthesize.sh /home/belindabrown/Desktop/Qflow_Analysis/projects/uart uart || exit 1
# /usr/lib/qflow/scripts/placement.sh -d /home/belindabrown/Desktop/Qflow_Analysis/projects/uart uart || exit 1
/usr/lib/qflow/scripts/vesta.sh /home/belindabrown/Desktop/Qflow_Analysis/projects/uart uart || exit 1
# /usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Qflow_Analysis/projects/uart uart || exit 1
# /usr/lib/qflow/scripts/placement.sh -f -d /home/belindabrown/Desktop/Qflow_Analysis/projects/uart uart || exit 1
# /usr/lib/qflow/scripts/router.sh /home/belindabrown/Desktop/Qflow_Analysis/projects/uart uart || exit 1 $status
# /usr/lib/qflow/scripts/cleanup.sh /home/belindabrown/Desktop/Qflow_Analysis/projects/uart uart || exit 1
# /usr/lib/qflow/scripts/display.sh /home/belindabrown/Desktop/Qflow_Analysis/projects/uart uart || exit 1

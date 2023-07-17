mapfile -t all_runs < all_runs.txt
for run_number in $all_runs
do
    echo $run_number
    echo $CURRENT_RUN_NUMBER
done
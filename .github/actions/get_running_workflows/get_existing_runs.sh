mapfile -t all_runs < all_runs.txt
echo "existing_runs=false" >> "$GITHUB_OUTPUT"
echo "Current Run Number: $CURRENT_RUN_NUMBER"
for run_number in $all_runs
do
    echo "For Loop Run Number: $run_number"
    if [ $run_number -lt $CURRENT_RUN_NUMBER ]
    then
        echo "existing_runs=true" >> "$GITHUB_OUTPUT"
    fi
done
mapfile -t all_runs < all_runs.txt
echo "existing_runs=false" >> "$GITHUB_OUTPUT"
echo "existing_run_number=None" >> "$GITHUB_OUTPUT"

if [ "${#all_runs[@]}" -lt 1 ]
then
    echo "no_runs=true" >> "$GITHUB_OUTPUT"
fi

for run_number in "${all_runs[@]}"; do
    if [ $run_number -lt $CURRENT_RUN_NUMBER ]
    then
        echo "existing_runs=true" >> "$GITHUB_OUTPUT"
        echo "existing_run_number=$run_number" >> "$GITHUB_OUTPUT"
    fi
done
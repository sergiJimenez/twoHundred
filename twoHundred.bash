#!/bin/bash

n=10 #Change this variable to run the tests as many times as you wish
success=0
failure=0

start_time=$(date +%s)

for (( i=1; i<=$n; i++ )); do
  if npm run test; then
    success=$((success+1))
  else
    failure=$((failure+1))
    echo "Testing failure! Test lap $i fail. Stopping the execution!"
    break
  fi
done

end_time=$(date +%s)
execution_time=$((end_time - start_time))

minutes=$((execution_time / 60))
seconds=$((execution_time % 60))

if [ $failure -eq 1 ]; then
	echo "Tests failure: $failure."
elif [ $success -eq $n ]; then
	echo "Tests correct: $success."
	powershell -c "(New-Object Media.SoundPlayer 'C:\Users\').PlaySync()" #Change the path of the sound that you would be like notificated when all process has done. Or delete this line if you won't be notificated
	start ../coverage/index.html
fi

echo "Total time $minutes minutes and $seconds seconds."

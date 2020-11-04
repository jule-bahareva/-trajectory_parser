<h1>Instruction: </h1>

<b>1. Install docker </b>

https://www.docker.com/

<b>2. Pull docker image </b>

 docker pull julebakhareva/trajectory_script_v1:1.0 

<b>3. Run container with flag that copies log file into the volume . Replace {Path_to_log} with path to the folder where log file is located </b> <i>(example /Users/jule/Documents/log) </i>

docker run -it -v {Path_to_log}:/volume julebakhareva/trajectory_script_v1:1.0 

<b>4. Move the script into volume </b>

mv ./parse-trajectory-reproducer-log.sh volume/

<b>5. Open volume folder</b>

cd volume

<b>6. Run script</b>

./parse-trajectory-reproducer-log.sh

<b>7. Enter path to the log file in volume</b>

./example.log

<b>8. Move script out of volume folder</b>

mv ./parse-trajectory-reproducer-log.sh ..

<b>9. Exit from docker container</b>

exit

<b>10. View trajectory.csv file in the folder where the log file is located</b>

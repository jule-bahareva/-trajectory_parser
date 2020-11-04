<h1>Instruction: </h1>

<b>1. Install docker 

https://www.docker.com/

<b>2. Pull docker image 

 docker pull julebakhareva/trajectory_script_v1:1.0 

<b>3. Run container with flag that copies log file into the volume . Replace {Path_to_log} with path to the folder where log file is located </b> <i>(example /Users/jule/Documents/log) </i>

docker run -it -v {Path_to_log}:/volume julebakhareva/trajectory_script_v1:1.0 

<b>4. Move the script into volume 

mv ./parse-trajectory-reproducer-log.sh volume/

<b>5. Open volume  folder

cd volume

<b>6. Run script

./parse-trajectory-reproducer-log.sh

<b>7. Enter path to the log file in volume

 ./example.log

<b>8. Move script out of volume folder

 mv ./parse-trajectory-reproducer-log.sh ..

<b>9. Exit from docker container 

exit

<b>10. View trajectory.csv file in the folder where the log file is located

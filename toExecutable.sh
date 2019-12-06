#! /bin/bash

binDir='/usr/local/bin/'
echo "Enter script path"
read scriptPath

if [ -z ${scriptPath+x} ]; then
  echo "script is required";
  exit 1
fi
if [ ! -f $scriptPath ]; then
  echo "${scriptPath} not exist";
  exit 1
fi
if [ ! -d $binDir ]; then
  echo "${binDir} not exist";
  exit 1
fi
if [ ${scriptPath: -3} != ".sh" ]; then
 echo ".sh extension is required";
 exit 1
fi

if [[ $scriptPath =~ '/' ]]; then
 IFS='\/ ' read -r -a array <<< "$scriptPath"
 srcFile=${array[@]: -1}
else
 srcFile=$scriptPath
fi

cp $scriptPath "${binDir}${srcFile}"
cd $binDir && chmod +x $srcFile


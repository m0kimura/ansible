#!/bin/bash
null=
p3=$3
p4=$4
p5=$5
if [[ $1 = "none" ]]; then
  holder="study-project"
elif [[ $1 = "auto" ]]; then
  holder=$(cut -d '/' -f 4 <<< $2)
  file=$(cut -d '/' -f 6 <<< $2)
  modifier=$(cut -d '.' -f 2 <<< ${file})
  if [[ ${file} = "hosts" ]]; then
    command="setup"
    p3="hosts"
  elif [[ ${file} = "config" ]]; then
    command="setup"
    p3="ssh"
  elif [[ ${modifier} = "yml" ]]; then
    command="play"
    p3=${file}
  fi
elif [[ $1 = "syntax" ]]; then
  command=$1
  holder=$(cut -d '/' -f 4 <<< $2)
  file=$(cut -d '/' -f 6 <<< $2)
  p3=${file}
elif [[ $1 = "play" ]]; then
  command=$1
  holder=$(cut -d '/' -f 4 <<< $2)
  file=$(cut -d '/' -f 6 <<< $2)
  p3=${file}
elif [[ $1 = "hosts" ]]; then
  command="setup"
  holder=$(cut -d '/' -f 4 <<< $2)
  p3=$1
elif [[ $1 = "ssh" ]]; then
  command="setup"
  holder=$(cut -d '/' -f 4 <<< $2)
  p3=$1
elif [[ $1 = "template" ]]; then
  command="setup"
  holder=$(cut -d '/' -f 4 <<< $2)
  p3=$1
else
  holder=$1
  command=
fi
echo "### holder=$holder / ${command} ${p3} ${p4} ${p5} ###"
##
  cd ${holder}
  if  [[ $1 = "none" ]]; then
    echo "### ansible cli環境へは、「project holder」を指定します。"
    Helps lex
    /bin/bash
  elif  [[ ${command} = "$null" ]]; then
    /bin/bash
  else
    lex ${command} ${p3} ${p4} ${p5}
  fi
##

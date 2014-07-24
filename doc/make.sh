#!/bin/bash

mkdir ../src
zcat Uni2Pinyin.gz | grep "^[0-9]" | awk '
BEGIN {print "-module(uni2pinyin).\n-export([decode/1]).\n"} 
{if(NF>2) {printf "decode(16#"$1") -> [ "; for(i=2;i<NF;i++){printf "\""$i"\","}; printf "\""$NF"\" ];\n"} else 
{print "decode(16#"$1") -> \""$2"\";"}} 
END   {print "decode(_) -> {error, unknow}."}
'  > ../src/uni2pinyin.erl



#!/bin/csh -f
#http://xmipp.cnb.csic.es/twiki/bin/view/Xmipp/Ml_tomo (c)

set doc=$1
set oext=$2
set tot=`wc -l $doc | awk  '{print $1}'`
set cc=`grep eader $doc| wc -l | awk  '{print $1}'`
set nr = $cc
while ($nr < $tot)
  @ nr = $nr + 1
  set line=`head -${nr} ${doc}|tail -1`
  set name=`echo $line |awk -F";" '{print $NF}'`
  set out=`echo ${name}.${oext}`
  @ nr = $nr + 1
  set line=`head -${nr} ${doc}|tail -1`
  xmipp_shift -i ${name} -o ${out} -shift "[$line[6],$line[7],$line[8]]"
  xmipp_rotate -i ${out} -dont_wrap -euler $line[3] $line[4] $line[5]
end

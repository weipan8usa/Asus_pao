#!/bin/bash

for glibc_nvr in $( rpm -q --qf '%{name}-%{version}-%{release}.%{arch}\n' glibc); do
  glibc_ver=$( echo "$glibc_nvr" | awk -F- '{print $2}' )
  glibc_maj=$( echo "$glibc_nvr" | awk -F. '{print $1}' )
  glibc_min=$( echo "$glibc_nvr" | awk -F. '{print $2}' )

  if [ "$glibc_maj" -gt 2 -o \
      \( "glibc_maj" -eq 2 -a "$glibc_min" -ge 18 \) ]; then
      echo 'not vulnerable'
  else 
      if rpm -q --changelog "$glibc_nvr" | grep -q 'CVR-2015-0235'; then
          echo "not vulnerable"
      else 
          echo "vulnerable"
      fi
  fi
done

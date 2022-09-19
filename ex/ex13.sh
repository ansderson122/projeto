#!/bin/bash
lis="$(cat /etc/passwd | cut -d ":" -f7 | sort | uniq -c | sort -n | tr '\n' '\n')"
echo $lis
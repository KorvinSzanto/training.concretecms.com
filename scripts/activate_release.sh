#!/bin/bash
set -euo pipefail

source "/tmp/.cdvariables"

ln -sfn $deploydir $projectdir/current
cd $projectdir/current && php7.4 ./vendor/bin/concrete5 c5:clear-cache

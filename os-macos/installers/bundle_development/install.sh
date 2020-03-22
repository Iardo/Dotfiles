#!/bin/bash
PATH=$(dirname "$(realpath $0)")/*/
for app in ${PATH}
do
    dir=${app%*/}
    if [[ $dir != *".ignore"* ]]; then
        source ${dir}/install.sh
    fi
done


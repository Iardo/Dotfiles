# #!/bin/sh
PATH=$(dirname "$(realpath $0)")/*/
for app in ${PATH}
do
    dir=${app%*/}
    source ${dir}/install.sh
done


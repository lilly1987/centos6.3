t_path="$(cd "$(dirname "$0")" && pwd)/"
cd $t_path

for f in source_sub*.sh;
do
source $f;
done


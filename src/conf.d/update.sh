export LANG=C
dir=$1
cd $dir
class=$(basename $(pwd))
lcopies=${dir}/*.lcopy

{
cat <<EOF
confs = \\
        \\
EOF

for x in $lcopies; do
    git    add   $(basename $x) > /dev/stderr
    printf "	%s \\\\\n" $(basename $x)
done
echo '	\'
echo '	$(NULL)'

} > confs.mk
git add  confs.mk 

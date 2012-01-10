export LANG=C
dir=$1
cd $dir
class=$(basename $(pwd))
lcopies=${dir}/*.lcopy

{
cat <<EOF
cons = \\
       \\
EOF

for x in $lcopies; do
    svn    add   $(basename $x) > /dev/stderr
    printf "	%s \\\\\n" $(basename $x)
done
echo '	\'
echo '	$(NULL)'

} > confs.mk

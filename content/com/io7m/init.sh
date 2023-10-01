#!bash

project() {
    local p=$1
    [ -d $p ] || mkdir $p
    metadata=$p/maven-metadata.xml
    [ -f $metadata ] || curl --fail https://repo.maven.apache.org/maven2/com/io7m/$p/com.io7m.$metadata --output $metadata

    v="$(cat "${metadata}" | grep 'latest>' | cut -d '>' -f 2 | cut -d '<' -f 1)"

    echo "$p => $v"
    cat canonmill/com.io7m.canonmill-1.0.0.buildspec | sed -e "s/canonmill/$p/" | sed -e "s/1.0.0/$v/" | sed -e 's/ -Dassembly.skipAssembly//' | sed -e "s/17.0.8/17.0.7/" > $p/com.io7m.$p-$v.buildspec

    echo "  ./rebuild.sh content/com/io7m/$p/com.io7m.$p-$v.buildspec"
    echo "  git add $p ; git commit -m 'add com.io7m.$p $v' ; git push"
    echo "  bin/add-new-release.sh content/com/io7m/$p/com.io7m.$p-$v.buildspec $v"
}

for p in calino claypot cxbutton genevan ieee754b16 jaffirm jattribute jcolorspace jcoords jdeferthrow jequality jeucreader jfsm jintegers jmurmur jnfp jnoisetype jodist jorchard jpita jproperties jptbox jpuddle jranges jregions jserial junreachable junsigned jvindicator mutable/numbers timehack6435126 xstructural
do
    project $p
done

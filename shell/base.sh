
echo "IP=`/sbin/ifconfig | grep -e eth0 -e eth1 -C 5 | grep "inet addr" | cut -d: -f2 | cut -d' '  -f1`"

current_dirname=`pwd`

echo "current_dirname=$current_dirname"

echo "parent_dirname=`dirname $current_dirname`"


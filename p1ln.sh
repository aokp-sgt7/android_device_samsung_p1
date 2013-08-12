#!/tmp/busybox sh

HW=$(cat /proc/cpuinfo | grep Hardware | sed s/Hardware// | tr '[A-Z]' '[a-z]' | tr -d ' ' | tr -d ':' | tr -d '\t')

echo "HW selected - $HW"

i="0"
while [ ! "$DEVICE" ]; do
    case $i in
#    0)
#        DEVICE=$(cat /default.prop | grep ro.aokp.device | sed s#ro\.aokp\.device=## | tr '[A-Z]' '[a-z]')
#    ;;
    0)
        DEVICE=$(cat /default.prop | grep ro.cm.device | sed s#ro\.cm\.device=## | tr '[A-Z]' '[a-z]')
    ;;
    1)
        DEVICE="p1"
    ;;
    esac
    i=$(($i+1))
done

echo "DEVICE selected - $DEVICE"

case $HW in
p1|gt-p1000)
	model=p1
    echo "Hardware used: $model"
;;
p1l|gt-p1000l|p1n|gt-p1000n|p1ln)
	model=p1ln
    echo "Hardware used: $model"
;;
*)
    echo "Invalid model: $HW"
    exit 2
;;
esac

if [ $model = "p1" ]; then
case $DEVICE in
p1)
    model=p1
    echo "Device used: $model"
    exit 0
;;
p1l|p1n)
	model=p1ln
    echo "Device used: $model"
;;
*)
    # exit before doing any damage! (this shouldn't happen)
	echo "Invalid device: $DEVICE"
	exit 2
;;
esac
fi

if [ $model != "p1" ]; then
    echo "Device used: $model"
    rm /tmp/boot.img
    mv /tmp/boot_$model.img /tmp/boot.img
fi

exit 0

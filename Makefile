NAMESPACE=lcdr

default:
	possible targets: test trig

test:
	rapper -i turtle --count ${NAMESPACE}.ttl

trig:
	rm -f ${NAMESPACE}.trig
	echo "<`cat ${NAMESPACE}.graph`> { " > ${NAMESPACE}.trig
	rapper -i turtle -o ntriples ${NAMESPACE}.ttl >> ${NAMESPACE}.trig
	echo " }" >> ${NAMESPACE}.trig

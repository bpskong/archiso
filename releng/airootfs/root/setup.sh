while [[ ! -f arch_setup ]]
do
	sleep 5
	curl -k -o arch_setup https://raw.githubusercontent.com/bpskong/archsetup/master/arch_setup >/dev/null 2>&1
	if [ -f ./arch_setup ] ; then
		chmod +x arch_setup
		./arch_setup
	fi
done

#!/bin/sh
ORIGINAL="/etc/crypto-policies/back-ends/opensshserver.config"
BACKUP="/etc/crypto-policies/back-ends/opensshserver.config.sneaky"

# save old one
if [ -f ${BACKUP} ]; then
	echo "You've already started the exercise."
	exit 0
fi

cp ${ORIGINAL} ${BACKUP}

sed -e 's/openssh.com/thauser.com/g' < ${BACKUP} > ${ORIGINAL}

if [[ "$?" -ne 0 ]]; then
	echo "Exercise script failed. Exit code: $?"
else
	systemctl stop sshd
	echo "Your sshd service is damaged and failing. Use systemctl to find and fix the problem."
fi

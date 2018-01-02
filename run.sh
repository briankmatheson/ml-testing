#!/bin/bash -e

APT_PACKAGES="tshark fping"
PIP_PACKAGES="numpy tensorflow-gpu"

apt-install() {
	export DEBIAN_FRONTEND=noninteractive
	apt-get update -q
	apt-get install -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" $APT_PACKAGES
}

pip-install() {
	pip install --yes $PIP_PACKAGES
}


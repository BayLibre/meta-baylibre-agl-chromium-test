FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = "\
	file://0001-xdg-emulator-test-v5.patch \
	"

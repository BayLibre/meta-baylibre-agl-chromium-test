SUMMARY = "Chromium Widget for AGL"
LICENSE = "Apache-2.0"

SRC_URI = " \
	file://${P}.tar.gz \
	"

LIC_FILES_CHKSUM = "file://LICENSE;md5=e72738c318ffac1ce4ee9664f25cdbe0"

RDEPENDS_pn_chromium-widget = "chromium"

inherit aglwgt

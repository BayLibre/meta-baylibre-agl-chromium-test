
SRC_URI_append = "git://chromium.googlesource.com/chromium/tools/depot_tools.git;protocol=http;name=gn;destsuffix=depot-tools"
SRCREV_gn = "9c215a38662471368a17c4bdfac99a90db22130c"

PACKAGECONFIG_append = " use-egl wayland disable-api-keys-info-bar"
CHROMIUM_GN_PATH := "${WORKDIR}/depot-tools"

# OK, this is a hack to force check_gn to wait for gn to be downloaded and installed
addtask check_gn after do_unpack

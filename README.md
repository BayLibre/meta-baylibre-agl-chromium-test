# Baylibre's AGL Chromium Test Layer

This README file contains information on the contents of the
meta-baylibre-agl-chromium-test layer.

Please see the corresponding sections below for details.

### Dependencies
-------------------------

This layer depends on:

  * URI: git://github.com/Igalia/meta-browser.git<br>
  branch: `ozone/wayland/20161130`

  * URI: https://gerrit.automotivelinux.org/gerrit/AGL/meta-agl-demo<br>
  branch: `chinook`

  * URI: https://gerrit.automotivelinux.org/gerrit/AGL/meta-agl-extra<br>
  layers: `meta-app-framework`<br>
  tag: `3.0.3`

### Patches
-----------

Please submit any patches against the meta-baylibre-agl-chromium-test layer to the
the maintainers:

* Michael Turquette <mturquette@baylibre.com>
* Frode Isaksen <fisaksen@baylibre.com>
* Jerome Brunet <jbrunet@baylibre.com>

## I. Description and provided packages:

The layer facilitate the testing of chromium on AGL chinook release by
automating most of tasks associated with build chromium and it's AGL widget.

+ Patched packages :
	- chromium : From meta-browser. The patch will download the gn tool from chromium and properly the build variable according to the instruction found at https://github.com/Igalia/meta-browser/wiki
	- homescreen : From agl-demo. Apply patch to scale chromium window
+ Provided packages :
	- chromium-widget : Provide the AGL specific widget for chromium. This will still require afm-util to properly finish the installation on the target device

## II. Adding the meta-baylibre-agl-chromium-test layer to your AGL Chinook build

1. Download meta-browser at `$AGL_TOP`
2. Download meta-baylibre-agl-chromium-test at `$AGL_TOP`
3. Add `chromium-test` to the feature of your AGL build<br>
```shell
source meta-agl/scripts/aglsetup.sh -m $MACHINE -b <your-other-features> chromium-test
```

With this, `meta-browser` and `meta-baylibre-agl-chromium-test` will be added to your `conf/bblayers.conf`. `chromium` and `chromium-widget` will be appended to your image.

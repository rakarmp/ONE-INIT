SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

REPLACE="
"

print_modname() {
  ui_print ""
  ui_print "
  █▀█ █▄░█ █▀▀   █ █▄░█ █ ▀█▀
  █▄█ █░▀█ ██▄   █ █░▀█ █ ░█░
  "
  ui_print ""
}

on_install() {
  ui_print "🚀 More Fast From Dragonboost..."
  sleep 1
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  ui_print ""
  ui_print "✔ Installation Successful!"
  ui_print ""
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
  set_perm $MODPATH/system/bin/oneinit 0 0 0775
}
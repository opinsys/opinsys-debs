// This is the Debian specific preferences file for KompoZer
// You can make any change in here, it is the purpose of this file.
// You can, with this file and all files present in the
// /etc/kompozer/pref directory, override any preference that is
// present in /usr/share/kompozer/defaults/pref directory.
// While your changes will be kept on upgrade if you modify files in
// /etc/kompozer/pref, please note that they won't be kept if you
// do them in /usr/share/kompozer/defaults/pref.

pref("extensions.update.enabled", true);

// Use LANG environment variable to choose locale
pref("intl.locale.matchOS", true);

pref("network.protocol-handler.app.http", "x-www-browser");
pref("network.protocol-handler.app.https", "x-www-browser");
pref("editor.helpers.browser.useSystem", false);

pref("editor.helpers.browser.path", "/usr/bin/x-www-browser");
pref("editor.helpers.browser.args", "");
pref("editor.helpers.file.args", "");
pref("editor.helpers.file.path", "");
pref("editor.helpers.ftp.args", "");
pref("editor.helpers.ftp.path", "");
pref("editor.helpers.image.args", "");
pref("editor.helpers.image.path", "");
pref("editor.helpers.media.args", "");
pref("editor.helpers.media.path", "");
pref("editor.helpers.text.args", "");
pref("editor.helpers.text.path", "");
pref("editor.nvu.sitemanager.openInNewTab", false);

dep "prefs.workstation" do
  requires "prefs.auto-hide-dock"
  requires "prefs.enable-dock-magnification"
  requires "prefs.disable-spaces-switch-on-activate"
  requires "prefs.disable-arrange-spaces-automatically"
  requires "prefs.enable-tap-to-click"
  requires "prefs.safari-empty-new-tabs-and-windows"
end

dep "prefs.small-screen" do
  requires "auto-hide-dock"
end

dep "prefs.auto-hide-dock", :template => "plist" do
  domain "com.apple.dock"
  values "autohide" => 1
end

dep "prefs.enable-dock-magnification", :template => "plist" do
  domain "com.apple.dock"
  values "magnification" => 1, "tilesize" => 32, "largesize" => 48
end

dep "prefs.disable-spaces-switch-on-activate", :template => "plist" do
  domain "NSGlobalDomain"
  values "AppleSpacesSwitchOnActivate" => 0
end

dep "prefs.disable-arrange-spaces-automatically", :template => "plist" do
  domain "com.apple.dock"
  values "mru-spaces" => 0
end

dep "prefs.enable-tap-to-click", :template => "plist" do
  domain "com.apple.driver.AppleBluetoothMultitouch.trackpad"
  values "Clicking" => 1
end

dep "prefs.safari-empty-new-tabs-and-windows", :template => "plist" do
  domain "com.apple.safari"
  values "NewTabBehavior" => 1, "NewWindowBehavior" => 1
end

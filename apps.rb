# apps.rb

def cask(name); dep name, :template => "icelab:cask"; end # Avoid repitition below

cask "gitup"
cask "reveal"
cask "dropbox"
dep "sublime-text3", :template => "icelab:cask" do requires "icelab:homebrew tap".with "caskroom/versions" end
cask "transmission"
cask "tunnelbear"

dep "carthage.bin" do installs "carthage" end
dep "xctool.bin" do installs "xctool" end
dep "mosh.bin" do installs "mobile-shell" end
dep "swiftgen.bin" do installs "swiftgen" end
dep "swiftlint.bin" do installs "swiftlint" end

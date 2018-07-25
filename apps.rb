dep "core apps" do
  requires "mac app store core apps"
  requires "homebrew cask core apps"
end

dep "bloated apps" do
  requires "core apps"
  requires "mac app store bloated apps"
  requires "homebrew cask bloated apps"
end

dep "mac app store core apps" do
  # Mac App Store apps I rely on for basic work
  requires "DaisyDisk.mas"
  requires "Kaleidoscope.mas"
  requires "Pastebot.mas"
  requires "PixelWinch.mas"
  requires "Soulver.mas"
end

dep "homebrew cask core apps" do
  # Apps I rely on for basic work
  requires "1password"
  requires "charles"
  requires "gitup"
  requires "gpg-suite"
  requires "visual-studio-code"
end

dep "mac app store bloated apps" do
  # Mac App Store apps that are nice to have
  requires "Keynote.mas"
  requires "Slack.mas"
  requires "Numbers.mas"
  requires "Pages.mas"
end

dep "homebrew cask bloated apps" do
  # Apps that are nice to have on systems that are not heavily constrained cpu/ram/battery
  requires "google-chrome"
  # requires "google-drive-file-stream"
  # requires "reveal"
  # requires "virtualbox"
end

# Apps installed from the Mac App Store
meta :mas do
  accepts_value_for :name, :basename
  accepts_value_for :id

  template {
    requires "mas.managed"

    def installed?
      # Extract app names from lines like "413857545 Divvy (1.5.1)"
      installed_ids = `mas list`.split("\n").map { |line|
        match = line.match(/^(?<id>\d+)\s(?<name>.*)?\s\((?<version>[\d\.]+)\)$/)
        match[:id]
      }

      installed_ids.include?(id)
    end

    met? {
      installed = false

      # `mas list` takes a little while to catch up to a freshly installed app.
      # Try a few times.
      5.times do |i|
        installed = true and break if installed?
        sleep i * 2
      end

      installed
    }

    meet {
      log_shell "Installing #{name} via Mac App Store", "mas install #{id}"
    }
  }
end

dep("Byword.mas") { id "420212497" }
dep("DaisyDisk.mas") { id "411643860" }
dep("1Blocker.mas") { id "1107421413" }
dep("Day One.mas") { id "1055511498" }
dep("Deckset.mas") { id "847496013" }
dep("Diptic.mas") { id "526546615" }
dep("Divvy.mas") { id "413857545" }
dep("FoldingText.mas") { id "540003654" }
dep("HTTP Client.mas") { id "418138339" }
dep("iA Writer.mas") { id "775737590" }
dep("iBooks Author.mas") { id "490152466" }
dep("Kaleidoscope.mas") { id "587512244" }
dep("Keynote.mas") { id "409183694" }
dep("Marked.mas") { id "448925439" }
dep("Numbers.mas") { id "409203825" }
dep("Pages.mas") { id "409201541" }
dep("Pathology.mas") { id "877848776" }
dep("Pastebot.mas") { id "1179623856" }
dep("PixelWinch.mas") { id "735066709" }
dep("PDFpen.mas") { id "403624960" }
dep("Pixelmator.mas") { id "407963104" }
dep("Reeder.mas") { id "880001334" }
dep("Shush.mas") { id "496437906" }
dep("Sip.mas") { id "507257563" }
dep("SiteSucker.mas") { id "442168834" }
dep("Soulver.mas") { id "413965349" }
dep("Slack.mas") { id "803453959" }
dep("Things3.mas") { id "904280696" }
dep("Tomato One.mas") { id "907364780" }
dep("Tweetbot.mas") { id "557168941" }
dep("Ulysses.mas") { id "623795237" }
dep("Wunderlist.mas") { id "410628904" }
dep("xScope.mas") { id "447661441" }
dep("Yoink.mas") { id "457622435" }

# Apps installed from homebrew cask
def cask(name); dep name, :template => "stripysock:cask"; end # Avoid repitition below

cask "1password"
cask "atext"
cask "caffeine"
cask "charles"
cask "cloak"
cask "dash"
cask "doxie"
cask "dropbox"
cask "firefox"
cask "flow"
cask "fluid"
cask "flux"
cask "gfxcardstatus"
cask "gitup"
cask "rowanj-gitx"
cask "glueprint"
cask "google-chrome"
cask "google-drive-file-stream"
cask "gpg-suite"
cask "hammerspoon"
cask "handbrake"
cask "hazel"
cask "imageoptim"
cask "iterm2"
cask "launchbar"
cask "licecap"
cask "muzzle"
cask "openemu"
cask "postico"
cask "reveal"
cask "slack"
cask "skype"
cask "superduper"
cask "taskpaper"
cask "tokens"
cask "transmission"
cask "transmit"
cask "vagrant"
cask "virtualbox"
cask "visual-studio-code"
cask "vlc"

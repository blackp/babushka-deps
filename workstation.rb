dep "workstation" do
  # Max OS X defaults
  requires "prefs.workstation"

  # Apps
  requires "dropbox"
  requires "reveal"
  requires "gitup"
  requires "sublime-text3"

  # homebrew
  requires "mosh.bin"
  requires "xctool.bin"
  requires "carthage.bin"

  # Sublime Text
  requires "GitGutter.subl_package"
  requires "MarkdownEditing.subl_package"
  requires "MarkdownPreview.subl_package"
  requires "PrettyJson.subl_package"
  requires "TrailingSpaces.subl_package"

end

dep "macbook" do
  requires "workstation"

  requires "prefs.small-screen"
end

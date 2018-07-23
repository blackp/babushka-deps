dep "has built example ios" do
  # By building an exampel iOS project, prove that we:
  #  - have bundler
  #  - have gone through first cocoapods install (takes ages to download repo)
  #  - can build with xcodebuild (appropriate "additional components" have been downloaded etc)

  requires "stripysock:repository".with :path => "~/.stripysock-example-ios",
                                    :url => "https://github.com/stripysock/stripysock-example-ios.git",
                                    :branch => "master"

  met? {
    # "~/. test existance of build folder?
  }

  meet {
    # "" run build.sh in the root folder of the example
  }

end

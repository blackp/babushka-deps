meta :code_extension do
  accepts_value_for :name, :basename

  template {
    requires "visual-studio-code"

    met? {
      shell("code --list-extensions").split("\n").grep(basename).any?
    }

    meet {
      shell! "code", "--install-extension", basename
    }
  }
end

extensions = %w[
  brofox86.theme-espresso-soda-light
  donjayamanne.githistory
  wmaurer.change-case
  ziyasal.vscode-open-in-github
].each do |ext|
  dep ext, :template => "code_extension"
end

dep "vscode extensions" do
  extensions.each do |ext|
    requires ext
  end
end

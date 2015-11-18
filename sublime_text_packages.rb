def subl(name, &block) dep name, {:template => "icelab:subl_package"}, &block end # Avoid repitition below

subl "CodeFormatter.subl_package" do
  source "https://github.com/akalongman/sublimetext-codeformatter"
end

subl "GitGutter.subl_package" do
  source "https://github.com/jisaacks/GitGutter"
end

subl "MarkdownEditing.subl_package" do
  source "https://github.com/SublimeText-Markdown/MarkdownEditing"
end

subl "MarkdownPreview.subl_package" do
  source "https://github.com/revolunet/sublimetext-markdown-preview"
end

subl "PrettyJson.subl_package" do
  source "https://github.com/dzhibas/SublimePrettyJson"
end

subl "Sublime-HTMLPrettify.subl_package" do
  source "https://github.com/victorporof/Sublime-HTMLPrettify"
end

subl "TrailingSpaces.subl_package" do
  source "https://github.com/SublimeText/TrailingSpaces"
end

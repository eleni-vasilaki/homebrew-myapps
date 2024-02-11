cask "tokentool" do
  version "2.2.1"
  sha256 "06f03c658eae6e368b462cfaf6d1bec82b9d2796d9e270b2546e4f7f4f587873"

  url "https://github.com/RPTools/TokenTool/releases/download/#{version}/TokenTool-#{version}.pkg", verified: "github.com/RPTools/TokenTool/"
  name "TokenTool"
  desc "Tool for creating customised tokens for virtual tabletop applications"
  homepage "https://rptools.net/toolbox/token-tool/"

  pkg "TokenTool-2.2.1.pkg"

  uninstall pkgutil: "net.rptools.tokentool",
            delete:  "/Applications/TokenTool.app"

  caveats <<~EOS
    TokenTool is not recognized by Apple as being from an "identified developer."
    To open TokenTool the first time, you may need to right-click (or control-click)
    the application and select "Open" from the context menu to bypass Gatekeeper.

    If macOS flags the PKG file as broken, this is a false positive because the
    application is not signed. Please refer to the TokenTool download page for more
    information on how to bypass this issue.
  EOS
end

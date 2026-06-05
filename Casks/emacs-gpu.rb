cask "emacs-gpu" do
  version "0.1.1"
  sha256 "8a57519780d9d62f5d30858165f163875e6ff7f3e5ba1d07a5115d651f61b96f"

  url "https://github.com/tanrax/emacs-gpu/releases/download/v#{version}/emacs-gpu-#{version}-macos-arm64.zip"
  name "Emacs GPU"
  desc "GNU Emacs with a native Metal GPU rendering backend"
  homepage "https://github.com/tanrax/emacs-gpu"

  depends_on arch: :arm64
  depends_on :macos

  app "Emacs.app", target: "Emacs GPU.app"

  zap trash: "~/Library/Saved Application State/org.gnu.Emacs.savedState"
end

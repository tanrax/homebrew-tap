cask "emacs-gpu" do
  version "0.1.0"
  sha256 "b2e4e3bc057604c0784045c487e0cd79db2418977138d116b3081ee553561b7d"

  url "https://github.com/tanrax/emacs-gpu/releases/download/v#{version}/emacs-gpu-#{version}-macos-arm64.zip"
  name "Emacs GPU"
  desc "GNU Emacs with a native Metal GPU rendering backend"
  homepage "https://github.com/tanrax/emacs-gpu"

  depends_on arch: :arm64
  depends_on :macos

  app "Emacs.app", target: "Emacs GPU.app"

  zap trash: "~/Library/Saved Application State/org.gnu.Emacs.savedState"
end

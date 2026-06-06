cask "emacs-gpu" do
  version "0.3.1"
  sha256 "d115348440eb0033855c44529a4ef72e0afd7fc803ec557c7bb05277927c8310"

  url "https://github.com/tanrax/emacs-gpu/releases/download/v#{version}/emacs-gpu-#{version}-macos-arm64.zip"
  name "Emacs GPU"
  desc "GNU Emacs with a native Metal GPU rendering backend"
  homepage "https://github.com/tanrax/emacs-gpu"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Emacs.app", target: "Emacs GPU.app"

  zap trash: "~/Library/Saved Application State/org.gnu.Emacs.savedState"
end

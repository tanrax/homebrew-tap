cask "emacs-gpu" do
  version "0.2.0"
  sha256 "0d7fe25b85b61bb56b560231613721da480375b664a742a5b8dcb6e4b97019b7"

  url "https://github.com/tanrax/emacs-gpu/releases/download/v#{version}/emacs-gpu-#{version}-macos-arm64.zip"
  name "Emacs GPU"
  desc "GNU Emacs with a native Metal GPU rendering backend"
  homepage "https://github.com/tanrax/emacs-gpu"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Emacs.app", target: "Emacs GPU.app"

  zap trash: "~/Library/Saved Application State/org.gnu.Emacs.savedState"
end

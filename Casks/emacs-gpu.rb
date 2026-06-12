cask "emacs-gpu" do
  version "0.4.2"
  sha256 "fae47337f675edaee9e312996d53876d06d78efc66badaaa5d3450ea71e445e0"

  url "https://github.com/tanrax/emacs-gpu/releases/download/v#{version}/emacs-gpu-#{version}-macos-arm64.zip"
  name "Emacs GPU"
  desc "GNU Emacs with a native Metal GPU rendering backend"
  homepage "https://github.com/tanrax/emacs-gpu"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Emacs.app", target: "Emacs GPU.app"

  zap trash: "~/Library/Saved Application State/org.gnu.Emacs.savedState"
end

class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.3.1/stageproof_0.3.1_darwin_arm64.tar.gz"
      sha256 "446902ba85389b7d913a88e78e60cffafc7de2d2078231a6df8506cb532c2004"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.3.1/stageproof_0.3.1_darwin_amd64.tar.gz"
      sha256 "73e17cf348a423632e9ff5139c855da153a87257265af8386e6a6eff9fbd7e7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.3.1/stageproof_0.3.1_linux_arm64.tar.gz"
      sha256 "987956ebaf7e9317fd3e270684bd4813c8f0d92969010bd0b2bea710a9eb3b91"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.3.1/stageproof_0.3.1_linux_amd64.tar.gz"
      sha256 "7ff9fb4755aa13244aab631a9d525f5d22f95b5a865c23d27a3dbb8973b122dd"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.3.1", shell_output("#{bin}/stageproof version")
  end
end

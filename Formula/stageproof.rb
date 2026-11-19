class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.3/stageproof_0.1.3_darwin_arm64.tar.gz"
      sha256 "7b2f6b18d3035a7250466ff5dd8dc76d7bb1db4a185d3a1868f0dedc6a5ffc34"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.3/stageproof_0.1.3_darwin_amd64.tar.gz"
      sha256 "a8850d51190272e596b2b0816cb2fa4ed610290f76f57b2b22fde71dfd1d0300"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.3/stageproof_0.1.3_linux_arm64.tar.gz"
      sha256 "83be72303a4e9459709544bacc8cd9f87ab7294680652e3d566a8424a84bb5a8"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.3/stageproof_0.1.3_linux_amd64.tar.gz"
      sha256 "eca212e75ac192fc88c5b42c71609c271e82b5c5bc0e6bea3800ea9f0256f022"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.3", shell_output("#{bin}/stageproof version")
  end
end

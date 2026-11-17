class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_darwin_arm64.tar.gz"
      sha256 "cc40aa4d6305e6c32104e1e0b6ac5efadf3f82b60c41c34044f7753755b20217"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_darwin_amd64.tar.gz"
      sha256 "8f2c24bd0975521ad13226101e380891123e7bc203201ef8bbc6d4a28d3a9ab6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_linux_arm64.tar.gz"
      sha256 "15f1148821d11b25304225098bfd2172af79ccceba5647823707d253e0ee70bc"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_linux_amd64.tar.gz"
      sha256 "ebabfb0495c5ff6533798012e63d4d6fdb73472816d3d2b88f44288cb5639ac5"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.0", shell_output("#{bin}/stageproof version")
  end
end

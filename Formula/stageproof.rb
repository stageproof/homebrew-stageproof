class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.2/stageproof_0.1.2_darwin_arm64.tar.gz"
      sha256 "1ef90fc83acb634511161c55d39bc4cda378c275154e3c44544b6346d5e726a9"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.2/stageproof_0.1.2_darwin_amd64.tar.gz"
      sha256 "5b9cbb3da0149082e32467d2cfc4bc943d24c3e3845408efe8ceb3fc1a49e31b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.2/stageproof_0.1.2_linux_arm64.tar.gz"
      sha256 "787ec518222fb783bea32631239454eb9d829575ff5b6f18fc8a140b6dcbe1c7"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.2/stageproof_0.1.2_linux_amd64.tar.gz"
      sha256 "16e7bafb57d82a195c6f015688e390fe011bb437344ebf8a89c4c6d1589a0217"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.2", shell_output("#{bin}/stageproof version")
  end
end

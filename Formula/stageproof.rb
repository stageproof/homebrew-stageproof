class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.5.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.4/stageproof_0.5.4_darwin_arm64.tar.gz"
      sha256 "b082e75546f3d12230292d40de5b76465d4b5e1cee6b5dcbc3a1dbec81d9d053"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.4/stageproof_0.5.4_darwin_amd64.tar.gz"
      sha256 "725e804cc7fbaed5cac0df27225a94e07a61f57c1df1f4f4c889b19f1c8551a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.4/stageproof_0.5.4_linux_arm64.tar.gz"
      sha256 "4e55b00858406d35062305d18b45ecf8abb5034e4280dd6f08cc1d7717c03bf5"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.4/stageproof_0.5.4_linux_amd64.tar.gz"
      sha256 "dfc4d17540a82253836ec5a4817814e404c711b5b2455433ea84eb9ddc88812b"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.5.4", shell_output("#{bin}/stageproof version")
  end
end

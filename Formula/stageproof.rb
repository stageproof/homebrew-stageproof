class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.7/stageproof_0.1.7_darwin_arm64.tar.gz"
      sha256 "c5112e4776b7120ce7290d83d8d3d11e8f998d3b5607fa7a858410745c41dbd1"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.7/stageproof_0.1.7_darwin_amd64.tar.gz"
      sha256 "d63bed8e355a939646aa3b837de7f2fc2021766a29f0bc2eb8c472563648c635"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.7/stageproof_0.1.7_linux_arm64.tar.gz"
      sha256 "84375e33069769786810939ed0cfd46e9bd1d191a0e5cd3b979ece431df8b886"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.7/stageproof_0.1.7_linux_amd64.tar.gz"
      sha256 "426c545e90e1b62400d82662bf7f24e8556f3823a25239fe02078fcdf6cdff35"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.7", shell_output("#{bin}/stageproof version")
  end
end

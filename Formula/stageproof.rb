class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_darwin_arm64.tar.gz"
      sha256 "82419a1ed2d5943df8fcb8127482cc57b0afad7fc15447025631251419944edf"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_darwin_amd64.tar.gz"
      sha256 "aaecb5662fd7758ce8574dfdb463a9ffb29c2609fd78c4d67dcfd4a156bf6262"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_linux_arm64.tar.gz"
      sha256 "9b25c92d78b360caea02edc9cf614ab92bb9bfe3ce585cd0f0cb7c51fd9dece8"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_linux_amd64.tar.gz"
      sha256 "184b857417f18a2c2bf8c58f1e947991ef74e6ee9b7693a5213c0d0a23031e57"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.0", shell_output("#{bin}/stageproof version")
  end
end

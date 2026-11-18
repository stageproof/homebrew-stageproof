class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.1/stageproof_0.1.1_darwin_arm64.tar.gz"
      sha256 "85a4fec4ded58ad7574a30c12a7d19ef47785a7c127203b8f8c0be56a7f5a898"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.1/stageproof_0.1.1_darwin_amd64.tar.gz"
      sha256 "3a9517436acf8370267a02465dd18e61b715686c33d748fccc8135678aee7d0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.1/stageproof_0.1.1_linux_arm64.tar.gz"
      sha256 "7f6793078352ad4be6975149d1c81be5a64a80dbfd60f5bb7448069d8f2bfbd2"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.1/stageproof_0.1.1_linux_amd64.tar.gz"
      sha256 "63e8d44e010ef5dd2cf10429cf35689cbe83debea90a8818f42a2d5311a15d4b"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.1", shell_output("#{bin}/stageproof version")
  end
end

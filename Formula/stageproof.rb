class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.2.0/stageproof_0.2.0_darwin_arm64.tar.gz"
      sha256 "0e1a8c958a3578c9eafb2b7d11da20cf5680ec8a36ea414a42552d667febe68f"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.2.0/stageproof_0.2.0_darwin_amd64.tar.gz"
      sha256 "a2cd5a05d69e413a285cf00dab8715a657c1887031578b0597c998c9216fcb75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.2.0/stageproof_0.2.0_linux_arm64.tar.gz"
      sha256 "2cdd0cbb2b6d3e425e1c411c22bd2bd022c8f7cec945494fe6f6fed1793bdb63"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.2.0/stageproof_0.2.0_linux_amd64.tar.gz"
      sha256 "0eb3fcf1a21e4921896ab3e561de1c51615d89c9d18198e823e8c7fb4b83ceca"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.2.0", shell_output("#{bin}/stageproof version")
  end
end

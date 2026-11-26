class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.2/stageproof_0.5.2_darwin_arm64.tar.gz"
      sha256 "7e1350eda8129261bc6ce099a12412b7f3dc3419e80f6744c1f061fd4a7da49c"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.2/stageproof_0.5.2_darwin_amd64.tar.gz"
      sha256 "444a79d1c263985f7e1a5cfc2142252ffee80552ce77478b9ae601e43b1aa16f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.2/stageproof_0.5.2_linux_arm64.tar.gz"
      sha256 "600049941e9b4c5ccc4c7698b17923e3f8993f30de600250557dc5a5d608b8a8"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.2/stageproof_0.5.2_linux_amd64.tar.gz"
      sha256 "7f40de5f6a9a62a6721b2c750f1752975cfceffe4eb6e83041892c56cf39ae0c"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.5.2", shell_output("#{bin}/stageproof version")
  end
end

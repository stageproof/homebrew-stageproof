class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.1/stageproof_0.5.1_darwin_arm64.tar.gz"
      sha256 "27c38f3d76d3468cbf05748e8f478301cbdd630a90868271ed05b579a57385d3"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.1/stageproof_0.5.1_darwin_amd64.tar.gz"
      sha256 "d6a0a003e9dc94015452729d28265f7dc951e5ea0384a5435e44d6e1cdb55ae2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.1/stageproof_0.5.1_linux_arm64.tar.gz"
      sha256 "6659b54384fd756bc826dbcb0b95602dfce4e6e5aaba7d0c01d37606e2da0f75"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.1/stageproof_0.5.1_linux_amd64.tar.gz"
      sha256 "1a1067487ce5d33a267341348ba306724ef368a835c1db6798f9563753fce42f"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.5.1", shell_output("#{bin}/stageproof version")
  end
end

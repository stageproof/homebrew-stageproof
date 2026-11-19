class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.4/stageproof_0.1.4_darwin_arm64.tar.gz"
      sha256 "e633ba750fd24ce968eec61236d3ce18c3b3667c201089f19accbffc2bc75bb4"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.4/stageproof_0.1.4_darwin_amd64.tar.gz"
      sha256 "4bf2ae606ebf5afac33654c31f1ed6a198e9ac3d832eebda565ab01a77170887"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.4/stageproof_0.1.4_linux_arm64.tar.gz"
      sha256 "36ba1966da0b5150687772b23f468aa9783ed8d3f01fe08a1dd23663fa7b5769"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.4/stageproof_0.1.4_linux_amd64.tar.gz"
      sha256 "27a84f279e52e5f02e4b2400e5daf635327587d93e429a5feff81e368f16e1d5"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.4", shell_output("#{bin}/stageproof version")
  end
end

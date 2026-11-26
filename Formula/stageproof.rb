class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.3/stageproof_0.5.3_darwin_arm64.tar.gz"
      sha256 "2a1d96c841269451f85358d7f3c7c6b0aa39a3e63ad09020e04167650df05e94"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.3/stageproof_0.5.3_darwin_amd64.tar.gz"
      sha256 "79ac8291e891835abab09dbfb07f480f9fc9b9c16f85375fb80d422467599e92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.3/stageproof_0.5.3_linux_arm64.tar.gz"
      sha256 "c6be3fcfcb3018750c9e65aa97630f4fe3655721ae136567b917404761558e84"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.3/stageproof_0.5.3_linux_amd64.tar.gz"
      sha256 "4acd4493c3ad04593a0f9e55be7992cfeb5aa30b3241f1f6318d7bad176e44b6"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.5.3", shell_output("#{bin}/stageproof version")
  end
end

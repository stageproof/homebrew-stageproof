class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.6/stageproof_0.1.6_darwin_arm64.tar.gz"
      sha256 "8c40644d9dd919a0e1618204434cc4b56efd18e6962b4aff791d6b45eb740ecd"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.6/stageproof_0.1.6_darwin_amd64.tar.gz"
      sha256 "211277f7565fefabe423de32602cf44b94ce4eec68c879da47cc4d8a662abec4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.6/stageproof_0.1.6_linux_arm64.tar.gz"
      sha256 "6a803d2646edb0ebe5a3384147d763d84e642cc570860f1b9face7a09e97021d"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.6/stageproof_0.1.6_linux_amd64.tar.gz"
      sha256 "eddddc88465e7401d389eebbfb34a47b9e8b4edd9a745c87f7c23bcc5f59880f"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.6", shell_output("#{bin}/stageproof version")
  end
end

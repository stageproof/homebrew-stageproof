class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.7/stageproof_0.1.7_darwin_arm64.tar.gz"
      sha256 "0063e5eb27458c53c00a34e9190d75366471e87e8331f2862a9e9fe0256f9366"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.7/stageproof_0.1.7_darwin_amd64.tar.gz"
      sha256 "1b369f4d402a264b84502005225bdd6ae765fee0bf65f8be245ee1b2433f9a5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.7/stageproof_0.1.7_linux_arm64.tar.gz"
      sha256 "49af562ba31d61e90d307e790e6d9abe4aec501f290979247f98e588b7523dd1"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.7/stageproof_0.1.7_linux_amd64.tar.gz"
      sha256 "e583ef6140bb8b83702dcca6c8b1f9e5a54e266180f178e9b2112d2e89a321ce"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.7", shell_output("#{bin}/stageproof version")
  end
end

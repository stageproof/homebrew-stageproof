class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.8/stageproof_0.1.8_darwin_arm64.tar.gz"
      sha256 "ec405c92f96ede997624b3e9b97522246cdad09a911b05e27cd37827dddc30fd"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.8/stageproof_0.1.8_darwin_amd64.tar.gz"
      sha256 "27e89b9770b4ee03d652a454a83213c14af44444ac7351c889279fe05008e078"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.8/stageproof_0.1.8_linux_arm64.tar.gz"
      sha256 "18ddb39c42810be23c14045bbf282d38205697dd0f6aa24e71729881c33c169f"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.8/stageproof_0.1.8_linux_amd64.tar.gz"
      sha256 "49ac0b760b9473fdcb043c4e9f73be594f29edba1b1c5301cc1a6f78a215606f"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.8", shell_output("#{bin}/stageproof version")
  end
end

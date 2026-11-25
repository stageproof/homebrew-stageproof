class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.4.0/stageproof_0.4.0_darwin_arm64.tar.gz"
      sha256 "611c4bc123aec9ee345e006d1bd8272ea64e0ce0959b3fc75dbb1d61428f0fc7"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.4.0/stageproof_0.4.0_darwin_amd64.tar.gz"
      sha256 "dedaca132b5164b80c96681c3474c02f4644f4afbc7c059950170e2ccbd79ab2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.4.0/stageproof_0.4.0_linux_arm64.tar.gz"
      sha256 "ff0691be51e23bd02b01ffe7a6647421c368131ce7849310637f149f856c103e"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.4.0/stageproof_0.4.0_linux_amd64.tar.gz"
      sha256 "08606de4b2bef53398b9edb69aeb80248221e47b49cafd0f920d551d608524b1"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.4.0", shell_output("#{bin}/stageproof version")
  end
end

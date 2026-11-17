class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_darwin_arm64.tar.gz"
      sha256 "fbf5a9f2cc04b39b96d4c7d5776c72180b9d53d16de7316993ec20b2980369ef"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_darwin_amd64.tar.gz"
      sha256 "493f6744391325f81051e5d79f930389d645b49f2ff48fb48da3a60f20d7eeec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_linux_arm64.tar.gz"
      sha256 "4ab80d770900b80511f84001772e19baa5c176a0d9add01d701b7a6cd564c410"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.1.0/stageproof_0.1.0_linux_amd64.tar.gz"
      sha256 "94b62a4a6f4dc31a8f4f7ffc4353cdb78dff72b51cb592189447f14207af7187"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.1.0", shell_output("#{bin}/stageproof version")
  end
end

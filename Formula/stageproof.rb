class Stageproof < Formula
  desc "Check a Helm chart upgrade before you merge it"
  homepage "https://github.com/stageproof/stageproof"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.0/stageproof_0.5.0_darwin_arm64.tar.gz"
      sha256 "2d9b1b3264efaeb82acf6cdd2c52673af7d965606dcf9199bcd1ec1463888868"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.0/stageproof_0.5.0_darwin_amd64.tar.gz"
      sha256 "fdc30934e0c2c0849f1d4a3fbe2ff39ab8338669f5e0cb59898884e2342b035e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.0/stageproof_0.5.0_linux_arm64.tar.gz"
      sha256 "7f03e216e8950ee2287f100c901790303ea8284d6e794e755803d88730c277fb"
    else
      url "https://github.com/stageproof/stageproof/releases/download/v0.5.0/stageproof_0.5.0_linux_amd64.tar.gz"
      sha256 "4fa6b945b05386c9a3cfc5f9bea832668f0308df5f800ad1249a46f449f5279a"
    end
  end

  def install
    bin.install "stageproof"
  end

  test do
    assert_match "v0.5.0", shell_output("#{bin}/stageproof version")
  end
end

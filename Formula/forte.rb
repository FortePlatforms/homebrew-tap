class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-arm64"
    sha256 "d43d7ceb08c3b8369fb10656e32ec5320a2ecf7e2605457e54b1e8dadd69a670"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-x64"
    sha256 "807dcafaca9d4c52b080df7ef08f2625de8599ab57e20a6cc4d76f4c874b2875"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-arm64"
    sha256 "ad95b3026fed3613d9a701b2a935b31ce0b4a9ac2c9bec515d00d932052e533a"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-x64"
    sha256 "1be379864957a77242fd9c8936491a9fc42b310cb025e035b217cb5b95fdef20"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "forte-darwin-arm64" => "forte"
    elsif OS.mac?
      bin.install "forte-darwin-x64" => "forte"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "forte-linux-arm64" => "forte"
    elsif OS.linux?
      bin.install "forte-linux-x64" => "forte"
    end
  end

  test do
    system "\#{bin}/forte", "--version"
  end
end

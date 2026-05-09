class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-arm64"
    sha256 "bfc3e594c4761c1c94f3c37903ad4604f5694ade69cab73a6c0fe9ce4046be3b"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-x64"
    sha256 "eafe8bbe517abe6f1e82713fc2e196ae0f9fe9c3cde90a8b22e5d2c98849ca54"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-arm64"
    sha256 "0b8b4aabc8d38ba54b614298f815425594adae3f86083a640e74ef5d13d17405"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-x64"
    sha256 "0bcce9cb7d6044cea311b0e73a2eff87815eb52c2f2d46b969edaadae87bcd90"
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

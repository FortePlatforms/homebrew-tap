class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-darwin-arm64"
    sha256 "763deef01f5d315865d413acb6a352cabae37d1176a6be45589ab91ba99fdc70"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-darwin-x64"
    sha256 "a281ec6eb0b61150a3af7b668b37c7c963e2ba930c6b0c224f68756b27838b79"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-linux-arm64"
    sha256 "c523fbc57764c011abdb9261a859f2b27af3e06f9ec7feda8635c5370bd633f4"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-linux-x64"
    sha256 "1f2efe94f2fae172097dc8ef977eeeeb8f9baebedb7177e143f83253d4206b80"
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

class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-arm64"
    sha256 "705d59bc7a93a7bd9a58ddbfe9f4d29915536edfa2e35e46d89a66ee349fdcc2"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-x64"
    sha256 "a6aac24a25f7c56713b50937f06e32a38bd3edae751d6fd8643323a6d0523676"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-arm64"
    sha256 "850445512fb92f581bccf96afdaa3ebadd11f0c0fb40f21b47590842bf471e76"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-x64"
    sha256 "6e8463115fbc6b2a7f8c0a5053b5b6e2256bf57b6f485ee41c4f1f9b3d86cb29"
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

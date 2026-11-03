class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-arm64"
    sha256 "4d6fc223bfe86426e080a221893f664f4a2dc3fda0d8ebee4b552e24b3002640"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-x64"
    sha256 "8f84042043b2de00f25c439594ce6ae516229626fabcf4e05bee19079ae3cdc8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-arm64"
    sha256 "61731275278d3d68ce4949a11750d1ef95ccff0c69707b43d40416ba79109a46"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-x64"
    sha256 "661657ba2b414cec73cb864cab0e2d1d8b130b950ef0cd72b6fe3e8df60f825c"
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

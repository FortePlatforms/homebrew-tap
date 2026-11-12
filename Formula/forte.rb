class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-arm64"
    sha256 "301fc5e2e16b6625d3c50660944ae0f69a4e908d491855af0f75dc00cdf99e05"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-x64"
    sha256 "45fc5417761b27d7b2e109a0d88215d225dd68aee7a29eca6641e2488d651abb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-arm64"
    sha256 "111cb14d2a65cf4ff80d3bd5ccc191987f675c75ea45ec59c63ef84c1a0f8186"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-x64"
    sha256 "474a5b606d650181f174073d5977ff9ff817fb2e735f064c3cf414c4d3077a9c"
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

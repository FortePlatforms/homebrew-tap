class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-arm64"
    sha256 "2e94b00aae24bdd3e208669a2c91a28c761985c4b97eb154f5876edf214a21cc"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-x64"
    sha256 "44a46431151d20daf420f694fbeb40e279f99407973a52c6f8b17aa815a8398b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-arm64"
    sha256 "8860ebaa70d9b6127b6661ebe66ded653186c9c3ed9f6e9ec69e435a9bc40e14"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-x64"
    sha256 "bca6b5a312a628fb470cc0f768fee45c10d8b008b373c82ef0fbcb17435507ca"
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

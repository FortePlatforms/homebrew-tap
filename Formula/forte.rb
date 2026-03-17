class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-darwin-arm64"
    sha256 "5a76827b76e9fd48237616cc6a5304e5a342b18dddb0467b89a5ae78a246d619"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-darwin-x64"
    sha256 "68c0f5bc3e9078a90a74fedabc1a1e96c9ec934077603a8ff0667e4e7103fb1b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-linux-arm64"
    sha256 "bceda420e74119edd0f72d31e6aa74105eacc0656e7a3af3fd77ac1ccf5980a4"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-linux-x64"
    sha256 "58baf979ceb94581b4fd87f3b9fb50b8aae895bd9a0c9308917326dab1e16229"
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

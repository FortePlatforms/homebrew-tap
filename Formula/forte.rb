class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-arm64"
    sha256 "15076af57cc7d9f8feea72ae4413d603d24ecd17f7f4f316ab0baa235969340f"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-x64"
    sha256 "9e2521e9c959f2abdb7ab635843feb81e688b374eedaeea6b9d6779232c08949"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-arm64"
    sha256 "1de3467ae4b64b11e29c61c1bfda64d2688ab25390c3df4637f0ea012c705eb2"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-x64"
    sha256 "377549a5561949d224ff89cd55985985dc01cb9baa315d2690168bb9d2a40d57"
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

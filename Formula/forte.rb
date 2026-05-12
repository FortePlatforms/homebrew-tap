class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-arm64"
    sha256 "c9adb71e7bd8de3f43f23f0aa57a36247ad755cb31ee758998e1a2db8f44283e"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-x64"
    sha256 "6c1fa796f8d2d8af62202dccc817ba3545dd2cc6c261914b213a5b92057be1bc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-arm64"
    sha256 "7da27f3063442972c6a3c75ae16ba5146655899635cad458418b668a59576d1b"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-x64"
    sha256 "bb7e7945fcf305a5cfd5dd296e121ee8870bcedbe55d083bf293e2663ab799e6"
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

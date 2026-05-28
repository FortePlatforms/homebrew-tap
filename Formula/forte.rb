class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-arm64"
    sha256 "ea8c05cfb13284eabbaec69004ef4a591984c54712471f69315a1311e0bfd3a3"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-x64"
    sha256 "35d0cac9359b8b922f6910e809dab2af74d21a4892dd8aa872f0d178fa03fed6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-arm64"
    sha256 "a3ce5f467d4fe6238e4e4cb5f8c6af78c52c5b9c9d7c82ccd213f7f83095a18f"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-x64"
    sha256 "a7238f23e1aaf5b86873f477bd864ffca546ab76b8f10ef7c926c11ab20fe5db"
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

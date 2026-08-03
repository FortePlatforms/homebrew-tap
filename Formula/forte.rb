class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-arm64"
    sha256 "45ba2f14d94b87d81e721c84a96111bc4cdc3827826dca8585e3b01757f31010"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-x64"
    sha256 "b59069ebad4be87c170b8bdc932f12e632d37c3ec5afae541c5f6f56aa0750ca"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-arm64"
    sha256 "4e0d4aa1184c39764290d784eb72983f96afcc6734e696f9d15679bc98bbd9f8"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-x64"
    sha256 "3926ad1a9a0296ed085e7891c0cace1e704c6596121495b67eac53ad3a1656c3"
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

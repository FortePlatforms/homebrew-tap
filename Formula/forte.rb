class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-arm64"
    sha256 "aacbe0314c873832661ecb0a9ab1631b2802e2e83f293b7e1483f447f297af9b"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-x64"
    sha256 "a238bea5538bc41e64c3db976b3c6712f878a90cb0c70e84152d8b8c87f5e134"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-arm64"
    sha256 "1f14c231b23f9240f999975a45d71f7d9539157a7b78d6fa475006fb0319109a"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-x64"
    sha256 "02b7b4c1f1c6d8a01beae31a9d8a0ae444b4373cdab113422c50f07238c75f3b"
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

class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-arm64"
    sha256 "888bc7a0b256d79d6074408d5f5f49eed308ca9cf840fd865f8f19c32266671b"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-darwin-x64"
    sha256 "f10f71f8246aa1a7e0ff46f7042372a1c03bc3ab3db2ef413b21766a5bc343df"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-arm64"
    sha256 "3fdf32798a732d8c75814d376c38b18a174dfc3e0b82906faa01f9cda839cfad"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.6/forte-linux-x64"
    sha256 "ba3cb0e318b1ff58cc21e71adcd42b48550a8a7097986dafa016a5cc0f37f7ea"
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

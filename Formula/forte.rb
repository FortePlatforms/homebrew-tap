class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.2/forte-darwin-arm64"
    sha256 "440ab7a2bdb878c74855a131d04fcae77bbecb74be22d5a9b051eb29b2001e38"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.2/forte-darwin-x64"
    sha256 "e0e8e408dd9a5cac19215559ac59168fe37059602ecf65eac9ef6aac1a287c35"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.2/forte-linux-arm64"
    sha256 "ddf814befe16a1bcb2bed385ec3fd538a5d4e9e161f467c7005f7fb3586173e2"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.2/forte-linux-x64"
    sha256 "ac84426f7ddff875d157b52e439b605de929d79d8fefc0580451741db5aab485"
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

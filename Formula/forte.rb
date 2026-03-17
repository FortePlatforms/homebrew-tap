class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.2/forte-darwin-arm64"
    sha256 "674a5009714264b0590ed0999690dfdc8ea6e74c4e976ac3ad80a956577959fd"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.2/forte-darwin-x64"
    sha256 "8fa21dfebf198abddc06e1fbd48ffcc3b3c3cdf96b2468370a578bb999d081e8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.2/forte-linux-arm64"
    sha256 "171394c423d15961c9556e2c4de891abcf362a80f93e51fafb9ed86488cc3520"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.2/forte-linux-x64"
    sha256 "eeee09bd42ec9e1afedb984b9e774caa775d4a18f518c8fd7058b3369b5976e9"
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

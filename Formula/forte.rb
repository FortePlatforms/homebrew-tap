class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-arm64"
    sha256 "b2168a11832642cf2d0f7a73c6f8edf3a8fd6a8a912e590fba36779870115917"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-darwin-x64"
    sha256 "3b10529e1996b7f5f333e815e470b9bac4490f286374cfb0b62c16f4197f617e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-arm64"
    sha256 "d52565a880fdeb96e52afaccadc874e542df2884d0ebd0d01cc4fa1376226ef0"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.4/forte-linux-x64"
    sha256 "c3c47f0912acb248a55fcb3b44f77244b7c54c3e7346a932448505f156fd8f59"
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

class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-arm64"
    sha256 "41d071a81d2a6d82e0490ca9c1fc4dd5a85261a5878b04a0eb9206c35b7aa68f"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-x64"
    sha256 "31ac1cb0fe814529676373cdb0dffa77ef949a20a0f4f362ef11f1e30bfd7f77"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-arm64"
    sha256 "3ccd20d6258c04bd560a5051b83a5bff822384437096b58728ae2a93a9412843"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-x64"
    sha256 "6b1cd6be0fde254f1e48423f3e1d37ada5d5e1339db523489e6f291648ebff02"
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

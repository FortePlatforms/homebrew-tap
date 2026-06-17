class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-arm64"
    sha256 "ee0e905da3af1b01a015339ff826f1ccaa14b6d6f37c9912885ca5011880f9f3"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-x64"
    sha256 "b557371325d4b786f313eafde027181d55d7f16b01759c457fe58c4b6e12b407"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-arm64"
    sha256 "5c2349ccb499b0f610a9c7a13b61ec11ca8aef910b25303378b6f626666f3f49"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-x64"
    sha256 "eb9a814d5147d68761c86a334eff4db17c26246caf61e0765a07e35087865c91"
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

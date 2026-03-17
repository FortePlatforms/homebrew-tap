class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-darwin-arm64"
    sha256 "fdb59a2ccd310eeac2f93af43eb0ecca2f32d4d4161c7d50fa44e93e7add9ab3"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-darwin-x64"
    sha256 "ee10798dfbbd96a7510a3ab56326fb5b0dd5288b229ba5e0bb4bc9684208caa5"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.1/forte-linux-x64"
    sha256 "b7aaabab65df7fda05abb77afdb0aff134f53b27179e5a1a31cdc95ab8b850b7"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "forte-darwin-arm64" => "forte"
    elsif OS.mac?
      bin.install "forte-darwin-x64" => "forte"
    elsif OS.linux?
      bin.install "forte-linux-x64" => "forte"
    end
  end

  test do
    system "\#{bin}/forte", "--version"
  end
end

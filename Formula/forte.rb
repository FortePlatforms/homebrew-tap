class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-arm64"
    sha256 "217196ab348445470f95a40ef42c7342a1ab6b59a4e914e9f4fb74c69334c9d9"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-x64"
    sha256 "ecce84302222e34d8cc06f2c36c60dd1802e96d270197e51008e24bfd5083554"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-arm64"
    sha256 "dafb235dd87c78b4c4034f6b5d9681a4529b0207777d5ca4a341bdca4f46798b"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-x64"
    sha256 "d72bf7cf5a306826d19e86d298f0ec69f12d7482829e16ce85e7d5a7fd9b003c"
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

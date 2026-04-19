class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-arm64"
    sha256 "417f28ca4a79a511b6b49998de2e564a45c13a718863ae1670cef692f02991db"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-x64"
    sha256 "d83f8b1f904f74c7a860c9f02489f797b920022578d2815f4e77a4e78c849048"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-arm64"
    sha256 "a335a6172691e034f84e6ba69851a90eb0ea0a7e3896f92eeb85e2e05aa0858f"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-x64"
    sha256 "c4bb1cf21556db5359b7c8a039bfc0829e8b1a7c618a75550e0d9e00f7f6d16e"
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

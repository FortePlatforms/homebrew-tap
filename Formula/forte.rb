class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-arm64"
    sha256 "9d719774d65e86ce09c67abad6016b7416bff691c3177ad6ae045cc2a90d3a40"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-darwin-x64"
    sha256 "e0bdb5e727fc6dd637d42bfa1d8cf19bd75313feed8b3ac2f9b643b58396688f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-arm64"
    sha256 "3c622a7098d90b02bbaeaa29d61d9ddbd12a8b83c03bd40514d0e2e99ebd3305"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.3/forte-linux-x64"
    sha256 "71ea5dd89f79105a1f61c867efad83606c86655c542ccc204578a9f681442e50"
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

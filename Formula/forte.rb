class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-arm64"
    sha256 "b9cb1f0d31e857cc045cc23f850e702d4f155aa41aa8e43e08ccf5b9b84c9248"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-x64"
    sha256 "860b61189848fc3476fc205e955b7477e0ae4670226ea6e5a8352395a7f2e3a9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-arm64"
    sha256 "b8d22a68002091ad5bad08a011b03b7990117321467904c70e869332c380874d"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-x64"
    sha256 "ef073233e5dbce397017c9a4959440f133b6493e45f253c13980f9c713db1912"
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

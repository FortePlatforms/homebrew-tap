class Forte < Formula
  desc "Forte CLI"
  homepage "https://github.com/FortePlatforms"
  version "0.0.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-arm64"
    sha256 "d874586c2d13cdf8231c4ba08e66ff198057556db6b492fdb6f02467d587b0d8"
  elsif OS.mac?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-darwin-x64"
    sha256 "955b0e35bbd19e63f25f5fcf769c93b023298ae4db2b5afd2af9f33488c399c2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-arm64"
    sha256 "aa7a1b1e3ed2b8b104aaf434230dcb58d760d56e713ba0fa4e472a4970559acc"
  elsif OS.linux?
    url "https://github.com/FortePlatforms/homebrew-tap/releases/download/v0.0.5/forte-linux-x64"
    sha256 "20d675af0dadb0ea1e530f6755a3f153e9d344b4026be8fabc9d1614cb0bbe86"
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

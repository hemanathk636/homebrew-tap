class Secretguard < Formula
  desc "Sub-millisecond terminal secret and privacy guard for developers and AI agents"
  homepage "https://github.com/hemanathk636/secretguard"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.7/secretguard-aarch64-apple-darwin.tar.gz"
      sha256 "efa7f07663bf3d7312fd5e24189ddf8e93b2635ceddfa6f75987c877bc6eff72"
    else
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.7/secretguard-x86_64-apple-darwin.tar.gz"
      sha256 "6237bca3710b98b88382daff24d8b8e916c2423b784745c5c3ef81db03686220"
    end
  end

  on_linux do
    url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.7/secretguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e1043eb7905f63f4e5e3a7d5aaa0cb1f4edb0e17481ab507f82871a84e82c6b8"
  end

  def install
    bin.install "secretguard"
  end

  test do
    system "#{bin}/secretguard", "check", "git status"
  end
end

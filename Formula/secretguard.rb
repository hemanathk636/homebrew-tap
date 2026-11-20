class Secretguard < Formula
  desc "Sub-millisecond terminal secret and privacy guard for developers and AI agents"
  homepage "https://github.com/hemanathk636/secretguard"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.4/secretguard-aarch64-apple-darwin.tar.gz"
      sha256 "7fbc4ccf1502177af8a957b1ba0fbeeab449af445b7ca66cf9ded65064f8c649"
    else
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.4/secretguard-x86_64-apple-darwin.tar.gz"
      sha256 "79646ac2a1ff7232c2b0caff947eafd834c88f46add8c27ff668b467f72e86b2"
    end
  end

  on_linux do
    url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.4/secretguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7edca461c5dcda1a2b3fabba6bdc6418df0aa45ff9e83cbadcc318988b1a2d46"
  end

  def install
    bin.install "secretguard"
  end

  test do
    system "#{bin}/secretguard", "check", "git status"
  end
end

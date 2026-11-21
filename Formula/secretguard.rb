class Secretguard < Formula
  desc "Sub-millisecond terminal secret and privacy guard for developers and AI agents"
  homepage "https://github.com/hemanathk636/secretguard"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.3.0/secretguard-aarch64-apple-darwin.tar.gz"
      sha256 "32ba09d5d0f01a986ee2a582eabe4e37b3bf10524369799052a93573a7f7bd2a"
    else
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.3.0/secretguard-x86_64-apple-darwin.tar.gz"
      sha256 "de05d4ac91f3bbd665b2e7e52edcd4114323d3c2ff64b242594557630b0d4eea"
    end
  end

  on_linux do
    url "https://github.com/hemanathk636/secretguard/releases/download/v0.3.0/secretguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4b62468cb43abaa849befdc53da3d11011bf0106bef492726c70f5989b7addba"
  end

  def install
    bin.install "secretguard"
  end

  test do
    system "#{bin}/secretguard", "check", "git status"
  end
end

class Secretguard < Formula
  desc "Sub-millisecond terminal secret and privacy guard for developers and AI agents"
  homepage "https://github.com/hemanathk636/secretguard"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.3/secretguard-aarch64-apple-darwin.tar.gz"
      sha256 "8e6b7ae050826e2a0008333d6d44664ee4015b25bdbb925ecc88f09af2295d8c"
    else
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.3/secretguard-x86_64-apple-darwin.tar.gz"
      sha256 "cb5164cf4c9eea86e6b274c3bdb660796e1adf968883e1b51ff3061dfbc99b45"
    end
  end

  on_linux do
    url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.3/secretguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "48ef51754c930e78bee11a8baca0df8c18b18603dc2aab9b1dcfa8c06f9ab154"
  end

  def install
    bin.install "secretguard"
  end

  test do
    system "#{bin}/secretguard", "check", "git status"
  end
end

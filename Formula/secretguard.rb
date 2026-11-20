class Secretguard < Formula
  desc "Sub-millisecond terminal secret and privacy guard for developers and AI agents"
  homepage "https://github.com/hemanathk636/secretguard"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.2.0/secretguard-aarch64-apple-darwin.tar.gz"
      sha256 "aa6812d1c65e07faffaec97538a8477cd8a49329ad309be43bda34b6e49b432d"
    else
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.2.0/secretguard-x86_64-apple-darwin.tar.gz"
      sha256 "af4d7e42557a79da2595400eb285180f37ab4054f6a6762cfb0a44d0da9db08d"
    end
  end

  on_linux do
    url "https://github.com/hemanathk636/secretguard/releases/download/v0.2.0/secretguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "46513cc912249df7b65df8b03af86a5aace4f51653e925701e0edf55b25686c5"
  end

  def install
    bin.install "secretguard"
  end

  test do
    system "#{bin}/secretguard", "check", "git status"
  end
end

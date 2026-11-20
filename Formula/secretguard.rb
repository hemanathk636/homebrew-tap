class Secretguard < Formula
  desc "Sub-millisecond terminal secret and privacy guard for developers and AI agents"
  homepage "https://github.com/hemanathk636/secretguard"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.6/secretguard-aarch64-apple-darwin.tar.gz"
      sha256 "f63f06efabc8e8784092741fd24bb456acdeb495bc91e2daed17acc4e11049c0"
    else
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.6/secretguard-x86_64-apple-darwin.tar.gz"
      sha256 "faa1df005a71a5d7d8fe7f5e3bdd733463fc648c99c76d0c1619930af74d1dfe"
    end
  end

  on_linux do
    url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.6/secretguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "233987b6a311ae8ba7708d97aec31deb20aa71c6477a5cefdb3de1a81ca37e24"
  end

  def install
    bin.install "secretguard"
  end

  test do
    system "#{bin}/secretguard", "check", "git status"
  end
end

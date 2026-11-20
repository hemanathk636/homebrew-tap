class Secretguard < Formula
  desc "Sub-millisecond terminal secret and privacy guard for developers and AI agents"
  homepage "https://github.com/hemanathk636/secretguard"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.5/secretguard-aarch64-apple-darwin.tar.gz"
      sha256 "11284c413354e3f5a427c8df330747de6347241f064ae6b14c361520672cfd98"
    else
      url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.5/secretguard-x86_64-apple-darwin.tar.gz"
      sha256 "5084a087eb2d67026d45bd511749e90082af49da3b7ea52344108b9cacb3e75d"
    end
  end

  on_linux do
    url "https://github.com/hemanathk636/secretguard/releases/download/v0.1.5/secretguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "874fc26cf022015950d4c109f0f8a9ac29d0cd07a0a909ea36cd27fd369f72e9"
  end

  def install
    bin.install "secretguard"
  end

  test do
    system "#{bin}/secretguard", "check", "git status"
  end
end

class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.4/codineer-v0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "7d0f23099e9aa08305680150d78b38cdd9831f2548eb661b3f403273ffbb7115"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.4/codineer-v0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "6ce5d7fc3cfa3f3e68d7a084d56289e082fcec20a9f67bf85b89891d642e36a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.4/codineer-v0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1bf02fcd3819614fb6fdc043ef869b3558bb5c9e9287fddcba160fc31255f576"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.4/codineer-v0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c55f90757aa15c9774ff9b4b3384c5b06fea07fec80108f2700d4b7264a539b3"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

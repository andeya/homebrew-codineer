class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/latest/download/codineer-latest-aarch64-apple-darwin.tar.gz"
    else
      url "https://github.com/andeya/codineer/releases/latest/download/codineer-latest-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/latest/download/codineer-latest-aarch64-unknown-linux-gnu.tar.gz"
    else
      url "https://github.com/andeya/codineer/releases/latest/download/codineer-latest-x86_64-unknown-linux-gnu.tar.gz"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

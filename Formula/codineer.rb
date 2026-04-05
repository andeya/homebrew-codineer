class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.5/codineer-v0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "a6ff72e67a7b4e3b2d1f07218ccea467afbc9329df999fa59cac1b1ea576a135"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.5/codineer-v0.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "21716b6dae4ebc5e62e863ac8ac6a71b6ae6a86086b2c0aad585996fbd68a8af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.5/codineer-v0.6.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc2799553b54417ecd9cee3c659d3027fb36b27b05918e98be884544a36ab08d"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.5/codineer-v0.6.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55602e699361773d476620a2b11a1994c6394a35124ea804cbc8a51bb102441f"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

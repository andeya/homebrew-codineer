class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.2/codineer-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "a7cf0af65f0d897713482abd681d87601201f0768f9eea38814d45f08fc8688e"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.2/codineer-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "1288c670bac5a42a527a7c01860dbe5054ddd27d8959d06e540b851158dc7c70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.2/codineer-v0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edcb90a84921255dc112faa1983216d1ef0d181d239c4062092e1f34f7ffb08f"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.2/codineer-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec3f43170de363e54057a1608907a63cdf2646edc5ac7b23ce88d262c83470e7"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

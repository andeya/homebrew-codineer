class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.8/codineer-v0.6.8-aarch64-apple-darwin.tar.gz"
      sha256 "9b3dbe116efa069658bbe07eee27995ccd3ade13c616978051291b94a46403b5"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.8/codineer-v0.6.8-x86_64-apple-darwin.tar.gz"
      sha256 "026b868b502f76f4787fdc129d1349d7b4903dc8a6636e80591c702d138907a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.8/codineer-v0.6.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90864472b7f85c667850f3e1a76b01447c57aa8dffb1293e6be1f13daff17e65"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.8/codineer-v0.6.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b3cfa5bddb8affdcf19b9b68007a80bd96c84653478b039cc8fb6e86e44ca15"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

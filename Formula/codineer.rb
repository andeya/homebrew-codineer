class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.6/codineer-v0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "4f4f43a9074809e2b96a92413657a96426a22d5723756452c54d7092fe9c2e54"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.6/codineer-v0.6.6-x86_64-apple-darwin.tar.gz"
      sha256 "da72e9686e6cbc3073d6e14952559942c5f068dba44a8f16adf1a7f4c5f66e86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.6/codineer-v0.6.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7afb190feff3a367145ffccdb89ecc18569d6d9768e815e92f9b5842bfc87bf5"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.6/codineer-v0.6.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efc76da73b95af541598da993a6bdeebf955d069da9eceb7869751449222e8ff"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

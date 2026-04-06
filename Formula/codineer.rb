class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.7/codineer-v0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "4442a9ca536db9c2776981b6708aaf661f3fea7d39ff92a77103dd655aae8533"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.7/codineer-v0.6.7-x86_64-apple-darwin.tar.gz"
      sha256 "061545089b6b81a534d577789e2e726970ba0dd9b101962fa15005a990c82c0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.7/codineer-v0.6.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2986d3c626ff16fe213a12107b4e6dd1e5efae91731b966071a22b5293cb235c"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.7/codineer-v0.6.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2fc2e4987979e4db05b0fc2675e368f71275df327540cd3ce6b9c79c4519d6f7"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.5.1/codineer-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "080e62fc7d7299646b31b6feb123a47fb8d8fcd166d9d9ad783ee0de04fd5933"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.5.1/codineer-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "ffb856d00425fae6d1ac097372ba660f6b0234e34a983b150235b427ca60ecd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.5.1/codineer-v0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "684d96ec61a92127b2b26cb23f3ffe073aefd671d9b0ae64c6daf968dea73fdc"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.5.1/codineer-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa5789a881e50757228cf1a6efcc8b7d62080f9a890b27ccf953c6744f7dac9d"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.5.0/codineer-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ea32b424fcf35e7e693b7e37c79a9269bebc0592557ec0131ff609181d2fee1"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.5.0/codineer-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "17620288d6cc8fea90fe66e503775d729bf2e66ca6cfad0f3f16e5ed56475f39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.5.0/codineer-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18b93b40970e6c528ecb7987aabae40cd821b22ddb99b9645a8e521e94acd6a3"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.5.0/codineer-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4205ac3685e6a721b434f1f31cef58a3524323ab37a102a0362c14cdc198d83e"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

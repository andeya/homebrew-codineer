class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.9/codineer-v0.6.9-aarch64-apple-darwin.tar.gz"
      sha256 "465f9950314c8d4d0b55e97a43ec68194ee304e61f819ea9dda9e59746b4ed98"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.9/codineer-v0.6.9-x86_64-apple-darwin.tar.gz"
      sha256 "578a045ca05777c598339931061f1f687537f3ae96d60a6c56e799a68635a5be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.9/codineer-v0.6.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9985e55ca252d97417421871b45b50b04d23714038c21496f1cc837a7015d401"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.9/codineer-v0.6.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97174e2bf95e729fb64b5aab3fe2562f76ffed525d32cb6c04bd953fe2f8b3cc"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

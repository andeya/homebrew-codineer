class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.5.0/codineer-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "e5fdedc6e2602fc85b1bdbb65328afe471f3cd229a01a912088bdb3234e3139a"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.5.0/codineer-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "1a6e0c43bc4ef9fb67aa9a7549fa6fcb5f05e41fdf51f425d8a61598c6e28c1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.5.0/codineer-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3fd40628233ca388a299c3562d1d7c5856ca5d0407e1df0b9e0e0fc3d5c213c6"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.5.0/codineer-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55c9431b915c656269e8c447f7b0f0a51f361512a6b6a54838f25e9996753849"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

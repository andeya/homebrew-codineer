class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.3/codineer-v0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "d12957f789bc7c9ffa9db321d5c2bf051e2c48abeac7e53d1ebdd670864f49d4"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.3/codineer-v0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "bca1ce457fac94aa9d56d359e7e9ed8193c541e477604c8070fd07e750680438"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.3/codineer-v0.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6acbc9e2b1295e04368c304b1c7d4eb7d7afdf4532e985b6f404495f6d4e057b"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.3/codineer-v0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8244f6ec93424eaaabe354f05963d8daebf4a538b014c37fd18609702ad0f93c"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

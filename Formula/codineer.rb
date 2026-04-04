class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.1/codineer-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "9bc7fde86e93de64c4fafd311c78955b1ea5382517cf27d39eaf6a3fdfa7e034"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.1/codineer-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "950bab2a4d6829270339c27304261d8ff0447144d563e2828e81deb3eab820e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.1/codineer-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9fa77e624d06d5300c6907015ab04507be836d5237d80a0b58e62ebe18bbae7"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.1/codineer-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d38ade7bc26caa0144057086357982321032575fccf30e79601634f3e30e04eb"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

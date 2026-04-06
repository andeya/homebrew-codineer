class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.8/codineer-v0.6.8-aarch64-apple-darwin.tar.gz"
      sha256 "dd081aad583f79c15883a700bf3a9b947187d54886d70a581fec9ea123cd1102"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.8/codineer-v0.6.8-x86_64-apple-darwin.tar.gz"
      sha256 "1c31cd5dcd2cdb6e3fd826766c9cff1b7eb26de3629b1607c5d4c113d97c8094"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.8/codineer-v0.6.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25a59c2b15533ae325eead24995a0701b01758c80ef1ff27686ecdef81dcfab4"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.8/codineer-v0.6.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "445a4382377bf28868a41fa543f227b1a5c06fbba59587d49529df55f610f6b9"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

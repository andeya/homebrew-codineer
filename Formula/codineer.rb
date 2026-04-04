class Codineer < Formula
  desc "Local coding-agent CLI implemented in safe Rust"
  homepage "https://github.com/andeya/codineer"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.0/codineer-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "2e124d8536bc43f914fdcbc8750359fffc515943e077445f8f47cc32085cfc46"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.0/codineer-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "7503048b4fe0267312f5768c3689ed3cae66507c374bdfb8a0b1d13a11dd5e16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andeya/codineer/releases/download/v0.6.0/codineer-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b6da9928087bfe0918f6f4f75142c1c7ab8a8297133af97da21a88ff1991454"
    else
      url "https://github.com/andeya/codineer/releases/download/v0.6.0/codineer-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4509c8a2ac88a439b02ac569787aa180c6965ced8e7c4e98c15fe3d12f26e9e6"
    end
  end

  def install
    bin.install "codineer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codineer --version")
  end
end

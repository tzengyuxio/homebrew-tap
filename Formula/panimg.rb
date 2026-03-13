class Panimg < Formula
  desc "Next-generation image processing CLI"
  homepage "https://github.com/tzengyuxio/panimg"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a552aa387e840bee13cc9d6fd6bb6d97aaa55873eadd4bfb2a9a1b59bd6c0d42"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "48a0c028ef4876ebe4eb4a9d98d4b2011b65541150a055a978ccdea16756bf4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2cb023b9b0ce0e00433362f65e094e9dff97505e4fa3a01ebc2e2bf3f095a2b5"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "02e4e4e40d763fb363008ef02fb3eab6a7142dede7bc89cc97a249bdc2690cd6"
    end
  end

  def install
    bin.install "panimg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/panimg --version")
  end
end

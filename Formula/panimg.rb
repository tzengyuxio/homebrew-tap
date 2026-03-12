class Panimg < Formula
  desc "Next-generation image processing CLI"
  homepage "https://github.com/tzengyuxio/panimg"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d46cef887e9cdf27a8e8d441a00f7ada2d947ccd14d8760f6504332cd57d80ff"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3afd98c07cd641a9828ff77ebdc68acf90f770148bdec097eb74ccb3afdc00fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0b182ef76bf45746a7e0f175bfe6028339740d14ce0bdeda5d4ad7a8b4dffb4"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79884d5bc196af53a293444052e8af1da1bc229d080e96029168f2f325089327"
    end
  end

  def install
    bin.install "panimg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/panimg --version")
  end
end

class Panimg < Formula
  desc "Next-generation image processing CLI"
  homepage "https://github.com/tzengyuxio/panimg"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "918fd4dd6a53d0534b9f24a97369d225436b448c380784d9a4b1301a96458983"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fbabdf248f4741ec29b34d11c90ded18e8e1c4c45ff2a73b297abb8a3dd4fff0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "723b2a403ea0507e75ac0c4ba0ecb5159578514315c890f65390f162bd3d76a3"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panimg/releases/download/v#{version}/panimg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bace56eba63304cc984f4013e7a4b82cc2adcdc742b6a6e69dd49519226208af"
    end
  end

  def install
    bin.install "panimg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/panimg --version")
  end
end

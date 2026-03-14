class Panaud < Formula
  desc "The Swiss Army knife of audio processing — built for humans and AI agents alike"
  homepage "https://github.com/tzengyuxio/panaud"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tzengyuxio/panaud/releases/download/v#{version}/panaud-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ff008c522fe8c585dfcf7902dac1a7387efdb4025bb8d0d0126554346e6d99d0"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panaud/releases/download/v#{version}/panaud-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3b1421b510d833482d7c4b0b5c2352ef04a8349fc2cb7cc9b1699523a81203df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tzengyuxio/panaud/releases/download/v#{version}/panaud-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89e223646df4fb2735d3005bd61435c5f9c752407b27d597ac977338db3d8e28"
    end
    on_intel do
      url "https://github.com/tzengyuxio/panaud/releases/download/v#{version}/panaud-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cca5b987fb9714778a822b3759a7763f8e615edf33b51c304b6380f97862bfeb"
    end
  end

  def install
    bin.install "panaud"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/panaud --version")
  end
end

class Krelay < Formula
  homepage "https://github.com/knight42/krelay"
  version "0.0.10"
  head "https://github.com/knight42/krelay.git"
  on_macos do
    on_arm do
      url "https://github.com/knight42/krelay/releases/download/v#{version}/kubectl-relay_v#{version}_darwin-arm64.tar.gz"
      sha256 "d42c38b19bce929eed4902fdd32e76f0d7033a5d7324745ca5117e310c84f3c4"
    end
    on_intel do
      url "https://github.com/knight42/krelay/releases/download/v#{version}/kubectl-relay_v#{version}_darwin-amd64.tar.gz"
      sha256 "dcc4af52b8f647a7718127b11382943b71a0c888662b04807fb0c2bc33c92ad9"
    end
  end

  def install
    bin.install "kubectl-relay"
    bin.install_symlink "kubectl-relay" => "krelay"
  end

  test do
    system "#{bin}/kubectl-relay", "-V"
    system "#{bin}/krelay", "-V"
  end
end

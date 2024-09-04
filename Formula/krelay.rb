class Krelay < Formula
  homepage "https://github.com/knight42/krelay"
  version "0.1.1"
  head "https://github.com/knight42/krelay.git"
  on_macos do
    on_arm do
      url "https://github.com/knight42/krelay/releases/download/v#{version}/kubectl-relay_v#{version}_darwin-arm64.tar.gz"
      sha256 "419b5d208e387e7d71ed06847cf2330a78e40d7f1bac322969c14eecb14671ac"
    end
    on_intel do
      url "https://github.com/knight42/krelay/releases/download/v#{version}/kubectl-relay_v#{version}_darwin-amd64.tar.gz"
      sha256 "2ca64c5413ec4385ddbd93d60fbbf2407b7d9de3898023c583586dd175ba2836"
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

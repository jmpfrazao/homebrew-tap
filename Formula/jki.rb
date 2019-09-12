class Jki < Formula
  desc "JiKe Image utils"
  homepage "https://github.com/iftechio/jki"
  head "https://github.com/iftechio/jki.git"
  version "0.0.7"
  url "https://github.com/iftechio/jki/releases/download/v#{version}/jki_#{version}_darwin_amd64.tar.gz"
  sha256 "991c92d63dc3182944ec12d709d513e478972809b8f248365e0a38ca071f5791"

  def install
    bin.install "jki"

    # Install bash completion
    output = Utils.popen_read("#{bin}/jki completion bash")
    (bash_completion/"jki").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/jki completion zsh")
    (zsh_completion/"_jki").write output
  end
end

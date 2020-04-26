class Kfctl < Formula
  desc "kfctl is a CLI for deploying and managing Kubeflow"
  homepage "https://www.kubeflow.org"
  head "https://github.com/kubeflow/kfctl.git"
  version "1.0"
  commit = "g94c35cf"
  url "https://github.com/kubeflow/kfctl/releases/download/v#{version}/kfctl_v#{version}-0-#{commit}_darwin.tar.gz"
  sha256 "c01c0355802aece6ab7623dc76a79286b23205882e37e999a22faaed77e0e1d3"

  def install
    bin.install "kfctl"

    # Install bash completion
    output = Utils.popen_read("#{bin}/kfctl completion bash")
    (bash_completion/"kfctl").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/kfctl completion zsh")
    (zsh_completion/"_kfctl").write output
  end

  test do
    system "#{bin}/kfctl", "version"
  end
end

class Kfctl < Formula
  desc "Machine Learning Toolkit for Kubernetes"
  homepage "https://www.kubeflow.org"
  head "https://github.com/kubeflow/kubeflow.git"
  version "0.6.2"
  url "https://github.com/kubeflow/kubeflow/releases/download/v#{version}/kfctl_v#{version}_darwin.tar.gz"
  sha256 "3e409fad6cf040cd1fbc1ffeb0c47862528e1595e0dde70730d994b0a4b7e3dd"

  def install
    bin.install "kfctl"

    # Install bash completion
    output = Utils.popen_read("#{bin}/kfctl completion bash")
    (bash_completion/"kfctl").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/kfctl completion zsh")
    (zsh_completion/"_kfctl").write output
  end
end

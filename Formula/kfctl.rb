class Kfctl < Formula
  desc "Machine Learning Toolkit for Kubernetes"
  homepage "https://www.kubeflow.org"
  head "https://github.com/kubeflow/kubeflow.git"
  version "0.7.0"
  url "https://github.com/kubeflow/kubeflow/releases/download/v#{version}/kfctl_v#{version}_darwin.tar.gz"
  sha256 "4b05da1581b51cd49df21ded5572abaae6628be25f0f2ef37d4f18209ee91301"

  def install
    bin.install "kfctl-darwin"
    mv bin/"kfctl-darwin", bin/"kfctl"

    # Install bash completion
    output = Utils.popen_read("#{bin}/kfctl completion bash")
    (bash_completion/"kfctl").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/kfctl completion zsh")
    (zsh_completion/"_kfctl").write output
  end
end

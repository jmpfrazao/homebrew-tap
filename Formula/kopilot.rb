class Kopilot < Formula
  homepage "https://github.com/knight42/kopilot"
  version "0.0.3"
  head "https://github.com/knight42/kopilot"
  on_macos do
    on_arm do
      url "https://github.com/knight42/kopilot/releases/download/v#{version}/kopilot_v#{version}_darwin_arm64.tar.gz"
      sha256 "f02c827f167d393770829361290cdbdd582cf2b5c84d3ef17dd622bf369e7976"
    end
    on_intel do
      url "https://github.com/knight42/kopilot/releases/download/v#{version}/kopilot_v#{version}_darwin_amd64.tar.gz"
      sha256 "53be3c02ff0d6b2e935d79d51a3ecf7ddbf1f0a942d57c1cff7e60defd866006"
    end
  end

  def install
    bin.install "kopilot"

    # Install bash completion
    output = Utils.popen_read("#{bin}/kopilot completion bash")
    (bash_completion/"kopilot").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/kopilot completion zsh")
    (zsh_completion/"_kopilot").write output
  end

  test do
    system "#{bin}/kopilot", "--help"
  end
end

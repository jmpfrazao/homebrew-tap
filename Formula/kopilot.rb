class Kopilot < Formula
  homepage "https://github.com/knight42/kopilot"
  version "0.0.2"
  head "https://github.com/knight42/kopilot"
  on_macos do
    on_arm do
      url "https://github.com/knight42/kopilot/releases/download/v#{version}/kopilot_v#{version}_darwin_arm64.tar.gz"
      sha256 "3d55f05fc2afeea7a12fbd7834152ff3587386248d4acd7723654b7af9590a72"
    end
    on_intel do
      url "https://github.com/knight42/kopilot/releases/download/v#{version}/kopilot_v#{version}_darwin_amd64.tar.gz"
      sha256 "49d0b16c0004bf106c8a05cd0e5593273c72e55b9ec32de3463cf2d6e432cd82"
    end
  end

  def install
    bin.install "kopilot"

    # Install bash completion
    output = Utils.popen_read("#{bin}/kopilot --completion bash")
    (bash_completion/"kopilot").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/kopilot --completion zsh")
    (zsh_completion/"_kopilot").write output
  end

  test do
    system "#{bin}/kopilot", "--help"
  end
end

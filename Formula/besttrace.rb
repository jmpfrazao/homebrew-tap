class Besttrace < Formula
  desc "从你的 Linux(X86/ARM)/Mac/BSD 系统环境下发起 traceroute 请求，附带链路可视化，兼容性更好，支持 JSON 格式"
  homepage "https://www.ipip.net/product/client.html#besttrace"
  version "1.2"
  url "https://cdn.ipip.net/17mon/besttrace4linux.zip"
  sha256 "548c5dc5c6ea40b2e748bba06ae59f1b90df23c275885a9144c191f0375ea4f6"

  def install
    bin.install "besttracemac"
    mv bin/"besttracemac", bin/"besttrace"
    system "chmod", "+x", bin/"besttrace"
  end

  test do
    system "#{bin}/besttrace", "-V"
  end
end

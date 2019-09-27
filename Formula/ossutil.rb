class Ossutil < Formula
  desc "User friendly command-line tool to access AliCloud OSS"
  version "1.6.7"
  homepage "https://www.aliyun.com/product/oss"
  head "https://github.com/aliyun/ossutil.git"
  url "http://gosspublic.alicdn.com/ossutil/#{version}/ossutilmac64"
  sha256 "5feb2edb8b341254b22f148d37311ef1b5408e1383be763dbb8f246f5634eb63"

  def install
    bin.install "ossutilmac64"
    mv bin/"ossutilmac64", bin/"ossutil"
  end

   test do
    system "#{bin}/ossutil", "--version"
  end
end

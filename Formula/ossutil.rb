class Ossutil < Formula
  desc "User friendly command-line tool to access AliCloud OSS"
  version "1.6.12"
  homepage "https://www.aliyun.com/product/oss"
  head "https://github.com/aliyun/ossutil.git"
  url "http://gosspublic.alicdn.com/ossutil/#{version}/ossutilmac64"
  sha256 "e64fd977132ece20dc199b96a086a96647bf00e790323cba7202da9391e68b4b"

  def install
    bin.install "ossutilmac64"
    mv bin/"ossutilmac64", bin/"ossutil"
  end

   test do
    system "#{bin}/ossutil", "--version"
  end
end

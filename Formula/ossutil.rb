class Ossutil < Formula
  desc "User friendly command-line tool to access AliCloud OSS"
  version "1.6.6"
  homepage "https://www.aliyun.com/product/oss"
  head "https://github.com/aliyun/ossutil.git"
  url "http://gosspublic.alicdn.com/ossutil/#{version}/ossutilmac64"
  sha256 "d7d7421b94c7597fea0f7db3b5436001a3520d627871d7579d4d56129efaa3e4"

  def install
    bin.install "ossutilmac64"
    mv bin/"ossutilmac64", bin/"ossutil"
  end

   test do
    system "#{bin}/ossutil", "--version"
  end
end

class Tomodo < Formula
  desc "A Tool for MongoDB on Docker"
  homepage "https://github.com/yuviherziger/tomodo"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/yuviherziger/tomodo/releases/download/1.0.1/tomodo-amd64-1.0.1.tar.gz"
    sha256 "5e11cfeec43cb515a1fd5062ffea70c9f83ab3df1e10ac5cf14b10e9dc9fcf26"
  elsif Hardware::CPU.arm?
    url "https://github.com/yuviherziger/tomodo/releases/download/1.0.1/tomodo-arm64-1.0.1.tar.gz"
    sha256 "8c2501fc69d02840a4b971fe663b451dc9ab3f78b6192aa4848e37bc1fa6cad3"
  end


  def install
    bin.install "tomodo"
    bin.install Dir["*"]
  end
end

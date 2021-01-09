class Frodo < Formula
  desc "Parse HOCON conf files to generate k8s secret yaml"
  homepage "https://github.com/k8ty-app/k8ty-frodo"
  url "https://github.com/k8ty-app/frodo/archive/v0.0.2.tar.gz"
  sha256 "d64f6f5fdb4910528577dd3e576229e1891e5f5bade85aab8b090f287d3d7b6e"

  depends_on "sbt"

  def install
    system "sbt", "nativeImage"
    bin.install "./target/native-image/frodo"
  end

  test do
    system bin/"frodo"
  end
end

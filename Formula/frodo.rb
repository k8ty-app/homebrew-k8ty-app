class Frodo < Formula
  desc "Parse HOCON conf files to generate k8s secret yaml"
  homepage "https://github.com/k8ty-app/k8ty-frodo"
  url "https://github.com/k8ty-app/frodo/archive/v0.0.1.tar.gz"
  sha256 "b6de21f8b4221cccd0b50a77e8cbfa50aeb51a308176e56fe9635fcfa6e81e44"

  depends_on "sbt"

  def install
    system "sbt", "nativeImage"
    bin.install "./target/native-image/frodo"
  end

  test do
    system bin/"frodo"
  end
end

class K8tyHaiku < Formula
  desc "Generate a haiku-like project name"
  homepage "https://github.com/k8ty-app/k8ty-haiku"
  url "https://github.com/k8ty-app/k8ty-haiku/archive/v0.0.2.tar.gz"
  sha256 "e252bf969f1dc784b40752c2196aa4ed9cb8556a6bde2dd01802edc394c86646"

  depends_on "sbt"

  def install
    system "sbt" "nativeImage"
    bin.install "./target/native-image/k8ty-haiku"
  end

  test do
    system bin/"k8ty-haiku"
  end
end

class K8tyHaiku < Formula
  desc "Generate a haiku-like project name"
  homepage "https://github.com/k8ty-app/k8ty-haiku"
  url "https://github.com/k8ty-app/k8ty-haiku/releases/download/v0.0.1/k8ty-haiku"
  sha256 "291fe5e14a42722b360a843cd84acbf8afcfc4ede41646cb112d9577c1c3023c"

  def install
    bin.install "k8ty-haiku"
  end

  test do
    system bin/"k8ty-haiku"
  end
end

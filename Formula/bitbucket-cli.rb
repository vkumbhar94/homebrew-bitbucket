class BitbucketCli < Formula
  desc "CLI tool for Bitbucket Server to manage pull requests and integrate with Cursor"
  homepage "https://github.com/vkumbhar94/bitbucket-cli"
  url "https://github.com/vkumbhar94/bitbucket-cli/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "e31aa5c8581d4cc6ed6838352539a8373fcfb11f799374aec273e8f514ddc77d"
  version "1.0.4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build", "INSTALL_PREFIX=#{prefix}"
    bin.install "bin/bitbucket-cli"
  end

  test do
    system "#{bin}/bitbucket-cli", "version"
  end
end

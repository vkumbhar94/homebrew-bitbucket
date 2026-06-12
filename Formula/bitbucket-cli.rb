class BitbucketCli < Formula
  desc "CLI tool for Bitbucket Server to manage pull requests and integrate with Cursor"
  homepage "https://github.com/vkumbhar94/bitbucket-cli"
  url "https://github.com/vkumbhar94/bitbucket-cli/releases/download/v1.0.0/bitbucket-cli-v1.0.0-darwin-arm64"
  sha256 "REPLACE_WITH_ACTUAL_SHA256_ARM64"
  version "1.0.0"

  on_macos do
    on_arm64 do
      url "https://github.com/vkumbhar94/bitbucket-cli/releases/download/v1.0.0/bitbucket-cli-v1.0.0-darwin-arm64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_ARM64"
    end
    on_intel do
      url "https://github.com/vkumbhar94/bitbucket-cli/releases/download/v1.0.0/bitbucket-cli-v1.0.0-darwin-amd64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_AMD64"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/vkumbhar94/bitbucket-cli/releases/download/v1.0.0/bitbucket-cli-v1.0.0-linux-arm64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/vkumbhar94/bitbucket-cli/releases/download/v1.0.0/bitbucket-cli-v1.0.0-linux-amd64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_LINUX_AMD64"
    end
  end

  def install
    bin.install "bitbucket-cli-v1.0.0-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "bitbucket-cli"
  end

  test do
    system "#{bin}/bitbucket-cli", "version"
  end
end

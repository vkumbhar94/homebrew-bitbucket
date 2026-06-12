class BitbucketCli < Formula
  desc "CLI tool for Bitbucket Server to manage pull requests and integrate with Cursor"
  homepage "https://github.com/vkumbhar94/bitbucket-cli"
  version "1.0.4"

  on_macos do
    on_arm64 do
      url "https://github.com/vkumbhar94/bitbucket-cli/releases/download/v1.0.4/bitbucket-cli-v1.0.4-darwin-arm64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_ARM64"
    end
    on_x86_64 do
      url "https://github.com/vkumbhar94/bitbucket-cli/releases/download/v1.0.4/bitbucket-cli-v1.0.4-darwin-amd64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_AMD64"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/vkumbhar94/bitbucket-cli/releases/download/v1.0.4/bitbucket-cli-v1.0.4-linux-arm64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_LINUX_ARM64"
    end
    on_x86_64 do
      url "https://github.com/vkumbhar94/bitbucket-cli/releases/download/v1.0.4/bitbucket-cli-v1.0.4-linux-amd64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_LINUX_AMD64"
    end
  end

  def install
    # Find the binary file that was downloaded and install it
    binary = Dir.glob("bitbucket-cli-*-*-*").first
    if binary
      bin.install binary => "bitbucket-cli"
    else
      raise "Could not find bitbucket-cli binary"
    end
  end

  test do
    system "#{bin}/bitbucket-cli", "version"
  end
end

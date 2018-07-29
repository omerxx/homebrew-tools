require "formula"

class Fed < Formula
  desc "CLI to deploy Frontend modules"
  homepage "https://github.com/spotim/fed-cli"
  url "https://github.com/spotim/fed-cli/releases/download/v0.1.1/fed-cli-darwin-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "161d65a72f102016f6a6cf06ba7f5812a7d9742121442e7a63c463046afe7bc7"
  head "https://github.com/spotim/fed-cli.git"

  def install
    bin.install "fed"
  end

  # Homebrew requires tests.
  test do
    assert_match "fed version 1.0.0", shell_output("#{bin}/fed -v", 2)
  end
end

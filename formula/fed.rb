require "formula"

class Fed < Formula
  desc "CLI to deploy Frontend modules"
  homepage "https://github.com/spotim/fed-cli"
  url "https://github.com/spotim/fed-cli/releases/download/v0.1.1/fed-cli-darwin-amd64-0.1.1.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "d135b6185ccc181c1000c3e4c64521258ad14d7adaa173dc55a9a80cabf09f8b"
  head "https://github.com/spotim/fed-cli.git"

  def install
    bin.install "fed"
  end

  # Homebrew requires tests.
  test do
    assert_match "fed version 1.0.0", shell_output("#{bin}/fed -v", 2)
  end
end

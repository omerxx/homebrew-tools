require "formula"

class Fed < Formula
  desc "CLI to deploy Frontend modules"
  homepage "https://github.com/spotim/fed-cli"
  url "https://github.com/spotim/fed-cli/releases/download/v0.1.3/fed-cli-darwin-amd64-0.1.3.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "105349637287e13d651210714fc1b0f6b0786736ca692974470534e1e7f6f5c1"
  head "https://github.com/spotim/fed-cli.git"

  def install
    bin.install "fed"
  end

  # Homebrew requires tests.
  test do
    assert_match "fed version 1.0.0", shell_output("#{bin}/fed -v", 2)
  end
end

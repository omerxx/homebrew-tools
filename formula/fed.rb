require "formula"

class Fed < Formula
  desc "CLI to deploy Frontend modules"
  homepage "https://github.com/spotim/fed-cli"
  url "https://github.com/spotim/fed-cli/releases/download/v0.1.4/fed-cli-darwin-amd64-0.1.4.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "c4bb34abd18ef743572c085fcbaf0a4d5c0770a7c889ae5ce422213bb35e80d4"
  head "https://github.com/spotim/fed-cli.git"

  def install
    bin.install "fed"
  end

  # Homebrew requires tests.
  test do
    assert_match "fed version 1.0.0", shell_output("#{bin}/fed -v", 2)
  end
end

require "formula"

class Fed < Formula
  desc "CLI to deploy Frontend modules"
  homepage "https://github.com/spotim/fed-cli"
  url "https://github.com/spotim/fed-cli/releases/download/v0.1.2/fed-cli-darwin-amd64-0.1.2.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "7c54317ce12e9bd07e0f65d52410421564523600f6f09aaacc3bf8644e2139fb"
  head "https://github.com/spotim/fed-cli.git"

  def install
    bin.install "fed"
  end

  # Homebrew requires tests.
  test do
    assert_match "fed version 1.0.0", shell_output("#{bin}/fed -v", 2)
  end
end

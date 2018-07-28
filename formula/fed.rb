require "formula"

class Fed < Formula
  desc "CLI to deploy Frontend modules"
  homepage "https://github.com/spotim/fed-cli"
  url "https://github.com/SpotIM/fed-cli/releases/download/v0.1.1/fed-cli-darwin-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "19f261ee6ba6d31ff5faa9125e90bf70c3081795d56377e8931b81c44fc23448"
  head "https://github.com/spotim/fed-cli.git"

  def install
    bin.install "fed"
  end

  # Homebrew requires tests.
  test do
    assert_match "fed version 1.0.0", shell_output("#{bin}/fed -v", 2)
  end
end

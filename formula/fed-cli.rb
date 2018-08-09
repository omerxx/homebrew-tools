class FedCli < Formula
  desc "CLI to deploy Frontend modules"
  homepage "https://github.com/spotim/fed-cli"
  url "https://github.com/SpotIM/fed-cli/releases/download/v0.1.9/fed-cli_0.1.9_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.1.9"
  sha256 "87a713ca86a168299b3e33bd26bce390aeb30038fe56a5f3f153cede6aef6f24"
  
  depends_on "awscli"

  def install
    bin.install "fed-cli"
  end
end

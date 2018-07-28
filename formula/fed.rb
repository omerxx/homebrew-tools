require "formula"

class Fed < Formula
  desc "CLI to deploy Frontend modules"
  homepage "https://github.com/spotim/fed-cli"
  url "https://github.com/SpotIM/fed-cli/releases/download/v0.1.1/fed-cli-darwin-amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "5ec7bf41d6f779dacce00c37a649039640edbefc201f2b8e0e8dc5de7489ba08"
  head "https://github.com/spotim/fed-cli.git"

  # depends_on "cmake" => :build

  def install
    # ENV["GOPATH"] = buildpath

    # bin_path = buildpath/"src/github.com/spotim/fed-cli"
    # # copy all files from their current location (gopath root)
    # # to $gopath/src/github.com/spotim/fed-cli
    # bin_path.install dir["*"]
    # cd bin_path do
    #   # install the compiled binary into homebrew's `bin` - a pre-existing
    #   # global variable
    #   system "go", "build", "-o", bin/"fed", "."
    # end
    #

    # system "chmod", "+x", "fed-64.1"
    # system "mv", "fed-64.1", "/usr/local/bin/fed"
    #
    bin.install "fed"

  end

  # Homebrew requires tests.
  test do
    # "2>&1" redirects standard error to stdout. The "2" at the end means "the
    # exit code should be 2".
    assert_match "fed version 1.0.0", shell_output("#{bin}/fed -v", 2)
  end
end

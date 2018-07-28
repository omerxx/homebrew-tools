require "formula"

class Fed < Formula
  desc "CLI to deploy Frontend modules"
  homepage "https://github.com/spotim/fed-cli"
  url "https://github.com/SpotIM/fed-cli/releases/download/v0.1.1/fed-cli-darwin-amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "19f261ee6ba6d31ff5faa9125e90bf70c3081795d56377e8931b81c44fc23448"
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

class ConfluenceCli < Formula
  desc "Command-line interface for Atlassian Confluence"
  homepage "https://github.com/pchuri/confluence-cli"
  url "https://registry.npmjs.org/confluence-cli/-/confluence-cli-2.25.3.tgz"
  sha256 "5953c06103336e9cf7ed98f7e41f5e9f13f408549feb11bdd2a6dca0cb48d0db"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "confluence-cli", shell_output("#{bin}/confluence --help")
  end
end

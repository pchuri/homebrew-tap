class ConfluenceCli < Formula
  desc "Command-line interface for Atlassian Confluence"
  homepage "https://github.com/pchuri/confluence-cli"
  url "https://registry.npmjs.org/confluence-cli/-/confluence-cli-2.30.3.tgz"
  sha256 "ede77d89df6e18cd182bcb3e12930780034baa9e8fecc420f999640b10f77b94"
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

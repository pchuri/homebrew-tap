class ConfluenceCli < Formula
  desc "Command-line interface for Atlassian Confluence"
  homepage "https://github.com/pchuri/confluence-cli"
  url "https://registry.npmjs.org/confluence-cli/-/confluence-cli-1.27.7.tgz"
  sha256 "492b2e8a985d9a0dd1c2d808021c879fcac1666ee1ab6aa627369dc446db1bb2"
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

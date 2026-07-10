class ConfluenceCli < Formula
  desc "Command-line interface for Atlassian Confluence"
  homepage "https://github.com/pchuri/confluence-cli"
  url "https://registry.npmjs.org/confluence-cli/-/confluence-cli-2.16.1.tgz"
  sha256 "e2c12251eeb497ec4a09f0f28f16cc8aace8de1536c3448223a9afd1b5501fba"
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

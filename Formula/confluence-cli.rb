class ConfluenceCli < Formula
  desc "Command-line interface for Atlassian Confluence"
  homepage "https://github.com/pchuri/confluence-cli"
  url "https://registry.npmjs.org/confluence-cli/-/confluence-cli-2.1.12.tgz"
  sha256 "bfe498b0362d676a12167f20b38387e0bd21778064ab1fffe7a61c944961d222"
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

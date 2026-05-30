class Logmind < Formula
  include Language::Python::Virtualenv

  desc "Branch-aware AI decision logging for development projects"
  homepage "https://logmind.dev"
  url "https://files.pythonhosted.org/packages/5b/1a/a17d02d9fcb327bad767ff6b59178e1959598cfcb8d3d9ec1ce77b788270/logmind-0.5.9.tar.gz"
  sha256 "d2ae4e87a97633a0af58dfc24afbd27b0a07c7f0779d9cede24b0c061b010e4e"
  license "MIT"
  head "https://github.com/thrillmade/logmind.git", branch: "main"

  depends_on "python@3.12"

  resource "click" do
    url "https://files.pythonhosted.org/packages/bb/63/f9e1ea081ce35720d8b92acde70daaedace594dc93b693c869e0d5910718/click-8.3.3.tar.gz"
    sha256 "565ce28e3d0a52b2e222e590d4f36c45117e6099f5efebce25e2e89787f17e24"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "565ce28e3d0a52b2e222e590d4f36c45117e6099f5efebce25e2e89787f17e24"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "logmind, version", shell_output("#{bin}/logmind --version")
  end
end

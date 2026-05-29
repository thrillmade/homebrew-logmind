class Logmind < Formula
  include Language::Python::Virtualenv

  desc "Branch-aware AI decision logging for development projects"
  homepage "https://logmind.dev"
  url "https://files.pythonhosted.org/packages/c9/58/6e2b0d311a41ace2fba3254460056918cef14f7718c5834a00c5ade7f4a6/logmind-0.5.5.tar.gz"
  sha256 "537838dd8d7f6a6488fb51a520904f8e2de53d35e7008b56ff7c5f0b7d29e587"
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

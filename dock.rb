class Dock < Formula
  include Language::Python::Virtualenv

  desc "Dock: A custom Docker CLI tool for managing Docker Compose environments"
  homepage "https://github.com/geeth24/dock"
  url "https://github.com/geeth24/dock/archive/v1.0.0.tar.gz"
  sha256 "06d3954fb40b1563d62ab5efbce867a745122fd2823a0205971cfc99d8f33226"
  license "MIT"

  depends_on "python@3.9"

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/7d/e1/95a7b1d382b474f4d9ab7cbb6e6b8a6be84c5e282e1d29010745dc0c5e98/PyYAML-5.4.1.tar.gz"
    sha256 "607774cb05541fc3f5b8fc9c3a4ae6da1a338c6de3f84f47972e882b2d30e4c5"
  end

  def install
    virtualenv_install_with_resources
  end
end

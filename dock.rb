class Dock < Formula
  desc "Dock: A custom Docker CLI tool for managing Docker Compose environments"
  homepage "https://github.com/geeth24/dock"
  url "https://github.com/geeth24/dock/archive/v1.0.0.tar.gz"
  sha256 "f6bf307ed9df3efede8a33852913f56e9ed7a331b19e1a4fd1a8c7cb36b0151f"
  license "MIT"

  depends_on "python@3.9"

  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install "pyyaml"

    bin.install "dock"
    (bin/"dock").write_env_script libexec/"bin/dock", PATH: "#{libexec}/bin:$PATH"
  end
end

class Dock < Formula
  desc "Dock: A custom Docker CLI tool for managing Docker Compose environments"
  homepage "https://github.com/geeth24/dock"
  url "https://github.com/geeth24/dock/archive/v1.0.1.tar.gz"
  sha256 "61f5e4c328e9d140fe353a12f91b94a5c70ef1648ac35731f63dbba95e906b26"
  license "MIT"

  depends_on "python@3.9"

  def install
    # Install Python dependencies from requirements.txt into libexec
    libexec.install "requirements.txt"
    system "pip3", "install", "-r", libexec/"requirements.txt", "--target=#{libexec}"

    # Move the main script to libexec
    libexec.install "dock"

    # Create a wrapper in bin that points to the main script in libexec
    (bin/"dock").write_env_script libexec/"dock", PATH: "#{libexec}/bin:$PATH"
  end
end

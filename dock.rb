class Dock < Formula
  desc "Dock: A custom Docker CLI tool for managing Docker Compose environments"
  homepage "https://github.com/geeth24/dock"
  url "https://github.com/geeth24/dock/archive/v1.0.0.tar.gz"
  sha256 "06d3954fb40b1563d62ab5efbce867a745122fd2823a0205971cfc99d8f33226"
  license "MIT"

  depends_on "python@3.9"

  def install
    # Install Python dependencies from requirements.txt
    system "pip3", "install", "-r", "requirements.txt", "--target=#{libexec}"
    
    # Install the main script and set the PATH
    bin.install "dock"
    (bin/"dock").write_env_script libexec/"dock", PATH: "#{libexec}/bin:$PATH"
  end
end

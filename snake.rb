class Snake < Formula
  desc "simple snake game. Written in pure java"
  homepage "http://silo.cs.indiana.edu:32903/snake/snakehome.html"
  url "http://silo.cs.indiana.edu:32903/snake/snake-1.0.4.tar.gz"
  sha256 "f7f9160643f6b67d1b9442ac0afd87dc600568644ff18ba13f05f7bf35fbedc6"
  def install
    ohai "#{prefix}"
    bin.install "snake"
    #system "ruby", "build.rb", "osec"
   # system "ruby", "build.rb", "extractjre"
#    mv "*.jar", "#{prefix}/"
   # mv "*.jre", "#{prefix}/"
  end
  test do
    system "java", "-jar", "#{prefix}/snake.jar", "--version"
  end
end

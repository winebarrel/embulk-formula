require 'formula'

class Embulk < Formula
  homepage 'http://www.embulk.org/'
  version '0.5.1'
  url "https://bintray.com/artifact/download/embulk/maven/embulk-#{version}.jar"
  sha1 '1d4fabbeaf93a672ba6ea1c811f0608fef10ca9c'

  def install
    libexec.install "embulk-#{version}.jar"
    chmod 0555, libexec/"embulk-#{version}.jar"
    bin.install_symlink libexec/"embulk-#{version}.jar" => "embulk"
  end
end

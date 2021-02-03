class Teletube < Formula
  desc 'Command line interface for interacting with the SWITCHtube web service'
  homepage 'https://github.com/Fingertips/teletube'
  url 'https://github.com/Fingertips/teletube/archive/v0.0.1.tar.gz'
  version '0.0.1'
  sha256 '37ae1d1a54184f76b1ec88bf002191bc2b2e53cec1d17929972cac524f3b3f4c'
  head 'https://github.com/Fingertips/teletube.git'

  depends_on 'crystal-lang' => :build
  depends_on 'libevent'
  depends_on 'libyaml'
  depends_on 'pcre'

  def install
    system 'make'
    bin.install 'teletube'
  end
end

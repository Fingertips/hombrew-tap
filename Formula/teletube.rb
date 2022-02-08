class Teletube < Formula
  desc 'Command line interface for interacting with the SWITCHtube web service'
  homepage 'https://github.com/Fingertips/teletube'
  url 'https://github.com/Fingertips/teletube/archive/refs/tags/v0.0.8.tar.gz'
  version '0.0.8'
  sha256 'f7e008ba75f095a607390fd0714fb04baa618e7c407ee6401d1db867e14dd0d8'
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

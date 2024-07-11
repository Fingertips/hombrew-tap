class Teletube < Formula
  desc 'Command line interface for interacting with the Switch Tube web service'
  homepage 'https://github.com/Fingertips/teletube'
  url 'https://github.com/Fingertips/teletube/archive/refs/tags/v0.3.0.tar.gz'
  version '0.3.0'
  sha256 '4d9f6b92455d78e963a82ddf9ea8381f706b42b9c4058004bec7c4b412065dbf'
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

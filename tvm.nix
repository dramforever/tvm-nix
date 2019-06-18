{ stdenv, fetchgit
, cmake }:

stdenv.mkDerivation {
  name = "tvm-unstable-2019-06-18";
  src = fetchgit {
    url = "https://github.com/dmlc/tvm.git";
    rev = "8a2dcf1f0998fde3548abb14423f189f361e7479";
    sha256 = "14rchgviib40mnyk9znhr104np175dvjjl9d9ylq9sjqw1pnpyni";
    fetchSubmodules = true;
  };

  preConfigure = ''
    mkdir build
    cp cmake/config.cmake build
  '';

  # Breaks paths containing /opt otherwise
  dontFixCmake = true;

  nativeBuildInputs = [ cmake ];
}

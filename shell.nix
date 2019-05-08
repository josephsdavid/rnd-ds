 let
   pkgs = import <nixpkgs> {}; 
   inherit (pkgs) stdenv;
   src = ./.;
 in with pkgs; {
   myProject = stdenv.mkDerivation {
     name = "RnD";
     version = "1";
     buildInputs =  [
       python37
       python37Packages.pandas
       python37Packages.numpy
       python37Packages.rpy2
       python37Packages.matplotlib
       #python37Packages.sqlite
       python37Packages.notebook
       python37Packages.ipython
       python37Packages.scikitlearn
       python37Packages.seaborn
       python37Packages.scipy
       python37Packages.plotly
       python37Packages.ipywidgets
       python37Packages.future
       python37Packages.scikitimage
       #Todo Package graphlab
       python37Packages.tzlocal
       python37Packages.simplegeneric
       R
       rPackages.mlbench
       rPackages.arules
       python37Packages.pprintpp
    ];
  };
}

all:
	rm -f data/geom/logoDrawString
	cd solvers && \
	  dune build --profile release solver.exe && \
	  dune build --profile release versionDemo.exe && \
	  dune build --profile release helmholtz.exe && \
	  dune build --profile release logoDrawString.exe && \
	  dune build --profile release protonettester.exe && \
	  dune build --profile release compression.exe && \
        cd .. && \
	  cp _build/default/solvers/compression.exe compression && \
	  cp _build/default/solvers/versionDemo.exe versionDemo && \
	  cp _build/default/solvers/solver.exe solver && \
	  cp _build/default/solvers/helmholtz.exe helmholtz && \
	  cp _build/default/solvers/protonettester.exe protonettester && \
	  cp _build/default/solvers/logoDrawString.exe \
	    logoDrawString && \
	cd solvers && \
	  ln -s ../../logoDrawString \
	    ../data/geom/logoDrawString

clean:
	cd solvers && dune clean
	rm -f solver
	rm -f compression
	rm -f helmholtz
	rm -f logoDrawString
	rm -f data/geom/logoDrawString

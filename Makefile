AWKV = nawk mawk gawk
BDIR = ${HOME}/Dev/AWK
RUNT = verify_regr.sh

all: check-all

check: ${RUNT}
	@mksh $<

check-all: ${RUNT}
	@for i in ${AWKV}; do echo "Running tests with $${i}:"; \
		mksh $< "${BDIR}/$${i}"; echo; done

clean: test
	@rm -rf test/*.gen

.PHONY: all check check-all clean

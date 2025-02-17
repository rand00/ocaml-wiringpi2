(lang dune 3.16)
(using ctypes 0.3)

(name wiringpi2)

(generate_opam_files true)

(source
 (github rand00/wiringpi2))

(authors "rand00 <rand-dev@r7p5.earth>")

;;(maintainers "Maintainer Name <maintainer@example.com>")

(license LICENSE)

;;(documentation https://url/to/documentation)

(package
 (name wiringpi2)
 (synopsis "A thin and incomplete binding to the WiringPi C-library")
 (description "")
 (depends ocaml)
 (tags
  ("wiringpi" "gpio")))

;; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html

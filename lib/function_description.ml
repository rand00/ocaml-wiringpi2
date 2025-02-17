open Ctypes

(* This Types_generated module is an instantiation of the Types
   functor defined in the type_description.ml file. It's generated by
   a C program that Dune creates and runs behind the scenes. *)
module Types = Types_generated

module Functions (F : Ctypes.FOREIGN) = struct
  open F

  (*goto remove*)
  (* let foo_init = foreign "foo_init" (void @-> returning int) *)
  (* let foo_fnubar = foreign "foo_fnubar" (string_opt @-> returning int) *)
  (* let foo_exit = foreign "foo_exit" (void @-> returning void) *)

  (* see /usr/include/{wiringPi.h | wiringPiSPI.h | wiringPiI2C.h}*)

  module WiringPi = struct

    let setup = foreign "wiringPiSetup" (void @-> returning int)
    let setupSys = foreign "wiringPiSetupSys" (void @-> returning int)
    let setupGpio = foreign "wiringPiSetupGpio" (void @-> returning int)
    let setupPhys = foreign "wiringPiSetupPhys" (void @-> returning int)

    let pinMode = foreign "pinMode" (int @-> int @-> returning void)
    let pullUpDnControl = foreign "pullUpDnControl" (int @-> int @-> returning void)

    let digitalRead = foreign "digitalRead" (int @-> returning int)
    let digitalWrite = foreign "digitalWrite" (int @-> int @-> returning void)
    let pwmWrite = foreign "pwmWrite" (int @-> int @-> returning void)
    (*goto add more pwm-related bindings if needed*)

    let delay = foreign "delay" (uint @-> returning void)
    let delayMicroseconds = foreign "delayMicroseconds" (uint @-> returning void)
    
  end

  module WiringPiSPI = struct

    let setup = foreign "wiringPiSPISetup" (int @-> int @-> returning int)
    let setupMode = foreign "wiringPiSPISetupMode" (int @-> int @-> int @-> returning int)
    let close = foreign "wiringPiSPIClose" (int @-> returning int)

    let dataRW = foreign "wiringPiSPIDataRW" (int @-> ptr uchar @-> int @-> returning int)

    (*Note there is some newer interface too - dunno what 'number' is there..*)

  end
      
  module WiringPiI2C = struct

    let setup = foreign "wiringPiI2CSetup" (int @-> returning int)

    let read = foreign "wiringPiI2CRead" (int @-> returning int)
    let write = foreign "wiringPiI2CWrite" (int @-> int @-> returning int)

    (*goto add more procs if needed*)

  end
  
end

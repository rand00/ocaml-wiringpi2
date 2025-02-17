open Ctypes

module Types (F : Ctypes.TYPE) = struct
  open F

  (* see /usr/include/wiringPi.h*)

  (* Pin modes *)

  let c_INPUT = constant "INPUT" int
  let c_OUTPUT = constant "OUTPUT" int
  let c_PWM_OUTPUT = constant "PWM_OUTPUT" int
  let c_PWM_BAL_OUTPUT = constant "PWM_BAL_OUTPUT" int
  let c_GPIO_CLOCK = constant "GPIO_CLOCK" int
  let c_SOFT_PWM_OUTPUT = constant "SOFT_PWM_OUTPUT" int
  let c_SOFT_TONE_OUTPUT = constant "SOFT_TONE_OUTPUT" int
  let c_PWM_TONE_OUTPUT = constant "PWM_TONE_OUTPUT" int
  let c_PM_OFF = constant "PM_OFF" int
    
  let c_LOW = constant "LOW" int
  let c_HIGH = constant "HIGH" int

  (* Pull up/down/none *)
      
  let c_PUD_OFF = constant "PUD_OFF" int
  let c_PUD_DOWN = constant "PUD_DOWN" int
  let c_PUD_UP = constant "PUD_UP" int

  (* PWM *)

  let c_PWM_MODE_MS = constant "PWM_MODE_MS" int
  let c_PWM_MODE_BAL = constant "PWM_MODE_BAL" int

  (* Interrupt levels *)

  let c_INT_EDGE_SETUP = constant "INT_EDGE_SETUP" int
  let c_INT_EDGE_FALLING = constant "INT_EDGE_FALLING" int
  let c_INT_EDGE_RISING = constant "INT_EDGE_RISING" int
  let c_INT_EDGE_BOTH = constant "INT_EDGE_BOTH" int

  (* Failure modes *)
      
  let c_WPI_FATAL = constant "WPI_FATAL" bool
  let c_WPI_ALMOST = constant "WPI_ALMOST" bool
  
end

--
--  Copyright (C) 2020, AdaCore
--

--  This spec has been automatically generated from STM32F3x8.svd

pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package Interfaces.STM32.RCC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CR_HSION_Field is Interfaces.STM32.Bit;
   subtype CR_HSIRDY_Field is Interfaces.STM32.Bit;
   subtype CR_HSITRIM_Field is Interfaces.STM32.UInt5;
   subtype CR_HSICAL_Field is Interfaces.STM32.Byte;
   subtype CR_HSEON_Field is Interfaces.STM32.Bit;
   subtype CR_HSERDY_Field is Interfaces.STM32.Bit;
   subtype CR_HSEBYP_Field is Interfaces.STM32.Bit;
   subtype CR_CSSON_Field is Interfaces.STM32.Bit;
   subtype CR_PLLON_Field is Interfaces.STM32.Bit;
   subtype CR_PLLRDY_Field is Interfaces.STM32.Bit;

   --  Clock control register
   type CR_Register is record
      --  Internal High Speed clock enable
      HSION          : CR_HSION_Field := 16#1#;
      --  Read-only. Internal High Speed clock ready flag
      HSIRDY         : CR_HSIRDY_Field := 16#1#;
      --  unspecified
      Reserved_2_2   : Interfaces.STM32.Bit := 16#0#;
      --  Internal High Speed clock trimming
      HSITRIM        : CR_HSITRIM_Field := 16#10#;
      --  Read-only. Internal High Speed clock Calibration
      HSICAL         : CR_HSICAL_Field := 16#0#;
      --  External High Speed clock enable
      HSEON          : CR_HSEON_Field := 16#0#;
      --  Read-only. External High Speed clock ready flag
      HSERDY         : CR_HSERDY_Field := 16#0#;
      --  External High Speed clock Bypass
      HSEBYP         : CR_HSEBYP_Field := 16#0#;
      --  Clock Security System enable
      CSSON          : CR_CSSON_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.STM32.UInt4 := 16#0#;
      --  PLL enable
      PLLON          : CR_PLLON_Field := 16#0#;
      --  Read-only. PLL clock ready flag
      PLLRDY         : CR_PLLRDY_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.STM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CR_Register use record
      HSION          at 0 range 0 .. 0;
      HSIRDY         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      HSITRIM        at 0 range 3 .. 7;
      HSICAL         at 0 range 8 .. 15;
      HSEON          at 0 range 16 .. 16;
      HSERDY         at 0 range 17 .. 17;
      HSEBYP         at 0 range 18 .. 18;
      CSSON          at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PLLON          at 0 range 24 .. 24;
      PLLRDY         at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype CFGR_SW_Field is Interfaces.STM32.UInt2;
   subtype CFGR_SWS_Field is Interfaces.STM32.UInt2;
   subtype CFGR_HPRE_Field is Interfaces.STM32.UInt4;
   --  CFGR_PPRE array element
   subtype CFGR_PPRE_Element is Interfaces.STM32.UInt3;

   --  CFGR_PPRE array
   type CFGR_PPRE_Field_Array is array (1 .. 2) of CFGR_PPRE_Element
     with Component_Size => 3, Size => 6;

   --  Type definition for CFGR_PPRE
   type CFGR_PPRE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PPRE as a value
            Val : Interfaces.STM32.UInt6;
         when True =>
            --  PPRE as an array
            Arr : CFGR_PPRE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for CFGR_PPRE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   subtype CFGR_ADCPRE_Field is Interfaces.STM32.UInt2;
   subtype CFGR_PLLSRC_Field is Interfaces.STM32.Bit;
   subtype CFGR_PLLXTPRE_Field is Interfaces.STM32.Bit;
   subtype CFGR_PLLMUL_Field is Interfaces.STM32.UInt4;
   subtype CFGR_USBPRE_Field is Interfaces.STM32.Bit;
   subtype CFGR_MCO_Field is Interfaces.STM32.UInt3;
   subtype CFGR_SDPRE_Field is Interfaces.STM32.UInt5;

   --  Clock configuration register (RCC_CFGR)
   type CFGR_Register is record
      --  System clock Switch
      SW             : CFGR_SW_Field := 16#0#;
      --  Read-only. System Clock Switch Status
      SWS            : CFGR_SWS_Field := 16#0#;
      --  AHB prescaler
      HPRE           : CFGR_HPRE_Field := 16#0#;
      --  APB Low speed prescaler (APB1)
      PPRE           : CFGR_PPRE_Field := (As_Array => False, Val => 16#0#);
      --  ADC prescaler
      ADCPRE         : CFGR_ADCPRE_Field := 16#0#;
      --  PLL entry clock source
      PLLSRC         : CFGR_PLLSRC_Field := 16#0#;
      --  HSE divider for PLL entry
      PLLXTPRE       : CFGR_PLLXTPRE_Field := 16#0#;
      --  PLL Multiplication Factor
      PLLMUL         : CFGR_PLLMUL_Field := 16#0#;
      --  USB prescaler
      USBPRE         : CFGR_USBPRE_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.STM32.Bit := 16#0#;
      --  Microcontroller clock output
      MCO            : CFGR_MCO_Field := 16#0#;
      --  SDADC prescaler
      SDPRE          : CFGR_SDPRE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR_Register use record
      SW             at 0 range 0 .. 1;
      SWS            at 0 range 2 .. 3;
      HPRE           at 0 range 4 .. 7;
      PPRE           at 0 range 8 .. 13;
      ADCPRE         at 0 range 14 .. 15;
      PLLSRC         at 0 range 16 .. 16;
      PLLXTPRE       at 0 range 17 .. 17;
      PLLMUL         at 0 range 18 .. 21;
      USBPRE         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      MCO            at 0 range 24 .. 26;
      SDPRE          at 0 range 27 .. 31;
   end record;

   subtype CIR_LSIRDYF_Field is Interfaces.STM32.Bit;
   subtype CIR_LSERDYF_Field is Interfaces.STM32.Bit;
   subtype CIR_HSIRDYF_Field is Interfaces.STM32.Bit;
   subtype CIR_HSERDYF_Field is Interfaces.STM32.Bit;
   subtype CIR_PLLRDYF_Field is Interfaces.STM32.Bit;
   subtype CIR_CSSF_Field is Interfaces.STM32.Bit;
   subtype CIR_LSIRDYIE_Field is Interfaces.STM32.Bit;
   subtype CIR_LSERDYIE_Field is Interfaces.STM32.Bit;
   subtype CIR_HSIRDYIE_Field is Interfaces.STM32.Bit;
   subtype CIR_HSERDYIE_Field is Interfaces.STM32.Bit;
   subtype CIR_PLLRDYIE_Field is Interfaces.STM32.Bit;
   subtype CIR_LSIRDYC_Field is Interfaces.STM32.Bit;
   subtype CIR_LSERDYC_Field is Interfaces.STM32.Bit;
   subtype CIR_HSIRDYC_Field is Interfaces.STM32.Bit;
   subtype CIR_HSERDYC_Field is Interfaces.STM32.Bit;
   subtype CIR_PLLRDYC_Field is Interfaces.STM32.Bit;
   subtype CIR_CSSC_Field is Interfaces.STM32.Bit;

   --  Clock interrupt register (RCC_CIR)
   type CIR_Register is record
      --  Read-only. LSI Ready Interrupt flag
      LSIRDYF        : CIR_LSIRDYF_Field := 16#0#;
      --  Read-only. LSE Ready Interrupt flag
      LSERDYF        : CIR_LSERDYF_Field := 16#0#;
      --  Read-only. HSI Ready Interrupt flag
      HSIRDYF        : CIR_HSIRDYF_Field := 16#0#;
      --  Read-only. HSE Ready Interrupt flag
      HSERDYF        : CIR_HSERDYF_Field := 16#0#;
      --  Read-only. PLL Ready Interrupt flag
      PLLRDYF        : CIR_PLLRDYF_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : Interfaces.STM32.UInt2 := 16#0#;
      --  Read-only. Clock Security System Interrupt flag
      CSSF           : CIR_CSSF_Field := 16#0#;
      --  LSI Ready Interrupt Enable
      LSIRDYIE       : CIR_LSIRDYIE_Field := 16#0#;
      --  LSE Ready Interrupt Enable
      LSERDYIE       : CIR_LSERDYIE_Field := 16#0#;
      --  HSI Ready Interrupt Enable
      HSIRDYIE       : CIR_HSIRDYIE_Field := 16#0#;
      --  HSE Ready Interrupt Enable
      HSERDYIE       : CIR_HSERDYIE_Field := 16#0#;
      --  PLL Ready Interrupt Enable
      PLLRDYIE       : CIR_PLLRDYIE_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.STM32.UInt3 := 16#0#;
      --  Write-only. LSI Ready Interrupt Clear
      LSIRDYC        : CIR_LSIRDYC_Field := 16#0#;
      --  Write-only. LSE Ready Interrupt Clear
      LSERDYC        : CIR_LSERDYC_Field := 16#0#;
      --  Write-only. HSI Ready Interrupt Clear
      HSIRDYC        : CIR_HSIRDYC_Field := 16#0#;
      --  Write-only. HSE Ready Interrupt Clear
      HSERDYC        : CIR_HSERDYC_Field := 16#0#;
      --  Write-only. PLL Ready Interrupt Clear
      PLLRDYC        : CIR_PLLRDYC_Field := 16#0#;
      --  unspecified
      Reserved_21_22 : Interfaces.STM32.UInt2 := 16#0#;
      --  Write-only. Clock security system interrupt clear
      CSSC           : CIR_CSSC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.STM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CIR_Register use record
      LSIRDYF        at 0 range 0 .. 0;
      LSERDYF        at 0 range 1 .. 1;
      HSIRDYF        at 0 range 2 .. 2;
      HSERDYF        at 0 range 3 .. 3;
      PLLRDYF        at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      CSSF           at 0 range 7 .. 7;
      LSIRDYIE       at 0 range 8 .. 8;
      LSERDYIE       at 0 range 9 .. 9;
      HSIRDYIE       at 0 range 10 .. 10;
      HSERDYIE       at 0 range 11 .. 11;
      PLLRDYIE       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      LSIRDYC        at 0 range 16 .. 16;
      LSERDYC        at 0 range 17 .. 17;
      HSIRDYC        at 0 range 18 .. 18;
      HSERDYC        at 0 range 19 .. 19;
      PLLRDYC        at 0 range 20 .. 20;
      Reserved_21_22 at 0 range 21 .. 22;
      CSSC           at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype APB2RSTR_SYSCFGRST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_ADCRST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_SPI1RST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_USART1RST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_TIM15RST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_TIM16RST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_TIM17RST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_TIM19RST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_SDAD1RST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_SDAD2RST_Field is Interfaces.STM32.Bit;
   subtype APB2RSTR_SDAD3RST_Field is Interfaces.STM32.Bit;

   --  APB2 peripheral reset register (RCC_APB2RSTR)
   type APB2RSTR_Register is record
      --  SYSCFG and COMP reset
      SYSCFGRST      : APB2RSTR_SYSCFGRST_Field := 16#0#;
      --  unspecified
      Reserved_1_8   : Interfaces.STM32.Byte := 16#0#;
      --  ADC interface reset
      ADCRST         : APB2RSTR_ADCRST_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.STM32.UInt2 := 16#0#;
      --  SPI 1 reset
      SPI1RST        : APB2RSTR_SPI1RST_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.STM32.Bit := 16#0#;
      --  USART1 reset
      USART1RST      : APB2RSTR_USART1RST_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.STM32.Bit := 16#0#;
      --  TIM15 timer reset
      TIM15RST       : APB2RSTR_TIM15RST_Field := 16#0#;
      --  TIM16 timer reset
      TIM16RST       : APB2RSTR_TIM16RST_Field := 16#0#;
      --  TIM17 timer reset
      TIM17RST       : APB2RSTR_TIM17RST_Field := 16#0#;
      --  TIM19 timer reset
      TIM19RST       : APB2RSTR_TIM19RST_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.STM32.UInt4 := 16#0#;
      --  SDADC1 (Sigma delta ADC 1) reset
      SDAD1RST       : APB2RSTR_SDAD1RST_Field := 16#0#;
      --  SDADC2 (Sigma delta ADC 2) reset
      SDAD2RST       : APB2RSTR_SDAD2RST_Field := 16#0#;
      --  SDADC3 (Sigma delta ADC 3) reset
      SDAD3RST       : APB2RSTR_SDAD3RST_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.STM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2RSTR_Register use record
      SYSCFGRST      at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      ADCRST         at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      SPI1RST        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1RST      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15RST       at 0 range 16 .. 16;
      TIM16RST       at 0 range 17 .. 17;
      TIM17RST       at 0 range 18 .. 18;
      TIM19RST       at 0 range 19 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      SDAD1RST       at 0 range 24 .. 24;
      SDAD2RST       at 0 range 25 .. 25;
      SDAD3RST       at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype APB1RSTR_TIM2RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_TIM3RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_TIM4RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_TIM5RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_TIM6RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_TIM7RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_TIM12RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_TIM13RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_TIM14RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_TIM18RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_WWDGRST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_SPI2RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_SPI3RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_USART2RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_USART3RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_I2C1RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_I2C2RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_USBRST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_CANRST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_DAC3RST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_PWRRST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_DACRST_Field is Interfaces.STM32.Bit;
   subtype APB1RSTR_CECRST_Field is Interfaces.STM32.Bit;

   --  APB1 peripheral reset register (RCC_APB1RSTR)
   type APB1RSTR_Register is record
      --  Timer 2 reset
      TIM2RST        : APB1RSTR_TIM2RST_Field := 16#0#;
      --  Timer 3 reset
      TIM3RST        : APB1RSTR_TIM3RST_Field := 16#0#;
      --  Timer 14 reset
      TIM4RST        : APB1RSTR_TIM4RST_Field := 16#0#;
      --  Timer 5 reset
      TIM5RST        : APB1RSTR_TIM5RST_Field := 16#0#;
      --  Timer 6 reset
      TIM6RST        : APB1RSTR_TIM6RST_Field := 16#0#;
      --  Timer 7 reset
      TIM7RST        : APB1RSTR_TIM7RST_Field := 16#0#;
      --  Timer 12 reset
      TIM12RST       : APB1RSTR_TIM12RST_Field := 16#0#;
      --  Timer 13 reset
      TIM13RST       : APB1RSTR_TIM13RST_Field := 16#0#;
      --  Timer 14 reset
      TIM14RST       : APB1RSTR_TIM14RST_Field := 16#0#;
      --  Timer 18 reset
      TIM18RST       : APB1RSTR_TIM18RST_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.STM32.Bit := 16#0#;
      --  Window watchdog reset
      WWDGRST        : APB1RSTR_WWDGRST_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : Interfaces.STM32.UInt2 := 16#0#;
      --  SPI2 reset
      SPI2RST        : APB1RSTR_SPI2RST_Field := 16#0#;
      --  SPI3 reset
      SPI3RST        : APB1RSTR_SPI3RST_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.STM32.Bit := 16#0#;
      --  USART 2 reset
      USART2RST      : APB1RSTR_USART2RST_Field := 16#0#;
      --  USART3 reset
      USART3RST      : APB1RSTR_USART3RST_Field := 16#0#;
      --  unspecified
      Reserved_19_20 : Interfaces.STM32.UInt2 := 16#0#;
      --  I2C1 reset
      I2C1RST        : APB1RSTR_I2C1RST_Field := 16#0#;
      --  I2C2 reset
      I2C2RST        : APB1RSTR_I2C2RST_Field := 16#0#;
      --  USB reset
      USBRST         : APB1RSTR_USBRST_Field := 16#0#;
      --  unspecified
      Reserved_24_24 : Interfaces.STM32.Bit := 16#0#;
      --  CAN reset
      CANRST         : APB1RSTR_CANRST_Field := 16#0#;
      --  DAC3 reset
      DAC3RST        : APB1RSTR_DAC3RST_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.STM32.Bit := 16#0#;
      --  Power interface reset
      PWRRST         : APB1RSTR_PWRRST_Field := 16#0#;
      --  DAC interface reset
      DACRST         : APB1RSTR_DACRST_Field := 16#0#;
      --  HDMI CEC reset
      CECRST         : APB1RSTR_CECRST_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.STM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1RSTR_Register use record
      TIM2RST        at 0 range 0 .. 0;
      TIM3RST        at 0 range 1 .. 1;
      TIM4RST        at 0 range 2 .. 2;
      TIM5RST        at 0 range 3 .. 3;
      TIM6RST        at 0 range 4 .. 4;
      TIM7RST        at 0 range 5 .. 5;
      TIM12RST       at 0 range 6 .. 6;
      TIM13RST       at 0 range 7 .. 7;
      TIM14RST       at 0 range 8 .. 8;
      TIM18RST       at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGRST        at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2RST        at 0 range 14 .. 14;
      SPI3RST        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2RST      at 0 range 17 .. 17;
      USART3RST      at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      I2C1RST        at 0 range 21 .. 21;
      I2C2RST        at 0 range 22 .. 22;
      USBRST         at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      CANRST         at 0 range 25 .. 25;
      DAC3RST        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PWRRST         at 0 range 28 .. 28;
      DACRST         at 0 range 29 .. 29;
      CECRST         at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype AHBENR_DMAEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_DMA2EN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_SRAMEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_FLITFEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_CRCEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_IOPAEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_IOPBEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_IOPCEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_IOPDEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_IOPEEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_IOPFEN_Field is Interfaces.STM32.Bit;
   subtype AHBENR_TSCEN_Field is Interfaces.STM32.Bit;

   --  AHB Peripheral Clock enable register (RCC_AHBENR)
   type AHBENR_Register is record
      --  DMA1 clock enable
      DMAEN          : AHBENR_DMAEN_Field := 16#0#;
      --  DMA2 clock enable
      DMA2EN         : AHBENR_DMA2EN_Field := 16#0#;
      --  SRAM interface clock enable
      SRAMEN         : AHBENR_SRAMEN_Field := 16#1#;
      --  unspecified
      Reserved_3_3   : Interfaces.STM32.Bit := 16#0#;
      --  FLITF clock enable
      FLITFEN        : AHBENR_FLITFEN_Field := 16#1#;
      --  unspecified
      Reserved_5_5   : Interfaces.STM32.Bit := 16#0#;
      --  CRC clock enable
      CRCEN          : AHBENR_CRCEN_Field := 16#0#;
      --  unspecified
      Reserved_7_16  : Interfaces.STM32.UInt10 := 16#0#;
      --  I/O port A clock enable
      IOPAEN         : AHBENR_IOPAEN_Field := 16#0#;
      --  I/O port B clock enable
      IOPBEN         : AHBENR_IOPBEN_Field := 16#0#;
      --  I/O port C clock enable
      IOPCEN         : AHBENR_IOPCEN_Field := 16#0#;
      --  I/O port D clock enable
      IOPDEN         : AHBENR_IOPDEN_Field := 16#0#;
      --  I/O port E clock enable
      IOPEEN         : AHBENR_IOPEEN_Field := 16#0#;
      --  I/O port F clock enable
      IOPFEN         : AHBENR_IOPFEN_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.STM32.Bit := 16#0#;
      --  Touch sensing controller clock enable
      TSCEN          : AHBENR_TSCEN_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.STM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBENR_Register use record
      DMAEN          at 0 range 0 .. 0;
      DMA2EN         at 0 range 1 .. 1;
      SRAMEN         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      FLITFEN        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      CRCEN          at 0 range 6 .. 6;
      Reserved_7_16  at 0 range 7 .. 16;
      IOPAEN         at 0 range 17 .. 17;
      IOPBEN         at 0 range 18 .. 18;
      IOPCEN         at 0 range 19 .. 19;
      IOPDEN         at 0 range 20 .. 20;
      IOPEEN         at 0 range 21 .. 21;
      IOPFEN         at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TSCEN          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype APB2ENR_SYSCFGEN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_ADCEN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_TIM1EN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_SPI1EN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_USART1EN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_TIM15EN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_TIM16EN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_TIM17EN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_TIM19EN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_DBGMCUEN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_SDAD1EN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_SDAD2EN_Field is Interfaces.STM32.Bit;
   subtype APB2ENR_SDAD3EN_Field is Interfaces.STM32.Bit;

   --  APB2 peripheral clock enable register (RCC_APB2ENR)
   type APB2ENR_Register is record
      --  SYSCFG clock enable
      SYSCFGEN       : APB2ENR_SYSCFGEN_Field := 16#0#;
      --  unspecified
      Reserved_1_8   : Interfaces.STM32.Byte := 16#0#;
      --  ADC 1 interface clock enable
      ADCEN          : APB2ENR_ADCEN_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.STM32.Bit := 16#0#;
      --  TIM1 Timer clock enable
      TIM1EN         : APB2ENR_TIM1EN_Field := 16#0#;
      --  SPI 1 clock enable
      SPI1EN         : APB2ENR_SPI1EN_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.STM32.Bit := 16#0#;
      --  USART1 clock enable
      USART1EN       : APB2ENR_USART1EN_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.STM32.Bit := 16#0#;
      --  TIM15 timer clock enable
      TIM15EN        : APB2ENR_TIM15EN_Field := 16#0#;
      --  TIM16 timer clock enable
      TIM16EN        : APB2ENR_TIM16EN_Field := 16#0#;
      --  TIM17 timer clock enable
      TIM17EN        : APB2ENR_TIM17EN_Field := 16#0#;
      --  TIM19 timer clock enable
      TIM19EN        : APB2ENR_TIM19EN_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.STM32.UInt2 := 16#0#;
      --  MCU debug module clock enable
      DBGMCUEN       : APB2ENR_DBGMCUEN_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.STM32.Bit := 16#0#;
      --  SDADC1 (Sigma Delta ADC 1) clock enable
      SDAD1EN        : APB2ENR_SDAD1EN_Field := 16#0#;
      --  SDADC2 (Sigma Delta ADC 2) clock enable
      SDAD2EN        : APB2ENR_SDAD2EN_Field := 16#0#;
      --  SDADC3 (Sigma Delta ADC 3) clock enable
      SDAD3EN        : APB2ENR_SDAD3EN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.STM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB2ENR_Register use record
      SYSCFGEN       at 0 range 0 .. 0;
      Reserved_1_8   at 0 range 1 .. 8;
      ADCEN          at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      TIM1EN         at 0 range 11 .. 11;
      SPI1EN         at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      USART1EN       at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TIM15EN        at 0 range 16 .. 16;
      TIM16EN        at 0 range 17 .. 17;
      TIM17EN        at 0 range 18 .. 18;
      TIM19EN        at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      DBGMCUEN       at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      SDAD1EN        at 0 range 24 .. 24;
      SDAD2EN        at 0 range 25 .. 25;
      SDAD3EN        at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype APB1ENR_TIM2EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_TIM3EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_TIM4EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_TIM5EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_TIM6EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_TIM7EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_TIM12EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_TIM13EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_TIM14EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_TIM18EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_WWDGEN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_SPI2EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_SPI3EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_USART2EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_USART3EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_I2C1EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_I2C2EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_USBEN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_CANEN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_DAC3EN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_PWREN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_DACEN_Field is Interfaces.STM32.Bit;
   subtype APB1ENR_CECEN_Field is Interfaces.STM32.Bit;

   --  APB1 peripheral clock enable register (RCC_APB1ENR)
   type APB1ENR_Register is record
      --  Timer 2 clock enable
      TIM2EN         : APB1ENR_TIM2EN_Field := 16#0#;
      --  Timer 3 clock enable
      TIM3EN         : APB1ENR_TIM3EN_Field := 16#0#;
      --  Timer 4 clock enable
      TIM4EN         : APB1ENR_TIM4EN_Field := 16#0#;
      --  Timer 5 clock enable
      TIM5EN         : APB1ENR_TIM5EN_Field := 16#0#;
      --  Timer 6 clock enable
      TIM6EN         : APB1ENR_TIM6EN_Field := 16#0#;
      --  Timer 7 clock enable
      TIM7EN         : APB1ENR_TIM7EN_Field := 16#0#;
      --  Timer 12 clock enable
      TIM12EN        : APB1ENR_TIM12EN_Field := 16#0#;
      --  Timer 13 clock enable
      TIM13EN        : APB1ENR_TIM13EN_Field := 16#0#;
      --  Timer 14 clock enable
      TIM14EN        : APB1ENR_TIM14EN_Field := 16#0#;
      --  Timer 18 clock enable
      TIM18EN        : APB1ENR_TIM18EN_Field := 16#0#;
      --  unspecified
      Reserved_10_10 : Interfaces.STM32.Bit := 16#0#;
      --  Window watchdog clock enable
      WWDGEN         : APB1ENR_WWDGEN_Field := 16#0#;
      --  unspecified
      Reserved_12_13 : Interfaces.STM32.UInt2 := 16#0#;
      --  SPI 2 clock enable
      SPI2EN         : APB1ENR_SPI2EN_Field := 16#0#;
      --  SPI 3 clock enable
      SPI3EN         : APB1ENR_SPI3EN_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.STM32.Bit := 16#0#;
      --  USART 2 clock enable
      USART2EN       : APB1ENR_USART2EN_Field := 16#0#;
      --  USART 3 clock enable
      USART3EN       : APB1ENR_USART3EN_Field := 16#0#;
      --  unspecified
      Reserved_19_20 : Interfaces.STM32.UInt2 := 16#0#;
      --  I2C 1 clock enable
      I2C1EN         : APB1ENR_I2C1EN_Field := 16#0#;
      --  I2C 2 clock enable
      I2C2EN         : APB1ENR_I2C2EN_Field := 16#0#;
      --  USB clock enable
      USBEN          : APB1ENR_USBEN_Field := 16#0#;
      --  unspecified
      Reserved_24_24 : Interfaces.STM32.Bit := 16#0#;
      --  CAN clock enable
      CANEN          : APB1ENR_CANEN_Field := 16#0#;
      --  DAC3 interface clock enable
      DAC3EN         : APB1ENR_DAC3EN_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.STM32.Bit := 16#0#;
      --  Power interface clock enable
      PWREN          : APB1ENR_PWREN_Field := 16#0#;
      --  DAC interface clock enable
      DACEN          : APB1ENR_DACEN_Field := 16#0#;
      --  HDMI CEC interface clock enable
      CECEN          : APB1ENR_CECEN_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.STM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APB1ENR_Register use record
      TIM2EN         at 0 range 0 .. 0;
      TIM3EN         at 0 range 1 .. 1;
      TIM4EN         at 0 range 2 .. 2;
      TIM5EN         at 0 range 3 .. 3;
      TIM6EN         at 0 range 4 .. 4;
      TIM7EN         at 0 range 5 .. 5;
      TIM12EN        at 0 range 6 .. 6;
      TIM13EN        at 0 range 7 .. 7;
      TIM14EN        at 0 range 8 .. 8;
      TIM18EN        at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      WWDGEN         at 0 range 11 .. 11;
      Reserved_12_13 at 0 range 12 .. 13;
      SPI2EN         at 0 range 14 .. 14;
      SPI3EN         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      USART2EN       at 0 range 17 .. 17;
      USART3EN       at 0 range 18 .. 18;
      Reserved_19_20 at 0 range 19 .. 20;
      I2C1EN         at 0 range 21 .. 21;
      I2C2EN         at 0 range 22 .. 22;
      USBEN          at 0 range 23 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      CANEN          at 0 range 25 .. 25;
      DAC3EN         at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      PWREN          at 0 range 28 .. 28;
      DACEN          at 0 range 29 .. 29;
      CECEN          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype BDCR_LSEON_Field is Interfaces.STM32.Bit;
   subtype BDCR_LSERDY_Field is Interfaces.STM32.Bit;
   subtype BDCR_LSEBYP_Field is Interfaces.STM32.Bit;
   subtype BDCR_LSEDRV_Field is Interfaces.STM32.UInt2;
   subtype BDCR_RTCSEL_Field is Interfaces.STM32.UInt2;
   subtype BDCR_RTCEN_Field is Interfaces.STM32.Bit;
   subtype BDCR_BDRST_Field is Interfaces.STM32.Bit;

   --  Backup domain control register (RCC_BDCR)
   type BDCR_Register is record
      --  External Low Speed oscillator enable
      LSEON          : BDCR_LSEON_Field := 16#0#;
      --  Read-only. External Low Speed oscillator ready
      LSERDY         : BDCR_LSERDY_Field := 16#0#;
      --  External Low Speed oscillator bypass
      LSEBYP         : BDCR_LSEBYP_Field := 16#0#;
      --  LSE oscillator drive capability
      LSEDRV         : BDCR_LSEDRV_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.STM32.UInt3 := 16#0#;
      --  RTC clock source selection
      RTCSEL         : BDCR_RTCSEL_Field := 16#0#;
      --  unspecified
      Reserved_10_14 : Interfaces.STM32.UInt5 := 16#0#;
      --  RTC clock enable
      RTCEN          : BDCR_RTCEN_Field := 16#0#;
      --  Backup domain software reset
      BDRST          : BDCR_BDRST_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.STM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDCR_Register use record
      LSEON          at 0 range 0 .. 0;
      LSERDY         at 0 range 1 .. 1;
      LSEBYP         at 0 range 2 .. 2;
      LSEDRV         at 0 range 3 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RTCSEL         at 0 range 8 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      RTCEN          at 0 range 15 .. 15;
      BDRST          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CSR_LSION_Field is Interfaces.STM32.Bit;
   subtype CSR_LSIRDY_Field is Interfaces.STM32.Bit;
   subtype CSR_RMVF_Field is Interfaces.STM32.Bit;
   subtype CSR_OBLRSTF_Field is Interfaces.STM32.Bit;
   subtype CSR_PINRSTF_Field is Interfaces.STM32.Bit;
   subtype CSR_PORRSTF_Field is Interfaces.STM32.Bit;
   subtype CSR_SFTRSTF_Field is Interfaces.STM32.Bit;
   subtype CSR_IWDGRSTF_Field is Interfaces.STM32.Bit;
   subtype CSR_WWDGRSTF_Field is Interfaces.STM32.Bit;
   subtype CSR_LPWRRSTF_Field is Interfaces.STM32.Bit;

   --  Control/status register (RCC_CSR)
   type CSR_Register is record
      --  Internal low speed oscillator enable
      LSION         : CSR_LSION_Field := 16#0#;
      --  Read-only. Internal low speed oscillator ready
      LSIRDY        : CSR_LSIRDY_Field := 16#0#;
      --  unspecified
      Reserved_2_23 : Interfaces.STM32.UInt22 := 16#0#;
      --  Remove reset flag
      RMVF          : CSR_RMVF_Field := 16#0#;
      --  Option byte loader reset flag
      OBLRSTF       : CSR_OBLRSTF_Field := 16#0#;
      --  PIN reset flag
      PINRSTF       : CSR_PINRSTF_Field := 16#1#;
      --  POR/PDR reset flag
      PORRSTF       : CSR_PORRSTF_Field := 16#1#;
      --  Software reset flag
      SFTRSTF       : CSR_SFTRSTF_Field := 16#0#;
      --  Independent watchdog reset flag
      IWDGRSTF      : CSR_IWDGRSTF_Field := 16#0#;
      --  Window watchdog reset flag
      WWDGRSTF      : CSR_WWDGRSTF_Field := 16#0#;
      --  Low-power reset flag
      LPWRRSTF      : CSR_LPWRRSTF_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSR_Register use record
      LSION         at 0 range 0 .. 0;
      LSIRDY        at 0 range 1 .. 1;
      Reserved_2_23 at 0 range 2 .. 23;
      RMVF          at 0 range 24 .. 24;
      OBLRSTF       at 0 range 25 .. 25;
      PINRSTF       at 0 range 26 .. 26;
      PORRSTF       at 0 range 27 .. 27;
      SFTRSTF       at 0 range 28 .. 28;
      IWDGRSTF      at 0 range 29 .. 29;
      WWDGRSTF      at 0 range 30 .. 30;
      LPWRRSTF      at 0 range 31 .. 31;
   end record;

   subtype AHBRSTR_IOPARST_Field is Interfaces.STM32.Bit;
   subtype AHBRSTR_IOPBRST_Field is Interfaces.STM32.Bit;
   subtype AHBRSTR_IOPCRST_Field is Interfaces.STM32.Bit;
   subtype AHBRSTR_IOPDRST_Field is Interfaces.STM32.Bit;
   subtype AHBRSTR_IOPERST_Field is Interfaces.STM32.Bit;
   subtype AHBRSTR_IOPFRST_Field is Interfaces.STM32.Bit;
   subtype AHBRSTR_TSCRST_Field is Interfaces.STM32.Bit;

   --  AHB peripheral reset register
   type AHBRSTR_Register is record
      --  unspecified
      Reserved_0_16  : Interfaces.STM32.UInt17 := 16#0#;
      --  I/O port A reset
      IOPARST        : AHBRSTR_IOPARST_Field := 16#0#;
      --  I/O port B reset
      IOPBRST        : AHBRSTR_IOPBRST_Field := 16#0#;
      --  I/O port C reset
      IOPCRST        : AHBRSTR_IOPCRST_Field := 16#0#;
      --  I/O port D reset
      IOPDRST        : AHBRSTR_IOPDRST_Field := 16#0#;
      --  I/O port E reset
      IOPERST        : AHBRSTR_IOPERST_Field := 16#0#;
      --  I/O port F reset
      IOPFRST        : AHBRSTR_IOPFRST_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.STM32.Bit := 16#0#;
      --  Touch sensing controller reset
      TSCRST         : AHBRSTR_TSCRST_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.STM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AHBRSTR_Register use record
      Reserved_0_16  at 0 range 0 .. 16;
      IOPARST        at 0 range 17 .. 17;
      IOPBRST        at 0 range 18 .. 18;
      IOPCRST        at 0 range 19 .. 19;
      IOPDRST        at 0 range 20 .. 20;
      IOPERST        at 0 range 21 .. 21;
      IOPFRST        at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TSCRST         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype CFGR2_PREDIV_Field is Interfaces.STM32.UInt4;

   --  Clock configuration register 2
   type CFGR2_Register is record
      --  PREDIV division factor
      PREDIV        : CFGR2_PREDIV_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.STM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR2_Register use record
      PREDIV        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CFGR3_USART1SW_Field is Interfaces.STM32.UInt2;
   subtype CFGR3_I2C1SW_Field is Interfaces.STM32.Bit;
   subtype CFGR3_I2C2SW_Field is Interfaces.STM32.Bit;
   subtype CFGR3_CECSW_Field is Interfaces.STM32.Bit;
   subtype CFGR3_USART2SW_Field is Interfaces.STM32.UInt2;
   subtype CFGR3_USART3SW_Field is Interfaces.STM32.UInt2;

   --  Clock configuration register 3
   type CFGR3_Register is record
      --  USART1 clock source selection
      USART1SW       : CFGR3_USART1SW_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : Interfaces.STM32.UInt2 := 16#0#;
      --  I2C1 clock source selection
      I2C1SW         : CFGR3_I2C1SW_Field := 16#0#;
      --  I2C2 clock source selection
      I2C2SW         : CFGR3_I2C2SW_Field := 16#0#;
      --  HDMI CEC clock source selection
      CECSW          : CFGR3_CECSW_Field := 16#0#;
      --  unspecified
      Reserved_7_15  : Interfaces.STM32.UInt9 := 16#0#;
      --  USART2 clock source selection
      USART2SW       : CFGR3_USART2SW_Field := 16#0#;
      --  USART3 clock source selection
      USART3SW       : CFGR3_USART3SW_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.STM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGR3_Register use record
      USART1SW       at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      I2C1SW         at 0 range 4 .. 4;
      I2C2SW         at 0 range 5 .. 5;
      CECSW          at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      USART2SW       at 0 range 16 .. 17;
      USART3SW       at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Reset and clock control
   type RCC_Peripheral is record
      --  Clock control register
      CR       : aliased CR_Register;
      --  Clock configuration register (RCC_CFGR)
      CFGR     : aliased CFGR_Register;
      --  Clock interrupt register (RCC_CIR)
      CIR      : aliased CIR_Register;
      --  APB2 peripheral reset register (RCC_APB2RSTR)
      APB2RSTR : aliased APB2RSTR_Register;
      --  APB1 peripheral reset register (RCC_APB1RSTR)
      APB1RSTR : aliased APB1RSTR_Register;
      --  AHB Peripheral Clock enable register (RCC_AHBENR)
      AHBENR   : aliased AHBENR_Register;
      --  APB2 peripheral clock enable register (RCC_APB2ENR)
      APB2ENR  : aliased APB2ENR_Register;
      --  APB1 peripheral clock enable register (RCC_APB1ENR)
      APB1ENR  : aliased APB1ENR_Register;
      --  Backup domain control register (RCC_BDCR)
      BDCR     : aliased BDCR_Register;
      --  Control/status register (RCC_CSR)
      CSR      : aliased CSR_Register;
      --  AHB peripheral reset register
      AHBRSTR  : aliased AHBRSTR_Register;
      --  Clock configuration register 2
      CFGR2    : aliased CFGR2_Register;
      --  Clock configuration register 3
      CFGR3    : aliased CFGR3_Register;
   end record
     with Volatile;

   for RCC_Peripheral use record
      CR       at 16#0# range 0 .. 31;
      CFGR     at 16#4# range 0 .. 31;
      CIR      at 16#8# range 0 .. 31;
      APB2RSTR at 16#C# range 0 .. 31;
      APB1RSTR at 16#10# range 0 .. 31;
      AHBENR   at 16#14# range 0 .. 31;
      APB2ENR  at 16#18# range 0 .. 31;
      APB1ENR  at 16#1C# range 0 .. 31;
      BDCR     at 16#20# range 0 .. 31;
      CSR      at 16#24# range 0 .. 31;
      AHBRSTR  at 16#28# range 0 .. 31;
      CFGR2    at 16#2C# range 0 .. 31;
      CFGR3    at 16#30# range 0 .. 31;
   end record;

   --  Reset and clock control
   RCC_Periph : aliased RCC_Peripheral
     with Import, Address => RCC_Base;

end Interfaces.STM32.RCC;

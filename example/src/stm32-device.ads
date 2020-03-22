
with STM32.GPIO;     use STM32.GPIO;

package STM32.Device is
   pragma Elaborate_Body;

   Unknown_Device : exception;
   --  Raised by the routines below for a device passed as an actual parameter
   --  when that device is not present on the given hardware instance.

   procedure Enable_Clock (This : aliased in out GPIO_Port)
     with Inline;
   procedure Enable_Clock (Point : GPIO_Point)
     with Inline;
   procedure Enable_Clock (Points : GPIO_Points)
     with Inline;

  
   GPIO_A : aliased GPIO_Port with Import, Volatile, Address => GPIOA_Base;
   GPIO_B : aliased GPIO_Port with Import, Volatile, Address => GPIOB_Base;
   GPIO_C : aliased GPIO_Port with Import, Volatile, Address => GPIOC_Base;
   GPIO_D : aliased GPIO_Port with Import, Volatile, Address => GPIOD_Base;
   GPIO_E : aliased GPIO_Port with Import, Volatile, Address => GPIOE_Base;
   GPIO_F : aliased GPIO_Port with Import, Volatile, Address => GPIOF_Base;
   GPIO_G : aliased GPIO_Port with Import, Volatile, Address => GPIOG_Base;
   GPIO_H : aliased GPIO_Port with Import, Volatile, Address => GPIOH_Base;

   
   
   PA0  : aliased GPIO_Point := (GPIO_A'Access, Pin_0);
   PA1  : aliased GPIO_Point := (GPIO_A'Access, Pin_1);
   PA2  : aliased GPIO_Point := (GPIO_A'Access, Pin_2);
   PA3  : aliased GPIO_Point := (GPIO_A'Access, Pin_3);
   PA4  : aliased GPIO_Point := (GPIO_A'Access, Pin_4);
   PA5  : aliased GPIO_Point := (GPIO_A'Access, Pin_5);
   PA6  : aliased GPIO_Point := (GPIO_A'Access, Pin_6);
   PA7  : aliased GPIO_Point := (GPIO_A'Access, Pin_7);
   PA8  : aliased GPIO_Point := (GPIO_A'Access, Pin_8);
   PA9  : aliased GPIO_Point := (GPIO_A'Access, Pin_9);
   PA10 : aliased GPIO_Point := (GPIO_A'Access, Pin_10);
   PA11 : aliased GPIO_Point := (GPIO_A'Access, Pin_11);
   PA12 : aliased GPIO_Point := (GPIO_A'Access, Pin_12);
   PA13 : aliased GPIO_Point := (GPIO_A'Access, Pin_13);
   PA14 : aliased GPIO_Point := (GPIO_A'Access, Pin_14);
   PA15 : aliased GPIO_Point := (GPIO_A'Access, Pin_15);
   PB0  : aliased GPIO_Point := (GPIO_B'Access, Pin_0);
   PB1  : aliased GPIO_Point := (GPIO_B'Access, Pin_1);
   PB2  : aliased GPIO_Point := (GPIO_B'Access, Pin_2);
   PB3  : aliased GPIO_Point := (GPIO_B'Access, Pin_3);
   PB4  : aliased GPIO_Point := (GPIO_B'Access, Pin_4);
   PB5  : aliased GPIO_Point := (GPIO_B'Access, Pin_5);
   PB6  : aliased GPIO_Point := (GPIO_B'Access, Pin_6);
   PB7  : aliased GPIO_Point := (GPIO_B'Access, Pin_7);
   PB8  : aliased GPIO_Point := (GPIO_B'Access, Pin_8);
   PB9  : aliased GPIO_Point := (GPIO_B'Access, Pin_9);
   PB10 : aliased GPIO_Point := (GPIO_B'Access, Pin_10);
   PB11 : aliased GPIO_Point := (GPIO_B'Access, Pin_11);
   PB12 : aliased GPIO_Point := (GPIO_B'Access, Pin_12);
   PB13 : aliased GPIO_Point := (GPIO_B'Access, Pin_13);
   PB14 : aliased GPIO_Point := (GPIO_B'Access, Pin_14);
   PB15 : aliased GPIO_Point := (GPIO_B'Access, Pin_15);
   PC0  : aliased GPIO_Point := (GPIO_C'Access, Pin_0);
   PC1  : aliased GPIO_Point := (GPIO_C'Access, Pin_1);
   PC2  : aliased GPIO_Point := (GPIO_C'Access, Pin_2);
   PC3  : aliased GPIO_Point := (GPIO_C'Access, Pin_3);
   PC4  : aliased GPIO_Point := (GPIO_C'Access, Pin_4);
   PC5  : aliased GPIO_Point := (GPIO_C'Access, Pin_5);
   PC6  : aliased GPIO_Point := (GPIO_C'Access, Pin_6);
   PC7  : aliased GPIO_Point := (GPIO_C'Access, Pin_7);
   PC8  : aliased GPIO_Point := (GPIO_C'Access, Pin_8);
   PC9  : aliased GPIO_Point := (GPIO_C'Access, Pin_9);
   PC10 : aliased GPIO_Point := (GPIO_C'Access, Pin_10);
   PC11 : aliased GPIO_Point := (GPIO_C'Access, Pin_11);
   PC12 : aliased GPIO_Point := (GPIO_C'Access, Pin_12);
   PC13 : aliased GPIO_Point := (GPIO_C'Access, Pin_13);
   PC14 : aliased GPIO_Point := (GPIO_C'Access, Pin_14);
   PC15 : aliased GPIO_Point := (GPIO_C'Access, Pin_15);
   PD0  : aliased GPIO_Point := (GPIO_D'Access, Pin_0);
   PD1  : aliased GPIO_Point := (GPIO_D'Access, Pin_1);
   PD2  : aliased GPIO_Point := (GPIO_D'Access, Pin_2);
   PD3  : aliased GPIO_Point := (GPIO_D'Access, Pin_3);
   PD4  : aliased GPIO_Point := (GPIO_D'Access, Pin_4);
   PD5  : aliased GPIO_Point := (GPIO_D'Access, Pin_5);
   PD6  : aliased GPIO_Point := (GPIO_D'Access, Pin_6);
   PD7  : aliased GPIO_Point := (GPIO_D'Access, Pin_7);
   PD8  : aliased GPIO_Point := (GPIO_D'Access, Pin_8);
   PD9  : aliased GPIO_Point := (GPIO_D'Access, Pin_9);
   PD10 : aliased GPIO_Point := (GPIO_D'Access, Pin_10);
   PD11 : aliased GPIO_Point := (GPIO_D'Access, Pin_11);
   PD12 : aliased GPIO_Point := (GPIO_D'Access, Pin_12);
   PD13 : aliased GPIO_Point := (GPIO_D'Access, Pin_13);
   PD14 : aliased GPIO_Point := (GPIO_D'Access, Pin_14);
   PD15 : aliased GPIO_Point := (GPIO_D'Access, Pin_15);
   PE0  : aliased GPIO_Point := (GPIO_E'Access, Pin_0);
   PE1  : aliased GPIO_Point := (GPIO_E'Access, Pin_1);
   PE2  : aliased GPIO_Point := (GPIO_E'Access, Pin_2);
   PE3  : aliased GPIO_Point := (GPIO_E'Access, Pin_3);
   PE4  : aliased GPIO_Point := (GPIO_E'Access, Pin_4);
   PE5  : aliased GPIO_Point := (GPIO_E'Access, Pin_5);
   PE6  : aliased GPIO_Point := (GPIO_E'Access, Pin_6);
   PE7  : aliased GPIO_Point := (GPIO_E'Access, Pin_7);
   PE8  : aliased GPIO_Point := (GPIO_E'Access, Pin_8);
   PE9  : aliased GPIO_Point := (GPIO_E'Access, Pin_9);
   PE10 : aliased GPIO_Point := (GPIO_E'Access, Pin_10);
   PE11 : aliased GPIO_Point := (GPIO_E'Access, Pin_11);
   PE12 : aliased GPIO_Point := (GPIO_E'Access, Pin_12);
   PE13 : aliased GPIO_Point := (GPIO_E'Access, Pin_13);
   PE14 : aliased GPIO_Point := (GPIO_E'Access, Pin_14);
   PE15 : aliased GPIO_Point := (GPIO_E'Access, Pin_15);
   PF0  : aliased GPIO_Point := (GPIO_F'Access, Pin_0);
   PF1  : aliased GPIO_Point := (GPIO_F'Access, Pin_1);
   PF2  : aliased GPIO_Point := (GPIO_F'Access, Pin_2);
   PF3  : aliased GPIO_Point := (GPIO_F'Access, Pin_3);
   PF4  : aliased GPIO_Point := (GPIO_F'Access, Pin_4);
   PF5  : aliased GPIO_Point := (GPIO_F'Access, Pin_5);
   PF6  : aliased GPIO_Point := (GPIO_F'Access, Pin_6);
   PF7  : aliased GPIO_Point := (GPIO_F'Access, Pin_7);
   PF8  : aliased GPIO_Point := (GPIO_F'Access, Pin_8);
   PF9  : aliased GPIO_Point := (GPIO_F'Access, Pin_9);
   PF10 : aliased GPIO_Point := (GPIO_F'Access, Pin_10);
   PF11 : aliased GPIO_Point := (GPIO_F'Access, Pin_11);
   PF12 : aliased GPIO_Point := (GPIO_F'Access, Pin_12);
   PF13 : aliased GPIO_Point := (GPIO_F'Access, Pin_13);
   PF14 : aliased GPIO_Point := (GPIO_F'Access, Pin_14);
   PF15 : aliased GPIO_Point := (GPIO_F'Access, Pin_15);
   PG0  : aliased GPIO_Point := (GPIO_G'Access, Pin_0);
   PG1  : aliased GPIO_Point := (GPIO_G'Access, Pin_1);
   PG2  : aliased GPIO_Point := (GPIO_G'Access, Pin_2);
   PG3  : aliased GPIO_Point := (GPIO_G'Access, Pin_3);
   PG4  : aliased GPIO_Point := (GPIO_G'Access, Pin_4);
   PG5  : aliased GPIO_Point := (GPIO_G'Access, Pin_5);
   PG6  : aliased GPIO_Point := (GPIO_G'Access, Pin_6);
   PG7  : aliased GPIO_Point := (GPIO_G'Access, Pin_7);
   PG8  : aliased GPIO_Point := (GPIO_G'Access, Pin_8);
   PG9  : aliased GPIO_Point := (GPIO_G'Access, Pin_9);
   PG10 : aliased GPIO_Point := (GPIO_G'Access, Pin_10);
   PG11 : aliased GPIO_Point := (GPIO_G'Access, Pin_11);
   PG12 : aliased GPIO_Point := (GPIO_G'Access, Pin_12);
   PG13 : aliased GPIO_Point := (GPIO_G'Access, Pin_13);
   PG14 : aliased GPIO_Point := (GPIO_G'Access, Pin_14);
   PG15 : aliased GPIO_Point := (GPIO_G'Access, Pin_15);
   PH0  : aliased GPIO_Point := (GPIO_H'Access, Pin_0);
   PH1  : aliased GPIO_Point := (GPIO_H'Access, Pin_1);
   PH2  : aliased GPIO_Point := (GPIO_H'Access, Pin_2);
   PH3  : aliased GPIO_Point := (GPIO_H'Access, Pin_3);
   PH4  : aliased GPIO_Point := (GPIO_H'Access, Pin_4);
   PH5  : aliased GPIO_Point := (GPIO_H'Access, Pin_5);
   PH6  : aliased GPIO_Point := (GPIO_H'Access, Pin_6);
   PH7  : aliased GPIO_Point := (GPIO_H'Access, Pin_7);
   PH8  : aliased GPIO_Point := (GPIO_H'Access, Pin_8);
   PH9  : aliased GPIO_Point := (GPIO_H'Access, Pin_9);
   PH10 : aliased GPIO_Point := (GPIO_H'Access, Pin_10);
   PH11 : aliased GPIO_Point := (GPIO_H'Access, Pin_11);
   PH12 : aliased GPIO_Point := (GPIO_H'Access, Pin_12);
   PH13 : aliased GPIO_Point := (GPIO_H'Access, Pin_13);
   PH14 : aliased GPIO_Point := (GPIO_H'Access, Pin_14);
   PH15 : aliased GPIO_Point := (GPIO_H'Access, Pin_15);


end STM32.Device;

--  Root package for the drivers of the STM32 family of MCU

pragma Warnings (Off);
with Interfaces.STM32;               use Interfaces.STM32;
--  with HAL;     use HAL;
pragma Warnings (On);

package STM32 is
   pragma Preelaborate;

   type GPIO_Alternate_Function is private;

private

   type GPIO_Alternate_Function is new UInt4;

end STM32;

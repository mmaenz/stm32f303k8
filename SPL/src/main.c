#include <stm32f30x_gpio.h>
#include <stm32f30x_rcc.h>
#include "protothread.h"
#include "csptr/smart_ptr.h"

#define LEDPORT (GPIOB)
#define LEDPIN (GPIO_Pin_3)
#define ENABLE_GPIO_CLOCK (RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOB, ENABLE))

typedef struct {
     pt_thread_t pt_thread;
     pt_func_t pt_func;
     bool state;
 } thread_context_t;

/* timing is not guaranteed :) */
static void simple_delay(void * const env) {
	thread_context_t * const c = env;
	/* simple delay loop */
	for (int i = 0; i < 1000000; i++) {
		asm volatile ("nop");
	}

}

void test(void) {
	smart int *some_int = unique_ptr(int, 1);
	*some_int = 200;
}

/* system entry point */
int main(void) {
	test();
	protothread_t const pt = protothread_create();

	thread_context_t * const blink = malloc(sizeof(*blink));
	thread_context_t * const delay = malloc(sizeof(*delay));


	/* gpio init struct */
	GPIO_InitTypeDef gpio;
	/* reset rcc */
	RCC_DeInit();
	/* enable clock GPIO */
	ENABLE_GPIO_CLOCK;
	/* use LED pin */
	gpio.GPIO_Pin = LEDPIN;
	/* mode: output */
	gpio.GPIO_Mode = GPIO_Mode_OUT;
	/* output type: push-pull */
	gpio.GPIO_OType = GPIO_OType_PP;
	/* apply configuration */
	GPIO_Init(LEDPORT, &gpio);
	/* main program loop */
	for (;;) {
		/* set led on */
		GPIO_SetBits(LEDPORT, LEDPIN);
		/* delay */
		simple_delay(1000000);
		/* clear led */
		GPIO_ResetBits(LEDPORT, LEDPIN);
		/* delay */
		simple_delay(1000000);
	}

	/* never reached */
	return 0;
}

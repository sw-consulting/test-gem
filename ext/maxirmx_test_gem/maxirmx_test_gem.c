#include "maxirmx_test_gem.h"

VALUE rb_mMaxirmxTestGem;

void
Init_maxirmx_test_gem(void)
{
  rb_mMaxirmxTestGem = rb_define_module("MaxirmxTestGem");
}

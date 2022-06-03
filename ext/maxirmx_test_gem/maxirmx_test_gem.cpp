#include "maxirmx_test_gem.h"

using namespace Rice;

class Hello
{
public:
  Hello() { };
  std::string hello() { return "=== Hello ==="; };
};

extern "C"
void Init_maxirmx_test_gem(void)
{
  Module rb_mMaxirmxTestGem = define_module("MaxirmxTestGem");
  Data_Type<Hello> rb_cHello =
    define_class_under<Hello>(rb_mMaxirmxTestGem, "Hello")
    .define_constructor(Constructor<Hello>())
    .define_method("hello", &Hello::hello);
}

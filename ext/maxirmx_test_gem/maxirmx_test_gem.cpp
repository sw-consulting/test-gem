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
  Module rb_mTestGem = define_module("TestGem");
  Data_Type<Hello> rb_cHello =
    define_class_under<Hello>(rb_mTestGem, "Hello")
    .define_constructor(Constructor<Hello>())
    .define_method("hello", &Hello::hello);
}

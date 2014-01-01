#include <stdio.h>
#include <ruby.h>

static VALUE
c_hello(VALUE self, VALUE name_val)
{
  char *name = StringValuePtr(name_val);
  char greet[100];
  sprintf(greet, "Hello, %s", name);
  return rb_str_new2(greet);
}

void
Init_hello_gem_with_extensions(void)
{
  VALUE cHelloGemWithExtensions;

  cHelloGemWithExtensions = rb_const_get(rb_cObject, rb_intern("HelloGemWithExtensions"));

  rb_define_method(cHelloGemWithExtensions, "hello", c_hello, 1);
}

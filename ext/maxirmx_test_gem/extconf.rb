# frozen_string_literal: true

require "mkmf-rice"
$CPPFLAGS << " -std=c++17"
create_makefile("maxirmx_test_gem/maxirmx_test_gem")

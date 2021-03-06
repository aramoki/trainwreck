#*****************************************************************************
# riscv_fmin.S
#-----------------------------------------------------------------------------
#
# Test f{min|max}.{s|d} instructinos.
#

#include "test_macros.h"

TEST_RISCV_BEGIN
TEST_STATS_BEGIN

#-------------------------------------------------------------
# Arithmetic tests
#-------------------------------------------------------------

TEST_FP_ENABLE

TEST_FP_OP2_S( 2,  fmin.s,        1.0,        2.5,        1.0 );
TEST_FP_OP2_S( 3,  fmin.s,    -1235.1,    -1235.1,        1.1 );
TEST_FP_OP2_S( 4,  fmin.s,    -1235.1,        1.1,    -1235.1 );
TEST_FP_OP2_S( 5,  fmin.s,    -1235.1,        NaN,    -1235.1 );
TEST_FP_OP2_S( 6,  fmin.s, 0.00000001, 3.14159265, 0.00000001 );
TEST_FP_OP2_S( 7,  fmin.s,       -2.0,       -1.0,       -2.0 );

TEST_FP_OP2_S(12,  fmax.s,        2.5,        2.5,        1.0 );
TEST_FP_OP2_S(13,  fmax.s,        1.1,    -1235.1,        1.1 );
TEST_FP_OP2_S(14,  fmax.s,        1.1,        1.1,    -1235.1 );
TEST_FP_OP2_S(15,  fmax.s,    -1235.1,        NaN,    -1235.1 );
TEST_FP_OP2_S(16,  fmax.s, 3.14159265, 3.14159265, 0.00000001 );
TEST_FP_OP2_S(17,  fmax.s,       -1.0,       -1.0,       -2.0 );

TEST_FP_OP2_D(22,  fmin.d,        1.0,        2.5,        1.0 );
TEST_FP_OP2_D(23,  fmin.d,    -1235.1,    -1235.1,        1.1 );
TEST_FP_OP2_D(24,  fmin.d,    -1235.1,        1.1,    -1235.1 );
TEST_FP_OP2_D(25,  fmin.d,    -1235.1,        NaN,    -1235.1 );
TEST_FP_OP2_D(26,  fmin.d, 0.00000001, 3.14159265, 0.00000001 );
TEST_FP_OP2_D(27,  fmin.d,       -2.0,       -1.0,       -2.0 );

TEST_FP_OP2_D(32,  fmax.d,        2.5,        2.5,        1.0 );
TEST_FP_OP2_D(33,  fmax.d,        1.1,    -1235.1,        1.1 );
TEST_FP_OP2_D(34,  fmax.d,        1.1,        1.1,    -1235.1 );
TEST_FP_OP2_D(35,  fmax.d,    -1235.1,        NaN,    -1235.1 );
TEST_FP_OP2_D(36,  fmax.d, 3.14159265, 3.14159265, 0.00000001 );
TEST_FP_OP2_D(37,  fmax.d,       -1.0,       -1.0,       -2.0 );

TEST_STATS_END
TEST_PASSFAIL
TEST_RISCV_END

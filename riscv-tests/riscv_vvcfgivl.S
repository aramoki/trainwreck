#*****************************************************************************
# riscv_addiw.S
#-----------------------------------------------------------------------------
#
# Test addiw instruction.
#

#include "test_macros.h"

        TEST_RISCV_BEGIN
        TEST_STATS_BEGIN

        mfpcr a0,cr0
        ori a0,a0,0x6
        mtpcr a0,cr0

        #-------------------------------------------------------------
        # Arithmetic tests
        #-------------------------------------------------------------

        TEST_VVCFGIVL( 2, 0, 0, 0x07, 768, 768 );
        TEST_VVCFGIVL( 3, 0, 0, 0x07, 769, 768 );
        TEST_VVCFGIVL( 4, 0, 0, 0x07, 767, 767 );

        TEST_VVCFGIVL( 5, 0, 0, 0xff, 2048, 2048 );
        TEST_VVCFGIVL( 6, 0, 0, 0xff, 2049, 2048 );
        TEST_VVCFGIVL( 7, 0, 0, 0xff, 2047, 2047 );

        TEST_VVCFGIVL( 8, 1, 0, 0x07, 768, 768 );
        TEST_VVCFGIVL( 9, 1, 0, 0x07, 769, 768 );
        TEST_VVCFGIVL( 10, 1, 0, 0x07, 767, 767 );

        TEST_VVCFGIVL( 11, 1, 0, 0xff, 2048, 2048 );
        TEST_VVCFGIVL( 12, 1, 0, 0xff, 2049, 2048 );
        TEST_VVCFGIVL( 13, 1, 0, 0xff, 2047, 2047 );

        TEST_VVCFGIVL( 14, 2, 0, 0x07, 768, 768 );
        TEST_VVCFGIVL( 15, 2, 0, 0x07, 769, 768 );
        TEST_VVCFGIVL( 16, 2, 0, 0x07, 767, 767 );

        TEST_VVCFGIVL( 17, 2, 0, 0xff, 2048, 2048 );
        TEST_VVCFGIVL( 18, 2, 0, 0xff, 2049, 2048 );
        TEST_VVCFGIVL( 19, 2, 0, 0xff, 2047, 2047 );

        TEST_VVCFGIVL( 20, 3, 0, 0x07, 384, 384 );
        TEST_VVCFGIVL( 21, 3, 0, 0x07, 385, 384 );
        TEST_VVCFGIVL( 22, 3, 0, 0x07, 383, 383 );

        TEST_VVCFGIVL( 23, 3, 0, 0xff, 1024, 1024 );
        TEST_VVCFGIVL( 24, 3, 0, 0xff, 1025, 1024 );
        TEST_VVCFGIVL( 25, 3, 0, 0xff, 1023, 1023 );

        TEST_VVCFGIVL( 26, 4, 0, 0x07, 255, 255 );
        TEST_VVCFGIVL( 27, 4, 0, 0x07, 256, 255 );
        TEST_VVCFGIVL( 28, 4, 0, 0x07, 254, 254 );

        TEST_VVCFGIVL( 29, 4, 0, 0xff, 680, 680 );
        TEST_VVCFGIVL( 30, 4, 0, 0xff, 681, 680 );
        TEST_VVCFGIVL( 31, 4, 0, 0xff, 679, 679 );

        TEST_VVCFGIVL( 32, 5, 0, 0x07, 192, 192 );
        TEST_VVCFGIVL( 33, 5, 0, 0x07, 193, 192 );
        TEST_VVCFGIVL( 34, 5, 0, 0x07, 191, 191 );

        TEST_VVCFGIVL( 35, 5, 0, 0xff, 512, 512 );
        TEST_VVCFGIVL( 36, 5, 0, 0xff, 513, 512 );
        TEST_VVCFGIVL( 37, 5, 0, 0xff, 511, 511 );

        TEST_VVCFGIVL( 38, 6, 0, 0x07, 153, 153 );
        TEST_VVCFGIVL( 39, 6, 0, 0x07, 154, 153 );
        TEST_VVCFGIVL( 40, 6, 0, 0x07, 152, 152 );

        TEST_VVCFGIVL( 41, 6, 0, 0xff, 408, 408 );
        TEST_VVCFGIVL( 42, 6, 0, 0xff, 409, 408 );
        TEST_VVCFGIVL( 43, 6, 0, 0xff, 407, 407 );

        TEST_VVCFGIVL( 44, 7, 0, 0x07, 126, 126 );
        TEST_VVCFGIVL( 45, 7, 0, 0x07, 127, 126 );
        TEST_VVCFGIVL( 46, 7, 0, 0x07, 125, 125 );

        TEST_VVCFGIVL( 47, 7, 0, 0xff, 336, 336 );
        TEST_VVCFGIVL( 48, 7, 0, 0xff, 337, 336 );
        TEST_VVCFGIVL( 49, 7, 0, 0xff, 335, 335 );

        TEST_VVCFGIVL( 50, 8, 0, 0x07, 108, 108 );
        TEST_VVCFGIVL( 51, 8, 0, 0x07, 109, 108 );
        TEST_VVCFGIVL( 52, 8, 0, 0x07, 107, 107 );

        TEST_VVCFGIVL( 53, 8, 0, 0xff, 288, 288 );
        TEST_VVCFGIVL( 54, 8, 0, 0xff, 289, 288 );
        TEST_VVCFGIVL( 55, 8, 0, 0xff, 287, 287 );

        TEST_VVCFGIVL( 56, 9, 0, 0x07, 96, 96 );
        TEST_VVCFGIVL( 57, 9, 0, 0x07, 97, 96 );
        TEST_VVCFGIVL( 58, 9, 0, 0x07, 95, 95 );

        TEST_VVCFGIVL( 59, 9, 0, 0xff, 256, 256 );
        TEST_VVCFGIVL( 60, 9, 0, 0xff, 257, 256 );
        TEST_VVCFGIVL( 61, 9, 0, 0xff, 255, 255 );

        TEST_VVCFGIVL( 62, 10, 0, 0x07, 84, 84 );
        TEST_VVCFGIVL( 63, 10, 0, 0x07, 85, 84 );
        TEST_VVCFGIVL( 64, 10, 0, 0x07, 83, 83 );

        TEST_VVCFGIVL( 65, 10, 0, 0xff, 224, 224 );
        TEST_VVCFGIVL( 66, 10, 0, 0xff, 225, 224 );
        TEST_VVCFGIVL( 67, 10, 0, 0xff, 223, 223 );

        TEST_VVCFGIVL( 68, 11, 0, 0x07, 75, 75 );
        TEST_VVCFGIVL( 69, 11, 0, 0x07, 76, 75 );
        TEST_VVCFGIVL( 70, 11, 0, 0x07, 74, 74 );

        TEST_VVCFGIVL( 71, 11, 0, 0xff, 200, 200 );
        TEST_VVCFGIVL( 72, 11, 0, 0xff, 201, 200 );
        TEST_VVCFGIVL( 73, 11, 0, 0xff, 199, 199 );

        TEST_VVCFGIVL( 74, 12, 0, 0x07, 69, 69 );
        TEST_VVCFGIVL( 75, 12, 0, 0x07, 70, 69 );
        TEST_VVCFGIVL( 76, 12, 0, 0x07, 68, 68 );

        TEST_VVCFGIVL( 77, 12, 0, 0xff, 184, 184 );
        TEST_VVCFGIVL( 78, 12, 0, 0xff, 185, 184 );
        TEST_VVCFGIVL( 79, 12, 0, 0xff, 183, 183 );

        TEST_VVCFGIVL( 80, 13, 0, 0x07, 63, 63 );
        TEST_VVCFGIVL( 81, 13, 0, 0x07, 64, 63 );
        TEST_VVCFGIVL( 82, 13, 0, 0x07, 62, 62 );

        TEST_VVCFGIVL( 83, 13, 0, 0xff, 168, 168 );
        TEST_VVCFGIVL( 84, 13, 0, 0xff, 169, 168 );
        TEST_VVCFGIVL( 85, 13, 0, 0xff, 167, 167 );

        TEST_VVCFGIVL( 86, 14, 0, 0x07, 57, 57 );
        TEST_VVCFGIVL( 87, 14, 0, 0x07, 58, 57 );
        TEST_VVCFGIVL( 88, 14, 0, 0x07, 56, 56 );

        TEST_VVCFGIVL( 89, 14, 0, 0xff, 152, 152 );
        TEST_VVCFGIVL( 90, 14, 0, 0xff, 153, 152 );
        TEST_VVCFGIVL( 91, 14, 0, 0xff, 151, 151 );

        TEST_VVCFGIVL( 92, 15, 0, 0x07, 54, 54 );
        TEST_VVCFGIVL( 93, 15, 0, 0x07, 55, 54 );
        TEST_VVCFGIVL( 94, 15, 0, 0x07, 53, 53 );

        TEST_VVCFGIVL( 95, 15, 0, 0xff, 144, 144 );
        TEST_VVCFGIVL( 96, 15, 0, 0xff, 145, 144 );
        TEST_VVCFGIVL( 97, 15, 0, 0xff, 143, 143 );

        TEST_VVCFGIVL( 98, 16, 0, 0x07, 51, 51 );
        TEST_VVCFGIVL( 99, 16, 0, 0x07, 52, 51 );
        TEST_VVCFGIVL( 100, 16, 0, 0x07, 50, 50 );

        TEST_VVCFGIVL( 101, 16, 0, 0xff, 136, 136 );
        TEST_VVCFGIVL( 102, 16, 0, 0xff, 137, 136 );
        TEST_VVCFGIVL( 103, 16, 0, 0xff, 135, 135 );

        TEST_VVCFGIVL( 104, 17, 0, 0x07, 48, 48 );
        TEST_VVCFGIVL( 105, 17, 0, 0x07, 49, 48 );
        TEST_VVCFGIVL( 106, 17, 0, 0x07, 47, 47 );

        TEST_VVCFGIVL( 107, 17, 0, 0xff, 128, 128 );
        TEST_VVCFGIVL( 108, 17, 0, 0xff, 129, 128 );
        TEST_VVCFGIVL( 109, 17, 0, 0xff, 127, 127 );

        TEST_VVCFGIVL( 110, 18, 0, 0x07, 45, 45 );
        TEST_VVCFGIVL( 111, 18, 0, 0x07, 46, 45 );
        TEST_VVCFGIVL( 112, 18, 0, 0x07, 44, 44 );

        TEST_VVCFGIVL( 113, 18, 0, 0xff, 120, 120 );
        TEST_VVCFGIVL( 114, 18, 0, 0xff, 121, 120 );
        TEST_VVCFGIVL( 115, 18, 0, 0xff, 119, 119 );

        TEST_VVCFGIVL( 116, 19, 0, 0x07, 42, 42 );
        TEST_VVCFGIVL( 117, 19, 0, 0x07, 43, 42 );
        TEST_VVCFGIVL( 118, 19, 0, 0x07, 41, 41 );

        TEST_VVCFGIVL( 119, 19, 0, 0xff, 112, 112 );
        TEST_VVCFGIVL( 120, 19, 0, 0xff, 113, 112 );
        TEST_VVCFGIVL( 121, 19, 0, 0xff, 111, 111 );

        TEST_VVCFGIVL( 122, 20, 0, 0x07, 39, 39 );
        TEST_VVCFGIVL( 123, 20, 0, 0x07, 40, 39 );
        TEST_VVCFGIVL( 124, 20, 0, 0x07, 38, 38 );

        TEST_VVCFGIVL( 125, 20, 0, 0xff, 104, 104 );
        TEST_VVCFGIVL( 126, 20, 0, 0xff, 105, 104 );
        TEST_VVCFGIVL( 127, 20, 0, 0xff, 103, 103 );

        TEST_VVCFGIVL( 128, 21, 0, 0x07, 36, 36 );
        TEST_VVCFGIVL( 129, 21, 0, 0x07, 37, 36 );
        TEST_VVCFGIVL( 130, 21, 0, 0x07, 35, 35 );

        TEST_VVCFGIVL( 131, 21, 0, 0xff, 96, 96 );
        TEST_VVCFGIVL( 132, 21, 0, 0xff, 97, 96 );
        TEST_VVCFGIVL( 133, 21, 0, 0xff, 95, 95 );

        TEST_VVCFGIVL( 134, 22, 0, 0x07, 36, 36 );
        TEST_VVCFGIVL( 135, 22, 0, 0x07, 37, 36 );
        TEST_VVCFGIVL( 136, 22, 0, 0x07, 35, 35 );

        TEST_VVCFGIVL( 137, 22, 0, 0xff, 96, 96 );
        TEST_VVCFGIVL( 138, 22, 0, 0xff, 97, 96 );
        TEST_VVCFGIVL( 139, 22, 0, 0xff, 95, 95 );

        TEST_VVCFGIVL( 140, 23, 0, 0x07, 33, 33 );
        TEST_VVCFGIVL( 141, 23, 0, 0x07, 34, 33 );
        TEST_VVCFGIVL( 142, 23, 0, 0x07, 32, 32 );

        TEST_VVCFGIVL( 143, 23, 0, 0xff, 88, 88 );
        TEST_VVCFGIVL( 144, 23, 0, 0xff, 89, 88 );
        TEST_VVCFGIVL( 145, 23, 0, 0xff, 87, 87 );

        TEST_VVCFGIVL( 146, 24, 0, 0x07, 33, 33 );
        TEST_VVCFGIVL( 147, 24, 0, 0x07, 34, 33 );
        TEST_VVCFGIVL( 148, 24, 0, 0x07, 32, 32 );

        TEST_VVCFGIVL( 149, 24, 0, 0xff, 88, 88 );
        TEST_VVCFGIVL( 150, 24, 0, 0xff, 89, 88 );
        TEST_VVCFGIVL( 151, 24, 0, 0xff, 87, 87 );

        TEST_VVCFGIVL( 152, 25, 0, 0x07, 30, 30 );
        TEST_VVCFGIVL( 153, 25, 0, 0x07, 31, 30 );
        TEST_VVCFGIVL( 154, 25, 0, 0x07, 29, 29 );

        TEST_VVCFGIVL( 155, 25, 0, 0xff, 80, 80 );
        TEST_VVCFGIVL( 156, 25, 0, 0xff, 81, 80 );
        TEST_VVCFGIVL( 157, 25, 0, 0xff, 79, 79 );

        TEST_VVCFGIVL( 158, 26, 0, 0x07, 30, 30 );
        TEST_VVCFGIVL( 159, 26, 0, 0x07, 31, 30 );
        TEST_VVCFGIVL( 160, 26, 0, 0x07, 29, 29 );

        TEST_VVCFGIVL( 161, 26, 0, 0xff, 80, 80 );
        TEST_VVCFGIVL( 162, 26, 0, 0xff, 81, 80 );
        TEST_VVCFGIVL( 163, 26, 0, 0xff, 79, 79 );

        TEST_VVCFGIVL( 164, 27, 0, 0x07, 27, 27 );
        TEST_VVCFGIVL( 165, 27, 0, 0x07, 28, 27 );
        TEST_VVCFGIVL( 166, 27, 0, 0x07, 26, 26 );

        TEST_VVCFGIVL( 167, 27, 0, 0xff, 72, 72 );
        TEST_VVCFGIVL( 168, 27, 0, 0xff, 73, 72 );
        TEST_VVCFGIVL( 169, 27, 0, 0xff, 71, 71 );

        TEST_VVCFGIVL( 170, 28, 0, 0x07, 27, 27 );
        TEST_VVCFGIVL( 171, 28, 0, 0x07, 28, 27 );
        TEST_VVCFGIVL( 172, 28, 0, 0x07, 26, 26 );

        TEST_VVCFGIVL( 173, 28, 0, 0xff, 72, 72 );
        TEST_VVCFGIVL( 174, 28, 0, 0xff, 73, 72 );
        TEST_VVCFGIVL( 175, 28, 0, 0xff, 71, 71 );

        TEST_VVCFGIVL( 176, 29, 0, 0x07, 27, 27 );
        TEST_VVCFGIVL( 177, 29, 0, 0x07, 28, 27 );
        TEST_VVCFGIVL( 178, 29, 0, 0x07, 26, 26 );

        TEST_VVCFGIVL( 179, 29, 0, 0xff, 72, 72 );
        TEST_VVCFGIVL( 180, 29, 0, 0xff, 73, 72 );
        TEST_VVCFGIVL( 181, 29, 0, 0xff, 71, 71 );

        TEST_VVCFGIVL( 182, 30, 0, 0x07, 24, 24 );
        TEST_VVCFGIVL( 183, 30, 0, 0x07, 25, 24 );
        TEST_VVCFGIVL( 184, 30, 0, 0x07, 23, 23 );

        TEST_VVCFGIVL( 185, 30, 0, 0xff, 64, 64 );
        TEST_VVCFGIVL( 186, 30, 0, 0xff, 65, 64 );
        TEST_VVCFGIVL( 187, 30, 0, 0xff, 63, 63 );

        TEST_VVCFGIVL( 188, 31, 0, 0x07, 24, 24 );
        TEST_VVCFGIVL( 189, 31, 0, 0x07, 25, 24 );
        TEST_VVCFGIVL( 190, 31, 0, 0x07, 23, 23 );

        TEST_VVCFGIVL( 191, 31, 0, 0xff, 64, 64 );
        TEST_VVCFGIVL( 192, 31, 0, 0xff, 65, 64 );
        TEST_VVCFGIVL( 193, 31, 0, 0xff, 63, 63 );

        TEST_VVCFGIVL( 194, 32, 0, 0x07, 24, 24 );
        TEST_VVCFGIVL( 195, 32, 0, 0x07, 25, 24 );
        TEST_VVCFGIVL( 196, 32, 0, 0x07, 23, 23 );

        TEST_VVCFGIVL( 197, 32, 0, 0xff, 64, 64 );
        TEST_VVCFGIVL( 198, 32, 0, 0xff, 65, 64 );
        TEST_VVCFGIVL( 199, 32, 0, 0xff, 63, 63 );

        TEST_VVCFGIVL( 200, 32, 0, 0x07, 24, 24 );
        TEST_VVCFGIVL( 201, 32, 0, 0x07, 25, 24 );
        TEST_VVCFGIVL( 202, 32, 0, 0x07, 23, 23 );

        TEST_VVCFGIVL( 203, 32, 0, 0xff, 64, 64 );
        TEST_VVCFGIVL( 204, 32, 0, 0xff, 65, 64 );
        TEST_VVCFGIVL( 205, 32, 0, 0xff, 63, 63 );

        TEST_VVCFGIVL( 206, 32, 1, 0x07, 24, 24 );
        TEST_VVCFGIVL( 207, 32, 1, 0x07, 25, 24 );
        TEST_VVCFGIVL( 208, 32, 1, 0x07, 23, 23 );

        TEST_VVCFGIVL( 209, 32, 1, 0xff, 64, 64 );
        TEST_VVCFGIVL( 210, 32, 1, 0xff, 65, 64 );
        TEST_VVCFGIVL( 211, 32, 1, 0xff, 63, 63 );

        TEST_VVCFGIVL( 212, 32, 2, 0x07, 21, 21 );
        TEST_VVCFGIVL( 213, 32, 2, 0x07, 22, 21 );
        TEST_VVCFGIVL( 214, 32, 2, 0x07, 20, 20 );

        TEST_VVCFGIVL( 215, 32, 2, 0xff, 56, 56 );
        TEST_VVCFGIVL( 216, 32, 2, 0xff, 57, 56 );
        TEST_VVCFGIVL( 217, 32, 2, 0xff, 55, 55 );

        TEST_VVCFGIVL( 218, 32, 3, 0x07, 21, 21 );
        TEST_VVCFGIVL( 219, 32, 3, 0x07, 22, 21 );
        TEST_VVCFGIVL( 220, 32, 3, 0x07, 20, 20 );

        TEST_VVCFGIVL( 221, 32, 3, 0xff, 56, 56 );
        TEST_VVCFGIVL( 222, 32, 3, 0xff, 57, 56 );
        TEST_VVCFGIVL( 223, 32, 3, 0xff, 55, 55 );

        TEST_VVCFGIVL( 224, 32, 4, 0x07, 21, 21 );
        TEST_VVCFGIVL( 225, 32, 4, 0x07, 22, 21 );
        TEST_VVCFGIVL( 226, 32, 4, 0x07, 20, 20 );

        TEST_VVCFGIVL( 227, 32, 4, 0xff, 56, 56 );
        TEST_VVCFGIVL( 228, 32, 4, 0xff, 57, 56 );
        TEST_VVCFGIVL( 229, 32, 4, 0xff, 55, 55 );

        TEST_VVCFGIVL( 230, 32, 5, 0x07, 21, 21 );
        TEST_VVCFGIVL( 231, 32, 5, 0x07, 22, 21 );
        TEST_VVCFGIVL( 232, 32, 5, 0x07, 20, 20 );

        TEST_VVCFGIVL( 233, 32, 5, 0xff, 56, 56 );
        TEST_VVCFGIVL( 234, 32, 5, 0xff, 57, 56 );
        TEST_VVCFGIVL( 235, 32, 5, 0xff, 55, 55 );

        TEST_VVCFGIVL( 236, 32, 6, 0x07, 18, 18 );
        TEST_VVCFGIVL( 237, 32, 6, 0x07, 19, 18 );
        TEST_VVCFGIVL( 238, 32, 6, 0x07, 17, 17 );

        TEST_VVCFGIVL( 239, 32, 6, 0xff, 48, 48 );
        TEST_VVCFGIVL( 240, 32, 6, 0xff, 49, 48 );
        TEST_VVCFGIVL( 241, 32, 6, 0xff, 47, 47 );

        TEST_VVCFGIVL( 242, 32, 7, 0x07, 18, 18 );
        TEST_VVCFGIVL( 243, 32, 7, 0x07, 19, 18 );
        TEST_VVCFGIVL( 244, 32, 7, 0x07, 17, 17 );

        TEST_VVCFGIVL( 245, 32, 7, 0xff, 48, 48 );
        TEST_VVCFGIVL( 246, 32, 7, 0xff, 49, 48 );
        TEST_VVCFGIVL( 247, 32, 7, 0xff, 47, 47 );

        TEST_VVCFGIVL( 248, 32, 8, 0x07, 18, 18 );
        TEST_VVCFGIVL( 249, 32, 8, 0x07, 19, 18 );
        TEST_VVCFGIVL( 250, 32, 8, 0x07, 17, 17 );

        TEST_VVCFGIVL( 251, 32, 8, 0xff, 48, 48 );
        TEST_VVCFGIVL( 252, 32, 8, 0xff, 49, 48 );
        TEST_VVCFGIVL( 253, 32, 8, 0xff, 47, 47 );

        TEST_VVCFGIVL( 254, 32, 9, 0x07, 18, 18 );
        TEST_VVCFGIVL( 255, 32, 9, 0x07, 19, 18 );
        TEST_VVCFGIVL( 256, 32, 9, 0x07, 17, 17 );

        TEST_VVCFGIVL( 257, 32, 9, 0xff, 48, 48 );
        TEST_VVCFGIVL( 258, 32, 9, 0xff, 49, 48 );
        TEST_VVCFGIVL( 259, 32, 9, 0xff, 47, 47 );

        TEST_VVCFGIVL( 260, 32, 10, 0x07, 18, 18 );
        TEST_VVCFGIVL( 261, 32, 10, 0x07, 19, 18 );
        TEST_VVCFGIVL( 262, 32, 10, 0x07, 17, 17 );

        TEST_VVCFGIVL( 263, 32, 10, 0xff, 48, 48 );
        TEST_VVCFGIVL( 264, 32, 10, 0xff, 49, 48 );
        TEST_VVCFGIVL( 265, 32, 10, 0xff, 47, 47 );

        TEST_VVCFGIVL( 266, 32, 11, 0x07, 18, 18 );
        TEST_VVCFGIVL( 267, 32, 11, 0x07, 19, 18 );
        TEST_VVCFGIVL( 268, 32, 11, 0x07, 17, 17 );

        TEST_VVCFGIVL( 269, 32, 11, 0xff, 48, 48 );
        TEST_VVCFGIVL( 270, 32, 11, 0xff, 49, 48 );
        TEST_VVCFGIVL( 271, 32, 11, 0xff, 47, 47 );

        TEST_VVCFGIVL( 272, 32, 12, 0x07, 15, 15 );
        TEST_VVCFGIVL( 273, 32, 12, 0x07, 16, 15 );
        TEST_VVCFGIVL( 274, 32, 12, 0x07, 14, 14 );

        TEST_VVCFGIVL( 275, 32, 12, 0xff, 40, 40 );
        TEST_VVCFGIVL( 276, 32, 12, 0xff, 41, 40 );
        TEST_VVCFGIVL( 277, 32, 12, 0xff, 39, 39 );

        TEST_VVCFGIVL( 278, 32, 13, 0x07, 15, 15 );
        TEST_VVCFGIVL( 279, 32, 13, 0x07, 16, 15 );
        TEST_VVCFGIVL( 280, 32, 13, 0x07, 14, 14 );

        TEST_VVCFGIVL( 281, 32, 13, 0xff, 40, 40 );
        TEST_VVCFGIVL( 282, 32, 13, 0xff, 41, 40 );
        TEST_VVCFGIVL( 283, 32, 13, 0xff, 39, 39 );

        TEST_VVCFGIVL( 284, 32, 14, 0x07, 15, 15 );
        TEST_VVCFGIVL( 285, 32, 14, 0x07, 16, 15 );
        TEST_VVCFGIVL( 286, 32, 14, 0x07, 14, 14 );

        TEST_VVCFGIVL( 287, 32, 14, 0xff, 40, 40 );
        TEST_VVCFGIVL( 288, 32, 14, 0xff, 41, 40 );
        TEST_VVCFGIVL( 289, 32, 14, 0xff, 39, 39 );

        TEST_VVCFGIVL( 290, 32, 15, 0x07, 15, 15 );
        TEST_VVCFGIVL( 291, 32, 15, 0x07, 16, 15 );
        TEST_VVCFGIVL( 292, 32, 15, 0x07, 14, 14 );

        TEST_VVCFGIVL( 293, 32, 15, 0xff, 40, 40 );
        TEST_VVCFGIVL( 294, 32, 15, 0xff, 41, 40 );
        TEST_VVCFGIVL( 295, 32, 15, 0xff, 39, 39 );

        TEST_VVCFGIVL( 296, 32, 16, 0x07, 15, 15 );
        TEST_VVCFGIVL( 297, 32, 16, 0x07, 16, 15 );
        TEST_VVCFGIVL( 298, 32, 16, 0x07, 14, 14 );

        TEST_VVCFGIVL( 299, 32, 16, 0xff, 40, 40 );
        TEST_VVCFGIVL( 300, 32, 16, 0xff, 41, 40 );
        TEST_VVCFGIVL( 301, 32, 16, 0xff, 39, 39 );

        TEST_VVCFGIVL( 302, 32, 17, 0x07, 15, 15 );
        TEST_VVCFGIVL( 303, 32, 17, 0x07, 16, 15 );
        TEST_VVCFGIVL( 304, 32, 17, 0x07, 14, 14 );

        TEST_VVCFGIVL( 305, 32, 17, 0xff, 40, 40 );
        TEST_VVCFGIVL( 306, 32, 17, 0xff, 41, 40 );
        TEST_VVCFGIVL( 307, 32, 17, 0xff, 39, 39 );

        TEST_VVCFGIVL( 308, 32, 18, 0x07, 15, 15 );
        TEST_VVCFGIVL( 309, 32, 18, 0x07, 16, 15 );
        TEST_VVCFGIVL( 310, 32, 18, 0x07, 14, 14 );

        TEST_VVCFGIVL( 311, 32, 18, 0xff, 40, 40 );
        TEST_VVCFGIVL( 312, 32, 18, 0xff, 41, 40 );
        TEST_VVCFGIVL( 313, 32, 18, 0xff, 39, 39 );

        TEST_VVCFGIVL( 314, 32, 19, 0x07, 15, 15 );
        TEST_VVCFGIVL( 315, 32, 19, 0x07, 16, 15 );
        TEST_VVCFGIVL( 316, 32, 19, 0x07, 14, 14 );

        TEST_VVCFGIVL( 317, 32, 19, 0xff, 40, 40 );
        TEST_VVCFGIVL( 318, 32, 19, 0xff, 41, 40 );
        TEST_VVCFGIVL( 319, 32, 19, 0xff, 39, 39 );

        TEST_VVCFGIVL( 320, 32, 20, 0x07, 15, 15 );
        TEST_VVCFGIVL( 321, 32, 20, 0x07, 16, 15 );
        TEST_VVCFGIVL( 322, 32, 20, 0x07, 14, 14 );

        TEST_VVCFGIVL( 323, 32, 20, 0xff, 40, 40 );
        TEST_VVCFGIVL( 324, 32, 20, 0xff, 41, 40 );
        TEST_VVCFGIVL( 325, 32, 20, 0xff, 39, 39 );

        TEST_VVCFGIVL( 326, 32, 21, 0x07, 12, 12 );
        TEST_VVCFGIVL( 327, 32, 21, 0x07, 13, 12 );
        TEST_VVCFGIVL( 328, 32, 21, 0x07, 11, 11 );

        TEST_VVCFGIVL( 329, 32, 21, 0xff, 32, 32 );
        TEST_VVCFGIVL( 330, 32, 21, 0xff, 33, 32 );
        TEST_VVCFGIVL( 331, 32, 21, 0xff, 31, 31 );

        TEST_VVCFGIVL( 332, 32, 22, 0x07, 12, 12 );
        TEST_VVCFGIVL( 333, 32, 22, 0x07, 13, 12 );
        TEST_VVCFGIVL( 334, 32, 22, 0x07, 11, 11 );

        TEST_VVCFGIVL( 335, 32, 22, 0xff, 32, 32 );
        TEST_VVCFGIVL( 336, 32, 22, 0xff, 33, 32 );
        TEST_VVCFGIVL( 337, 32, 22, 0xff, 31, 31 );

        TEST_VVCFGIVL( 338, 32, 23, 0x07, 12, 12 );
        TEST_VVCFGIVL( 339, 32, 23, 0x07, 13, 12 );
        TEST_VVCFGIVL( 340, 32, 23, 0x07, 11, 11 );

        TEST_VVCFGIVL( 341, 32, 23, 0xff, 32, 32 );
        TEST_VVCFGIVL( 342, 32, 23, 0xff, 33, 32 );
        TEST_VVCFGIVL( 343, 32, 23, 0xff, 31, 31 );

        TEST_VVCFGIVL( 344, 32, 24, 0x07, 12, 12 );
        TEST_VVCFGIVL( 345, 32, 24, 0x07, 13, 12 );
        TEST_VVCFGIVL( 346, 32, 24, 0x07, 11, 11 );

        TEST_VVCFGIVL( 347, 32, 24, 0xff, 32, 32 );
        TEST_VVCFGIVL( 348, 32, 24, 0xff, 33, 32 );
        TEST_VVCFGIVL( 349, 32, 24, 0xff, 31, 31 );

        TEST_VVCFGIVL( 350, 32, 25, 0x07, 12, 12 );
        TEST_VVCFGIVL( 351, 32, 25, 0x07, 13, 12 );
        TEST_VVCFGIVL( 352, 32, 25, 0x07, 11, 11 );

        TEST_VVCFGIVL( 353, 32, 25, 0xff, 32, 32 );
        TEST_VVCFGIVL( 354, 32, 25, 0xff, 33, 32 );
        TEST_VVCFGIVL( 355, 32, 25, 0xff, 31, 31 );

        TEST_VVCFGIVL( 356, 32, 26, 0x07, 12, 12 );
        TEST_VVCFGIVL( 357, 32, 26, 0x07, 13, 12 );
        TEST_VVCFGIVL( 358, 32, 26, 0x07, 11, 11 );

        TEST_VVCFGIVL( 359, 32, 26, 0xff, 32, 32 );
        TEST_VVCFGIVL( 360, 32, 26, 0xff, 33, 32 );
        TEST_VVCFGIVL( 361, 32, 26, 0xff, 31, 31 );

        TEST_VVCFGIVL( 362, 32, 27, 0x07, 12, 12 );
        TEST_VVCFGIVL( 363, 32, 27, 0x07, 13, 12 );
        TEST_VVCFGIVL( 364, 32, 27, 0x07, 11, 11 );

        TEST_VVCFGIVL( 365, 32, 27, 0xff, 32, 32 );
        TEST_VVCFGIVL( 366, 32, 27, 0xff, 33, 32 );
        TEST_VVCFGIVL( 367, 32, 27, 0xff, 31, 31 );

        TEST_VVCFGIVL( 368, 32, 28, 0x07, 12, 12 );
        TEST_VVCFGIVL( 369, 32, 28, 0x07, 13, 12 );
        TEST_VVCFGIVL( 370, 32, 28, 0x07, 11, 11 );

        TEST_VVCFGIVL( 371, 32, 28, 0xff, 32, 32 );
        TEST_VVCFGIVL( 372, 32, 28, 0xff, 33, 32 );
        TEST_VVCFGIVL( 373, 32, 28, 0xff, 31, 31 );

        TEST_VVCFGIVL( 374, 32, 29, 0x07, 12, 12 );
        TEST_VVCFGIVL( 375, 32, 29, 0x07, 13, 12 );
        TEST_VVCFGIVL( 376, 32, 29, 0x07, 11, 11 );

        TEST_VVCFGIVL( 377, 32, 29, 0xff, 32, 32 );
        TEST_VVCFGIVL( 378, 32, 29, 0xff, 33, 32 );
        TEST_VVCFGIVL( 379, 32, 29, 0xff, 31, 31 );

        TEST_VVCFGIVL( 380, 32, 30, 0x07, 12, 12 );
        TEST_VVCFGIVL( 381, 32, 30, 0x07, 13, 12 );
        TEST_VVCFGIVL( 382, 32, 30, 0x07, 11, 11 );

        TEST_VVCFGIVL( 383, 32, 30, 0xff, 32, 32 );
        TEST_VVCFGIVL( 384, 32, 30, 0xff, 33, 32 );
        TEST_VVCFGIVL( 385, 32, 30, 0xff, 31, 31 );

        TEST_VVCFGIVL( 386, 32, 31, 0x07, 12, 12 );
        TEST_VVCFGIVL( 387, 32, 31, 0x07, 13, 12 );
        TEST_VVCFGIVL( 388, 32, 31, 0x07, 11, 11 );

        TEST_VVCFGIVL( 389, 32, 31, 0xff, 32, 32 );
        TEST_VVCFGIVL( 390, 32, 31, 0xff, 33, 32 );
        TEST_VVCFGIVL( 391, 32, 31, 0xff, 31, 31 );

        TEST_VVCFGIVL( 392, 32, 32, 0x07, 12, 12 );
        TEST_VVCFGIVL( 393, 32, 32, 0x07, 13, 12 );
        TEST_VVCFGIVL( 394, 32, 32, 0x07, 11, 11 );

        TEST_VVCFGIVL( 395, 32, 32, 0xff, 32, 32 );
        TEST_VVCFGIVL( 396, 32, 32, 0xff, 33, 32 );
        TEST_VVCFGIVL( 397, 32, 32, 0xff, 31, 31 );

        #-------------------------------------------------------------
        # Source/Destination tests
        #-------------------------------------------------------------

        TEST_STATS_END
        TEST_PASSFAIL
        TEST_RISCV_END

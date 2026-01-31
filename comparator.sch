VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL XLXN_74
        SIGNAL XLXN_75
        SIGNAL XLXN_76
        SIGNAL XLXN_77
        SIGNAL XLXN_78
        SIGNAL XLXN_79
        SIGNAL XLXN_80
        SIGNAL XLXN_89
        SIGNAL XLXN_90
        SIGNAL XLXN_93
        SIGNAL XLXN_94
        SIGNAL XLXN_95
        SIGNAL XLXN_96
        SIGNAL XLXN_98
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL amask(4)
        SIGNAL amask(3)
        SIGNAL amask(2)
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) b(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_74
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_75
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_76
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_77
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_74
            PIN O XLXN_98
        END BLOCK
        BEGIN BLOCK XLXI_15 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_75
            PIN O XLXN_96
        END BLOCK
        BEGIN BLOCK XLXI_16 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_76
            PIN O XLXN_95
        END BLOCK
        BEGIN BLOCK XLXI_17 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_77
            PIN O XLXN_94
        END BLOCK
        BEGIN BLOCK XLXI_21 and7
            PIN I0 XLXN_94
            PIN I1 XLXN_95
            PIN I2 XLXN_93
            PIN I3 XLXN_90
            PIN I4 XLXN_89
            PIN I5 XLXN_96
            PIN I6 XLXN_98
            PIN O match
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_78
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_79
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_80
        END BLOCK
        BEGIN BLOCK XLXI_18 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_78
            PIN O XLXN_89
        END BLOCK
        BEGIN BLOCK XLXI_19 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_79
            PIN O XLXN_90
        END BLOCK
        BEGIN BLOCK XLXI_20 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_80
            PIN O XLXN_93
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_4 672 2112 R0
        INSTANCE XLXI_3 672 1680 R0
        INSTANCE XLXI_2 672 1248 R0
        BEGIN BRANCH a(55:0)
            WIRE 672 112 1104 112
        END BRANCH
        IOMARKER 672 112 a(55:0) R180 28
        BEGIN BRANCH amask(6:0)
            WIRE 1552 112 1888 112
        END BRANCH
        IOMARKER 1552 112 amask(6:0) R180 28
        BEGIN BRANCH b(55:48)
            WIRE 544 480 560 480
            WIRE 560 480 672 480
            BEGIN DISPLAY 544 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 576 672 592 672
            WIRE 592 672 672 672
            BEGIN DISPLAY 576 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 560 928 672 928
            BEGIN DISPLAY 560 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 544 1120 672 1120
            BEGIN DISPLAY 544 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 576 1360 672 1360
            BEGIN DISPLAY 576 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 576 1552 672 1552
            BEGIN DISPLAY 576 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 576 1792 672 1792
            BEGIN DISPLAY 576 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 576 1984 672 1984
            BEGIN DISPLAY 576 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 1296 832 R0
        INSTANCE XLXI_15 1312 1264 R0
        INSTANCE XLXI_16 1312 1696 R0
        INSTANCE XLXI_17 1328 2096 R0
        INSTANCE XLXI_21 2976 1488 R0
        INSTANCE XLXI_6 1856 1456 R0
        BEGIN BRANCH a(23:16)
            WIRE 1792 736 1808 736
            WIRE 1808 736 1856 736
            BEGIN DISPLAY 1792 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1776 928 1792 928
            WIRE 1792 928 1856 928
            BEGIN DISPLAY 1776 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1792 1136 1856 1136
            BEGIN DISPLAY 1792 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1808 1328 1856 1328
            BEGIN DISPLAY 1808 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1792 1536 1856 1536
            BEGIN DISPLAY 1792 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1808 1728 1856 1728
            BEGIN DISPLAY 1808 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_18 2512 912 R0
        INSTANCE XLXI_19 2496 1344 R0
        INSTANCE XLXI_20 2496 1728 R0
        BEGIN BRANCH XLXN_74
            WIRE 1056 576 1152 576
            WIRE 1152 576 1152 704
            WIRE 1152 704 1280 704
            WIRE 1280 704 1296 704
        END BRANCH
        BEGIN BRANCH XLXN_75
            WIRE 1056 1024 1152 1024
            WIRE 1152 1024 1152 1136
            WIRE 1152 1136 1312 1136
        END BRANCH
        BEGIN BRANCH XLXN_76
            WIRE 1056 1456 1136 1456
            WIRE 1136 1456 1136 1568
            WIRE 1136 1568 1312 1568
        END BRANCH
        BEGIN BRANCH XLXN_77
            WIRE 1056 1888 1136 1888
            WIRE 1136 1888 1136 1968
            WIRE 1136 1968 1328 1968
        END BRANCH
        BEGIN BRANCH XLXN_78
            WIRE 2240 832 2288 832
            WIRE 2288 784 2496 784
            WIRE 2496 784 2512 784
            WIRE 2288 784 2288 832
        END BRANCH
        BEGIN BRANCH XLXN_79
            WIRE 2240 1232 2304 1232
            WIRE 2304 1216 2496 1216
            WIRE 2304 1216 2304 1232
        END BRANCH
        BEGIN BRANCH XLXN_80
            WIRE 2240 1632 2496 1632
            WIRE 2496 1600 2496 1632
        END BRANCH
        BEGIN BRANCH XLXN_89
            WIRE 2768 816 2864 816
            WIRE 2864 816 2864 1168
            WIRE 2864 1168 2976 1168
        END BRANCH
        BEGIN BRANCH XLXN_90
            WIRE 2752 1248 2864 1248
            WIRE 2864 1232 2864 1248
            WIRE 2864 1232 2976 1232
        END BRANCH
        BEGIN BRANCH XLXN_93
            WIRE 2752 1632 2864 1632
            WIRE 2864 1296 2864 1632
            WIRE 2864 1296 2976 1296
        END BRANCH
        BEGIN BRANCH XLXN_94
            WIRE 1584 2000 2976 2000
            WIRE 2976 1424 2976 2000
        END BRANCH
        BEGIN BRANCH XLXN_95
            WIRE 1568 1600 1648 1600
            WIRE 1648 1600 1648 1872
            WIRE 1648 1872 2912 1872
            WIRE 2912 1360 2976 1360
            WIRE 2912 1360 2912 1872
        END BRANCH
        BEGIN BRANCH XLXN_96
            WIRE 1568 1168 1648 1168
            WIRE 1648 1008 2288 1008
            WIRE 2288 1008 2288 1104
            WIRE 2288 1104 2976 1104
            WIRE 1648 1008 1648 1168
        END BRANCH
        BEGIN BRANCH XLXN_98
            WIRE 1552 736 1616 736
            WIRE 1616 544 2976 544
            WIRE 2976 544 2976 1040
            WIRE 1616 544 1616 736
        END BRANCH
        INSTANCE XLXI_7 1856 1856 R0
        BEGIN BRANCH amask(6)
            WIRE 1232 768 1296 768
            BEGIN DISPLAY 1232 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1248 1200 1312 1200
            BEGIN DISPLAY 1248 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1264 1632 1312 1632
            BEGIN DISPLAY 1264 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1264 2032 1328 2032
            BEGIN DISPLAY 1264 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 2448 848 2512 848
            BEGIN DISPLAY 2448 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 2432 1280 2480 1280
            WIRE 2480 1280 2496 1280
            BEGIN DISPLAY 2432 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 2432 1664 2496 1664
            BEGIN DISPLAY 2432 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH match
            WIRE 3232 1232 3248 1232
            WIRE 3248 1200 3312 1200
            WIRE 3248 1200 3248 1232
        END BRANCH
        INSTANCE XLXI_1 672 800 R0
        INSTANCE XLXI_5 1856 1056 R0
        IOMARKER 3312 1200 match R0 28
        IOMARKER 592 208 b(55:0) R180 28
        BEGIN BRANCH b(55:0)
            WIRE 592 208 1088 208
        END BRANCH
    END SHEET
END SCHEMATIC

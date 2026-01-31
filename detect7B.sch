VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL hwregA(63:0)
        SIGNAL XLXN_3
        SIGNAL clk
        SIGNAL ce
        SIGNAL pipe1(71:0)
        SIGNAL pipe0(71:0)
        SIGNAL XLXN_9(111:0)
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        SIGNAL XLXN_12
        SIGNAL match_en
        SIGNAL match
        SIGNAL mrst
        SIGNAL XLXN_16
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_17
        PORT Input hwregA(63:0)
        PORT Input clk
        PORT Input ce
        PORT Input pipe1(71:0)
        PORT Input match_en
        PORT Output match
        PORT Input mrst
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 31 2 10 11
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 1 31 2 9 20
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 1 31 2 6 26
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 reg9B
            PIN clk clk
            PIN ce ce
            PIN d(71:0) pipe1(71:0)
            PIN clr XLXN_3
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_9(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datain(111:0) XLXN_9(111:0)
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN match XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_4 fdce
            PIN C clk
            PIN CE XLXN_16
            PIN CLR XLXN_3
            PIN D XLXN_16
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_6 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_12
            PIN O XLXN_16
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 832 608 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 896 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1648 1024 R0
        END INSTANCE
        INSTANCE XLXI_4 2624 1120 R0
        INSTANCE XLXI_5 2080 1552 R0
        INSTANCE XLXI_6 2240 1040 R0
        BEGIN BRANCH hwregA(63:0)
            WIRE 624 128 800 128
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 752 576 832 576
            WIRE 752 576 752 1552
            WIRE 752 1552 2624 1552
            WIRE 2464 1296 2624 1296
            WIRE 2624 1296 2624 1552
            WIRE 2624 1088 2624 1296
        END BRANCH
        BEGIN BRANCH clk
            WIRE 576 384 656 384
            WIRE 656 384 656 1424
            WIRE 656 1424 2080 1424
            WIRE 656 384 832 384
            WIRE 656 320 656 384
            WIRE 656 320 2560 320
            WIRE 2560 320 2560 992
            WIRE 2560 992 2624 992
        END BRANCH
        BEGIN BRANCH ce
            WIRE 560 448 832 448
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 560 512 832 512
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 1216 384 1376 384
            BEGIN DISPLAY 1376 384 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_9(111:0)
            WIRE 1280 1040 1328 1040
            WIRE 1328 864 1328 1040
            WIRE 1328 864 1648 864
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1584 928 1648 928
            BEGIN DISPLAY 1584 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1584 992 1648 992
            BEGIN DISPLAY 1584 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 2032 864 2128 864
            WIRE 2128 848 2128 864
            WIRE 2128 848 2240 848
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 2160 912 2240 912
        END BRANCH
        BEGIN BRANCH match
            WIRE 2160 976 2240 976
            WIRE 2160 976 2160 1152
            WIRE 2160 1152 3136 1152
            WIRE 3008 864 3136 864
            WIRE 3136 864 3136 1152
            WIRE 3136 864 3248 864
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 2016 1296 2080 1296
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 2496 912 2544 912
            WIRE 2544 912 2544 928
            WIRE 2544 928 2624 928
            WIRE 2544 864 2544 912
            WIRE 2544 864 2624 864
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 608 1040 896 1040
            BEGIN DISPLAY 608 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 608 1104 896 1104
            BEGIN DISPLAY 608 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 624 128 hwregA(63:0) R180 28
        IOMARKER 576 384 clk R180 28
        IOMARKER 560 448 ce R180 28
        IOMARKER 560 512 pipe1(71:0) R180 28
        IOMARKER 2160 912 match_en R180 28
        IOMARKER 2016 1296 mrst R180 28
        IOMARKER 3248 864 match R0 28
    END SHEET
END SCHEMATIC

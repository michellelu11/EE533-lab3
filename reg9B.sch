VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:64)
        SIGNAL q(71:64)
        SIGNAL clk
        SIGNAL ce
        SIGNAL q(63:48)
        SIGNAL q(47:32)
        SIGNAL q(31:16)
        SIGNAL d(63:48)
        SIGNAL d(47:32)
        SIGNAL d(31:16)
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL clr
        SIGNAL d(15:0)
        SIGNAL q(15:0)
        PORT Input clk
        PORT Input ce
        PORT Input d(71:0)
        PORT Output q(71:0)
        PORT Input clr
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 1472 688 R0
        INSTANCE XLXI_3 1472 1120 R0
        INSTANCE XLXI_4 1472 1504 R0
        BEGIN BRANCH d(71:64)
            WIRE 1280 432 1472 432
            BEGIN DISPLAY 1280 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1856 432 1984 432
            BEGIN DISPLAY 1984 432 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1248 2144 1312 2144
            WIRE 1312 2144 1504 2144
            WIRE 1312 560 1472 560
            WIRE 1312 560 1312 992
            WIRE 1312 992 1472 992
            WIRE 1312 992 1312 1376
            WIRE 1312 1376 1312 1744
            WIRE 1312 1744 1472 1744
            WIRE 1312 1744 1312 2144
            WIRE 1312 1376 1472 1376
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1248 2080 1376 2080
            WIRE 1376 2080 1408 2080
            WIRE 1408 2080 1504 2080
            WIRE 1408 496 1472 496
            WIRE 1408 496 1408 928
            WIRE 1408 928 1472 928
            WIRE 1408 928 1408 1312
            WIRE 1408 1312 1472 1312
            WIRE 1408 1312 1408 1680
            WIRE 1408 1680 1472 1680
            WIRE 1408 1680 1408 2080
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1856 1248 2016 1248
            BEGIN DISPLAY 2016 1248 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1856 1616 1984 1616
            BEGIN DISPLAY 1984 1616 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1248 864 1472 864
            BEGIN DISPLAY 1248 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1248 1248 1472 1248
            BEGIN DISPLAY 1248 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1248 1616 1472 1616
            BEGIN DISPLAY 1248 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 1472 1872 R0
        INSTANCE XLXI_6 1504 2272 R0
        BEGIN BRANCH d(71:0)
            WIRE 1968 2512 2160 2512
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 2464 2512 2656 2512
        END BRANCH
        IOMARKER 1968 2512 d(71:0) R180 28
        IOMARKER 2656 2512 q(71:0) R0 28
        IOMARKER 1248 2080 ce R180 28
        IOMARKER 1248 2144 clk R180 28
        BEGIN BRANCH clr
            WIRE 1248 2240 1440 2240
            WIRE 1440 2240 1504 2240
            WIRE 1440 656 1472 656
            WIRE 1440 656 1440 1088
            WIRE 1440 1088 1472 1088
            WIRE 1440 1088 1440 1472
            WIRE 1440 1472 1472 1472
            WIRE 1440 1472 1440 1840
            WIRE 1440 1840 1472 1840
            WIRE 1440 1840 1440 1856
            WIRE 1440 1856 1440 2240
        END BRANCH
        IOMARKER 1248 2240 clr R180 28
        BEGIN BRANCH d(15:0)
            WIRE 1264 2016 1504 2016
            BEGIN DISPLAY 1264 2016 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1888 2016 2048 2016
            BEGIN DISPLAY 2048 2016 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1856 864 2000 864
            BEGIN DISPLAY 2000 864 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC

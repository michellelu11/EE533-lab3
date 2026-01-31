VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL match
        SIGNAL datain(111:0)
        SIGNAL XLXN_17(55:0)
        SIGNAL XLXN_18(55:0)
        SIGNAL datacomp(55:0)
        SIGNAL XLXN_20(6:0)
        SIGNAL XLXN_21(6:0)
        SIGNAL XLXN_22(6:0)
        SIGNAL XLXN_23(6:0)
        SIGNAL XLXN_24(6:0)
        SIGNAL XLXN_25(6:0)
        SIGNAL wildcard(6:0)
        BEGIN SIGNAL datain(55:0)
        END SIGNAL
        BEGIN SIGNAL datain(63:8)
        END SIGNAL
        BEGIN SIGNAL datain(71:16)
        END SIGNAL
        BEGIN SIGNAL datain(79:24)
        END SIGNAL
        BEGIN SIGNAL datain(87:32)
        END SIGNAL
        BEGIN SIGNAL datain(95:40)
        END SIGNAL
        BEGIN SIGNAL datain(103:48)
        END SIGNAL
        BEGIN SIGNAL datain(111:56)
        END SIGNAL
        PORT Output match
        PORT Input datain(111:0)
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 1 31 1 56 16
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_12
            PIN I1 XLXN_11
            PIN I2 XLXN_6
            PIN I3 XLXN_5
            PIN I4 XLXN_4
            PIN I5 XLXN_3
            PIN I6 XLXN_2
            PIN I7 XLXN_1
            PIN O match
        END BLOCK
        BEGIN BLOCK XLXI_10 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_6
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1200 336 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1200 592 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1200 832 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1200 1072 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1200 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1200 1792 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1200 2032 R0
        END INSTANCE
        INSTANCE XLXI_9 2176 1312 R0
        BEGIN BRANCH XLXN_1
            WIRE 1584 176 2176 176
            WIRE 2176 176 2176 800
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1584 432 1872 432
            WIRE 1872 432 1872 864
            WIRE 1872 864 2176 864
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1584 672 1856 672
            WIRE 1856 672 1856 928
            WIRE 1856 928 2176 928
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1584 912 1840 912
            WIRE 1840 912 1840 992
            WIRE 1840 992 2176 992
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1584 1152 1872 1152
            WIRE 1872 1056 1872 1152
            WIRE 1872 1056 2176 1056
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1584 1392 1888 1392
            WIRE 1888 1120 1888 1392
            WIRE 1888 1120 2176 1120
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1584 1632 1904 1632
            WIRE 1904 1184 1904 1632
            WIRE 1904 1184 2176 1184
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1584 1872 2176 1872
            WIRE 2176 1248 2176 1872
        END BRANCH
        BEGIN BRANCH match
            WIRE 2432 1024 2512 1024
        END BRANCH
        IOMARKER 2512 1024 match R0 28
        BEGIN BRANCH datain(111:0)
            WIRE 576 96 816 96
        END BRANCH
        IOMARKER 576 96 datain(111:0) R180 28
        BEGIN BRANCH datacomp(55:0)
            WIRE 800 176 960 176
            WIRE 960 176 976 176
            WIRE 976 176 1200 176
            WIRE 960 176 960 432
            WIRE 960 432 960 672
            WIRE 960 672 960 912
            WIRE 960 912 960 1152
            WIRE 960 1152 1200 1152
            WIRE 960 1152 960 1392
            WIRE 960 1392 960 1632
            WIRE 960 1632 960 1872
            WIRE 960 1872 1200 1872
            WIRE 960 1632 1200 1632
            WIRE 960 1392 1184 1392
            WIRE 1184 1392 1200 1392
            WIRE 960 912 1200 912
            WIRE 960 672 1200 672
            WIRE 960 432 1200 432
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 800 304 1024 304
            WIRE 1024 304 1200 304
            WIRE 1024 304 1024 560
            WIRE 1024 560 1024 800
            WIRE 1024 800 1200 800
            WIRE 1024 800 1024 1040
            WIRE 1024 1040 1200 1040
            WIRE 1024 1040 1024 1280
            WIRE 1024 1280 1200 1280
            WIRE 1024 1280 1024 1520
            WIRE 1024 1520 1200 1520
            WIRE 1024 1520 1024 1760
            WIRE 1024 1760 1200 1760
            WIRE 1024 1760 1024 2000
            WIRE 1024 2000 1200 2000
            WIRE 1024 560 1200 560
        END BRANCH
        BEGIN BRANCH datain(55:0)
            WIRE 1072 240 1200 240
            BEGIN DISPLAY 1072 240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 1104 496 1200 496
            BEGIN DISPLAY 1104 496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 1104 736 1200 736
            BEGIN DISPLAY 1104 736 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 1104 976 1200 976
            BEGIN DISPLAY 1104 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 1104 1216 1200 1216
            BEGIN DISPLAY 1104 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_10 1200 1552 R0
        END INSTANCE
        BEGIN BRANCH datain(95:40)
            WIRE 1104 1456 1200 1456
            BEGIN DISPLAY 1104 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 1104 1696 1200 1696
            BEGIN DISPLAY 1104 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 1104 1936 1200 1936
            BEGIN DISPLAY 1104 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 800 176 datacomp(55:0) R180 28
        IOMARKER 800 304 wildcard(6:0) R180 28
    END SHEET
END SCHEMATIC

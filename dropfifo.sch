VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL clk
        SIGNAL in_fifo0(71:0)
        SIGNAL XLXN_10(0:0)
        SIGNAL raddr(7:0)
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_18
        SIGNAL lastword
        SIGNAL waddr(7:0)
        SIGNAL rst
        SIGNAL out_fifo(71:0)
        SIGNAL XLXN_28
        SIGNAL valid_data
        SIGNAL fiforead
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_35(7:0)
        SIGNAL XLXN_36
        SIGNAL drop_pkt
        SIGNAL XLXN_49
        SIGNAL fifowrite
        SIGNAL XLXN_53
        SIGNAL in_fifo(71:0)
        PORT Input firstword
        PORT Input clk
        PORT Input lastword
        PORT Input rst
        PORT Output out_fifo(71:0)
        PORT Output valid_data
        PORT Input fiforead
        PORT Input drop_pkt
        PORT Input fifowrite
        PORT Input in_fifo(71:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF dual9Bmem
            TIMESTAMP 2026 1 31 2 31 33
            RECTANGLE N 32 32 544 576 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            BEGIN LINE W 0 208 32 208 
            END LINE
            LINE N 0 272 32 272 
            BEGIN LINE W 0 336 32 336 
            END LINE
            LINE N 0 528 32 528 
            BEGIN LINE W 576 336 544 336 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_10(0:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C clk
            PIN CE XLXN_36
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_35(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_28
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_35(7:0)
            PIN EQ XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_9 reg9B
            PIN clk clk
            PIN ce XLXN_53
            PIN d(71:0) in_fifo(71:0)
            PIN clr rst
            PIN q(71:0) in_fifo0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 cb8cle
            PIN C clk
            PIN CE XLXN_10(0:0)
            PIN CLR rst
            PIN D(7:0) XLXN_35(7:0)
            PIN L XLXN_49
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_11 cb8ce
            PIN C clk
            PIN CE XLXN_28
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_12 and3b2
            PIN I0 XLXN_32
            PIN I1 XLXN_31
            PIN I2 fiforead
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_13 or2
            PIN I0 XLXN_15
            PIN I1 XLXN_16
            PIN O XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_14 and2b1
            PIN I0 XLXN_49
            PIN I1 XLXN_18
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_15 dual9Bmem
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) in_fifo0(71:0)
            PIN wea(0:0) XLXN_10(0:0)
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 vcc
            PIN P XLXN_53
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 368 512 R0
        INSTANCE XLXI_2 368 896 R0
        INSTANCE XLXI_3 1232 544 R0
        INSTANCE XLXI_4 448 2352 R0
        INSTANCE XLXI_7 960 1664 R0
        INSTANCE XLXI_8 960 2064 R0
        BEGIN INSTANCE XLXI_9 2208 576 R0
        END INSTANCE
        INSTANCE XLXI_10 2032 1264 R0
        INSTANCE XLXI_12 1520 1568 R0
        INSTANCE XLXI_11 2000 1680 R0
        INSTANCE XLXI_6 1968 2176 R0
        INSTANCE XLXI_13 1136 800 R0
        BEGIN INSTANCE XLXI_15 2688 928 R0
        END INSTANCE
        BEGIN BRANCH firstword
            WIRE 224 256 368 256
        END BRANCH
        BEGIN BRANCH clk
            WIRE 208 2224 288 2224
            WIRE 288 2224 448 2224
            WIRE 288 384 368 384
            WIRE 288 384 288 512
            WIRE 288 512 288 768
            WIRE 288 768 368 768
            WIRE 288 768 288 1200
            WIRE 288 1200 288 2224
            WIRE 288 1200 464 1200
            WIRE 288 512 768 512
            WIRE 768 512 1680 512
            WIRE 768 416 768 512
            WIRE 768 416 1232 416
            WIRE 1680 352 1680 512
            WIRE 1680 352 1856 352
            WIRE 1856 352 2208 352
            WIRE 1856 352 1856 1136
            WIRE 1856 1136 2032 1136
            WIRE 1856 1136 1856 1296
            WIRE 1856 1296 1856 1552
            WIRE 1856 1552 2000 1552
            WIRE 1856 1552 1856 2048
            WIRE 1856 2048 1968 2048
            WIRE 1856 1296 2480 1296
            WIRE 2480 1296 2480 1456
            WIRE 2480 1456 2688 1456
            WIRE 2480 1200 2480 1296
            WIRE 2480 1200 2688 1200
        END BRANCH
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2592 352 2640 352
            WIRE 2640 352 2640 1040
            WIRE 2640 1040 2688 1040
        END BRANCH
        BEGIN BRANCH XLXN_10(0:0)
            WIRE 1616 288 1968 288
            WIRE 1968 288 1968 1072
            WIRE 1968 1072 2032 1072
            WIRE 1968 1072 1968 1280
            WIRE 1968 1280 2464 1280
            WIRE 2464 1136 2464 1280
            WIRE 2464 1136 2688 1136
        END BRANCH
        BEGIN BRANCH raddr(7:0)
            WIRE 848 1536 960 1536
            WIRE 848 1536 848 1664
            WIRE 848 1664 2528 1664
            WIRE 848 1664 848 1744
            WIRE 848 1744 960 1744
            WIRE 2384 1424 2528 1424
            WIRE 2528 1424 2528 1664
            WIRE 2528 1264 2528 1424
            WIRE 2528 1264 2688 1264
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 752 640 944 640
            WIRE 944 640 944 736
            WIRE 944 736 1136 736
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 752 256 1056 256
            WIRE 1056 256 1056 672
            WIRE 1056 672 1136 672
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1392 704 1472 704
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 240 640 368 640
        END BRANCH
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3264 1264 3280 1264
            WIRE 3280 1264 3328 1264
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1776 1440 1824 1440
            WIRE 1824 1440 1888 1440
            WIRE 1888 1440 1888 1488
            WIRE 1888 1488 2000 1488
            WIRE 1824 1440 1824 1920
            WIRE 1824 1920 1968 1920
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2352 1920 2368 1920
            WIRE 2368 1920 2560 1920
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1440 1376 1520 1376
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1344 1440 1520 1440
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1344 1840 1424 1840
            WIRE 1424 1504 1424 1840
            WIRE 1424 1504 1520 1504
        END BRANCH
        BEGIN BRANCH XLXN_35(7:0)
            WIRE 848 1072 1008 1072
            WIRE 1008 1072 1360 1072
            WIRE 1360 1072 1360 2064
            WIRE 880 1936 960 1936
            WIRE 880 1936 880 2064
            WIRE 880 2064 1360 2064
            WIRE 1008 880 1008 1072
            WIRE 1008 880 2032 880
        END BRANCH
        BEGIN BRANCH waddr(7:0)
            WIRE 432 1072 464 1072
            WIRE 432 1072 432 1344
            WIRE 432 1344 896 1344
            WIRE 896 1344 960 1344
            WIRE 896 624 896 1344
            WIRE 896 624 2544 624
            WIRE 2544 624 2544 880
            WIRE 2544 880 2544 1008
            WIRE 2544 1008 2688 1008
            WIRE 2416 880 2544 880
        END BRANCH
        INSTANCE XLXI_5 464 1328 R0
        BEGIN BRANCH XLXN_36
            WIRE 448 944 448 1136
            WIRE 448 1136 464 1136
            WIRE 448 944 1776 944
            WIRE 1728 736 1776 736
            WIRE 1776 736 1776 944
        END BRANCH
        BEGIN BRANCH rst
            WIRE 352 544 352 1296
            WIRE 352 1296 464 1296
            WIRE 352 544 1792 544
            WIRE 1792 544 2208 544
            WIRE 1792 544 1792 1232
            WIRE 1792 1232 2032 1232
            WIRE 1792 1232 1792 1648
            WIRE 1792 1648 2000 1648
            WIRE 1792 1648 1792 2144
            WIRE 1792 2144 1968 2144
            WIRE 1712 1232 1792 1232
        END BRANCH
        BEGIN BRANCH drop_pkt
            WIRE 224 2096 448 2096
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1184 288 1216 288
            WIRE 1216 288 1232 288
        END BRANCH
        INSTANCE XLXI_17 2144 480 R270
        BEGIN BRANCH XLXN_53
            WIRE 2144 416 2208 416
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2144 480 2208 480
        END BRANCH
        IOMARKER 2144 480 in_fifo(71:0) R180 28
        IOMARKER 224 256 firstword R180 28
        IOMARKER 240 640 lastword R180 28
        IOMARKER 224 2096 drop_pkt R180 28
        IOMARKER 208 2224 clk R180 28
        IOMARKER 1712 1232 rst R180 28
        IOMARKER 1440 1376 fiforead R180 28
        IOMARKER 3328 1264 out_fifo(71:0) R0 28
        IOMARKER 2560 1920 valid_data R0 28
        IOMARKER 1184 288 fifowrite R180 28
        INSTANCE XLXI_14 1472 832 R0
        BEGIN BRANCH XLXN_49
            WIRE 832 2096 832 2240
            WIRE 832 2240 1408 2240
            WIRE 1408 768 1472 768
            WIRE 1408 768 1408 1008
            WIRE 1408 1008 2032 1008
            WIRE 1408 1008 1408 2240
        END BRANCH
    END SHEET
END SCHEMATIC

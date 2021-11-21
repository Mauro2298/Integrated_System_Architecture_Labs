/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu Nov  4 21:17:49 2021
/////////////////////////////////////////////////////////////


module myfir ( CLK, RST_N, DIN, VIN, H0, H1, H2, H3, H4, H5, H6, H7, H8, H9, 
        H10, DOUT, VOUT );
  input [12:0] DIN;
  input [12:0] H0;
  input [12:0] H1;
  input [12:0] H2;
  input [12:0] H3;
  input [12:0] H4;
  input [12:0] H5;
  input [12:0] H6;
  input [12:0] H7;
  input [12:0] H8;
  input [12:0] H9;
  input [12:0] H10;
  output [12:0] DOUT;
  input CLK, RST_N, VIN;
  output VOUT;
  wire   MULT_RESULTS_0__25_, MULT_RESULTS_0__24_, MULT_RESULTS_0__23_,
         MULT_RESULTS_0__22_, MULT_RESULTS_0__21_, MULT_RESULTS_0__20_,
         MULT_RESULTS_0__19_, MULT_RESULTS_0__18_, TRUNCATED_MULT_RES_1__7_,
         TRUNCATED_MULT_RES_1__6_, TRUNCATED_MULT_RES_1__5_,
         TRUNCATED_MULT_RES_1__4_, TRUNCATED_MULT_RES_1__3_,
         TRUNCATED_MULT_RES_1__2_, TRUNCATED_MULT_RES_1__1_,
         TRUNCATED_MULT_RES_1__0_, TRUNCATED_MULT_RES_2__7_,
         TRUNCATED_MULT_RES_2__6_, TRUNCATED_MULT_RES_2__5_,
         TRUNCATED_MULT_RES_2__4_, TRUNCATED_MULT_RES_2__3_,
         TRUNCATED_MULT_RES_2__2_, TRUNCATED_MULT_RES_2__1_,
         TRUNCATED_MULT_RES_2__0_, TRUNCATED_MULT_RES_3__7_,
         TRUNCATED_MULT_RES_3__6_, TRUNCATED_MULT_RES_3__5_,
         TRUNCATED_MULT_RES_3__4_, TRUNCATED_MULT_RES_3__3_,
         TRUNCATED_MULT_RES_3__2_, TRUNCATED_MULT_RES_3__1_,
         TRUNCATED_MULT_RES_3__0_, TRUNCATED_MULT_RES_4__7_,
         TRUNCATED_MULT_RES_4__6_, TRUNCATED_MULT_RES_4__5_,
         TRUNCATED_MULT_RES_4__4_, TRUNCATED_MULT_RES_4__3_,
         TRUNCATED_MULT_RES_4__2_, TRUNCATED_MULT_RES_4__1_,
         TRUNCATED_MULT_RES_4__0_, TRUNCATED_MULT_RES_5__7_,
         TRUNCATED_MULT_RES_5__6_, TRUNCATED_MULT_RES_5__5_,
         TRUNCATED_MULT_RES_5__4_, TRUNCATED_MULT_RES_5__3_,
         TRUNCATED_MULT_RES_5__2_, TRUNCATED_MULT_RES_5__1_,
         TRUNCATED_MULT_RES_5__0_, TRUNCATED_MULT_RES_6__7_,
         TRUNCATED_MULT_RES_6__6_, TRUNCATED_MULT_RES_6__5_,
         TRUNCATED_MULT_RES_6__4_, TRUNCATED_MULT_RES_6__3_,
         TRUNCATED_MULT_RES_6__2_, TRUNCATED_MULT_RES_6__1_,
         TRUNCATED_MULT_RES_6__0_, TRUNCATED_MULT_RES_7__7_,
         TRUNCATED_MULT_RES_7__6_, TRUNCATED_MULT_RES_7__5_,
         TRUNCATED_MULT_RES_7__4_, TRUNCATED_MULT_RES_7__3_,
         TRUNCATED_MULT_RES_7__2_, TRUNCATED_MULT_RES_7__1_,
         TRUNCATED_MULT_RES_7__0_, TRUNCATED_MULT_RES_8__7_,
         TRUNCATED_MULT_RES_8__6_, TRUNCATED_MULT_RES_8__5_,
         TRUNCATED_MULT_RES_8__4_, TRUNCATED_MULT_RES_8__3_,
         TRUNCATED_MULT_RES_8__2_, TRUNCATED_MULT_RES_8__1_,
         TRUNCATED_MULT_RES_8__0_, TRUNCATED_MULT_RES_9__7_,
         TRUNCATED_MULT_RES_9__6_, TRUNCATED_MULT_RES_9__5_,
         TRUNCATED_MULT_RES_9__4_, TRUNCATED_MULT_RES_9__3_,
         TRUNCATED_MULT_RES_9__2_, TRUNCATED_MULT_RES_9__1_,
         TRUNCATED_MULT_RES_9__0_, TRUNCATED_MULT_RES_10__7_,
         TRUNCATED_MULT_RES_10__6_, TRUNCATED_MULT_RES_10__5_,
         TRUNCATED_MULT_RES_10__4_, TRUNCATED_MULT_RES_10__3_,
         TRUNCATED_MULT_RES_10__2_, TRUNCATED_MULT_RES_10__1_,
         TRUNCATED_MULT_RES_10__0_, SUM_RESULTS_1__12_, SUM_RESULTS_1__6_,
         SUM_RESULTS_1__5_, SUM_RESULTS_1__4_, SUM_RESULTS_1__3_,
         SUM_RESULTS_1__2_, SUM_RESULTS_1__1_, SUM_RESULTS_1__0_,
         SUM_RESULTS_2__12_, SUM_RESULTS_2__7_, SUM_RESULTS_2__6_,
         SUM_RESULTS_2__5_, SUM_RESULTS_2__4_, SUM_RESULTS_2__3_,
         SUM_RESULTS_2__2_, SUM_RESULTS_2__1_, SUM_RESULTS_2__0_,
         SUM_RESULTS_3__12_, SUM_RESULTS_3__7_, SUM_RESULTS_3__6_,
         SUM_RESULTS_3__5_, SUM_RESULTS_3__4_, SUM_RESULTS_3__3_,
         SUM_RESULTS_3__2_, SUM_RESULTS_3__1_, SUM_RESULTS_3__0_,
         SUM_RESULTS_4__12_, SUM_RESULTS_4__8_, SUM_RESULTS_4__7_,
         SUM_RESULTS_4__6_, SUM_RESULTS_4__5_, SUM_RESULTS_4__4_,
         SUM_RESULTS_4__3_, SUM_RESULTS_4__2_, SUM_RESULTS_4__1_,
         SUM_RESULTS_4__0_, SUM_RESULTS_5__12_, SUM_RESULTS_5__8_,
         SUM_RESULTS_5__7_, SUM_RESULTS_5__6_, SUM_RESULTS_5__5_,
         SUM_RESULTS_5__4_, SUM_RESULTS_5__3_, SUM_RESULTS_5__2_,
         SUM_RESULTS_5__1_, SUM_RESULTS_5__0_, SUM_RESULTS_6__12_,
         SUM_RESULTS_6__8_, SUM_RESULTS_6__7_, SUM_RESULTS_6__6_,
         SUM_RESULTS_6__5_, SUM_RESULTS_6__4_, SUM_RESULTS_6__3_,
         SUM_RESULTS_6__2_, SUM_RESULTS_6__1_, SUM_RESULTS_6__0_,
         SUM_RESULTS_7__12_, SUM_RESULTS_7__8_, SUM_RESULTS_7__7_,
         SUM_RESULTS_7__6_, SUM_RESULTS_7__5_, SUM_RESULTS_7__4_,
         SUM_RESULTS_7__3_, SUM_RESULTS_7__2_, SUM_RESULTS_7__1_,
         SUM_RESULTS_7__0_, SUM_RESULTS_8__12_, SUM_RESULTS_8__8_,
         SUM_RESULTS_8__7_, SUM_RESULTS_8__6_, SUM_RESULTS_8__5_,
         SUM_RESULTS_8__4_, SUM_RESULTS_8__3_, SUM_RESULTS_8__2_,
         SUM_RESULTS_8__1_, SUM_RESULTS_8__0_, SUM_RESULTS_9__12_,
         SUM_RESULTS_9__9_, SUM_RESULTS_9__8_, SUM_RESULTS_9__7_,
         SUM_RESULTS_9__6_, SUM_RESULTS_9__5_, SUM_RESULTS_9__4_,
         SUM_RESULTS_9__3_, SUM_RESULTS_9__2_, SUM_RESULTS_9__1_,
         SUM_RESULTS_9__0_, SUM_RESULTS_10__12_, SUM_RESULTS_10__9_,
         SUM_RESULTS_10__8_, SUM_RESULTS_10__7_, SUM_RESULTS_10__6_,
         SUM_RESULTS_10__5_, SUM_RESULTS_10__4_, SUM_RESULTS_10__3_,
         SUM_RESULTS_10__2_, SUM_RESULTS_10__1_, SUM_RESULTS_10__0_, ENABLE,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, MUL0_O_0_, MUL0_mult_17_n683,
         MUL0_mult_17_n682, MUL0_mult_17_n681, MUL0_mult_17_n680,
         MUL0_mult_17_n679, MUL0_mult_17_n678, MUL0_mult_17_n677,
         MUL0_mult_17_n676, MUL0_mult_17_n675, MUL0_mult_17_n674,
         MUL0_mult_17_n673, MUL0_mult_17_n672, MUL0_mult_17_n671,
         MUL0_mult_17_n670, MUL0_mult_17_n669, MUL0_mult_17_n668,
         MUL0_mult_17_n667, MUL0_mult_17_n666, MUL0_mult_17_n665,
         MUL0_mult_17_n664, MUL0_mult_17_n663, MUL0_mult_17_n662,
         MUL0_mult_17_n661, MUL0_mult_17_n660, MUL0_mult_17_n659,
         MUL0_mult_17_n658, MUL0_mult_17_n657, MUL0_mult_17_n656,
         MUL0_mult_17_n655, MUL0_mult_17_n654, MUL0_mult_17_n653,
         MUL0_mult_17_n652, MUL0_mult_17_n651, MUL0_mult_17_n650,
         MUL0_mult_17_n649, MUL0_mult_17_n648, MUL0_mult_17_n647,
         MUL0_mult_17_n646, MUL0_mult_17_n645, MUL0_mult_17_n644,
         MUL0_mult_17_n643, MUL0_mult_17_n642, MUL0_mult_17_n641,
         MUL0_mult_17_n640, MUL0_mult_17_n639, MUL0_mult_17_n638,
         MUL0_mult_17_n637, MUL0_mult_17_n636, MUL0_mult_17_n635,
         MUL0_mult_17_n634, MUL0_mult_17_n633, MUL0_mult_17_n632,
         MUL0_mult_17_n631, MUL0_mult_17_n630, MUL0_mult_17_n629,
         MUL0_mult_17_n628, MUL0_mult_17_n627, MUL0_mult_17_n626,
         MUL0_mult_17_n625, MUL0_mult_17_n624, MUL0_mult_17_n623,
         MUL0_mult_17_n622, MUL0_mult_17_n621, MUL0_mult_17_n620,
         MUL0_mult_17_n619, MUL0_mult_17_n618, MUL0_mult_17_n617,
         MUL0_mult_17_n616, MUL0_mult_17_n615, MUL0_mult_17_n614,
         MUL0_mult_17_n613, MUL0_mult_17_n612, MUL0_mult_17_n611,
         MUL0_mult_17_n610, MUL0_mult_17_n609, MUL0_mult_17_n608,
         MUL0_mult_17_n607, MUL0_mult_17_n606, MUL0_mult_17_n605,
         MUL0_mult_17_n604, MUL0_mult_17_n603, MUL0_mult_17_n602,
         MUL0_mult_17_n601, MUL0_mult_17_n600, MUL0_mult_17_n599,
         MUL0_mult_17_n598, MUL0_mult_17_n597, MUL0_mult_17_n596,
         MUL0_mult_17_n595, MUL0_mult_17_n594, MUL0_mult_17_n593,
         MUL0_mult_17_n592, MUL0_mult_17_n591, MUL0_mult_17_n590,
         MUL0_mult_17_n589, MUL0_mult_17_n588, MUL0_mult_17_n587,
         MUL0_mult_17_n586, MUL0_mult_17_n585, MUL0_mult_17_n584,
         MUL0_mult_17_n583, MUL0_mult_17_n582, MUL0_mult_17_n581,
         MUL0_mult_17_n580, MUL0_mult_17_n579, MUL0_mult_17_n578,
         MUL0_mult_17_n577, MUL0_mult_17_n576, MUL0_mult_17_n575,
         MUL0_mult_17_n574, MUL0_mult_17_n573, MUL0_mult_17_n572,
         MUL0_mult_17_n571, MUL0_mult_17_n570, MUL0_mult_17_n569,
         MUL0_mult_17_n568, MUL0_mult_17_n567, MUL0_mult_17_n566,
         MUL0_mult_17_n565, MUL0_mult_17_n564, MUL0_mult_17_n563,
         MUL0_mult_17_n562, MUL0_mult_17_n561, MUL0_mult_17_n560,
         MUL0_mult_17_n559, MUL0_mult_17_n558, MUL0_mult_17_n557,
         MUL0_mult_17_n556, MUL0_mult_17_n555, MUL0_mult_17_n554,
         MUL0_mult_17_n553, MUL0_mult_17_n552, MUL0_mult_17_n551,
         MUL0_mult_17_n550, MUL0_mult_17_n549, MUL0_mult_17_n548,
         MUL0_mult_17_n547, MUL0_mult_17_n546, MUL0_mult_17_n545,
         MUL0_mult_17_n544, MUL0_mult_17_n543, MUL0_mult_17_n542,
         MUL0_mult_17_n541, MUL0_mult_17_n540, MUL0_mult_17_n539,
         MUL0_mult_17_n538, MUL0_mult_17_n537, MUL0_mult_17_n536,
         MUL0_mult_17_n535, MUL0_mult_17_n534, MUL0_mult_17_n533,
         MUL0_mult_17_n532, MUL0_mult_17_n531, MUL0_mult_17_n530,
         MUL0_mult_17_n529, MUL0_mult_17_n528, MUL0_mult_17_n527,
         MUL0_mult_17_n526, MUL0_mult_17_n525, MUL0_mult_17_n524,
         MUL0_mult_17_n523, MUL0_mult_17_n522, MUL0_mult_17_n521,
         MUL0_mult_17_n520, MUL0_mult_17_n519, MUL0_mult_17_n518,
         MUL0_mult_17_n517, MUL0_mult_17_n516, MUL0_mult_17_n515,
         MUL0_mult_17_n514, MUL0_mult_17_n513, MUL0_mult_17_n512,
         MUL0_mult_17_n511, MUL0_mult_17_n510, MUL0_mult_17_n509,
         MUL0_mult_17_n508, MUL0_mult_17_n507, MUL0_mult_17_n506,
         MUL0_mult_17_product_17_, MUL0_mult_17_product_16_,
         MUL0_mult_17_product_15_, MUL0_mult_17_product_14_,
         MUL0_mult_17_product_13_, MUL0_mult_17_product_12_,
         MUL0_mult_17_product_11_, MUL0_mult_17_product_10_,
         MUL0_mult_17_product_9_, MUL0_mult_17_product_8_,
         MUL0_mult_17_product_7_, MUL0_mult_17_product_6_,
         MUL0_mult_17_product_5_, MUL0_mult_17_product_4_,
         MUL0_mult_17_product_3_, MUL0_mult_17_product_2_,
         MUL0_mult_17_product_1_, MUL0_mult_17_n288, MUL0_mult_17_n287,
         MUL0_mult_17_n286, MUL0_mult_17_n285, MUL0_mult_17_n284,
         MUL0_mult_17_n283, MUL0_mult_17_n282, MUL0_mult_17_n281,
         MUL0_mult_17_n280, MUL0_mult_17_n279, MUL0_mult_17_n276,
         MUL0_mult_17_n275, MUL0_mult_17_n274, MUL0_mult_17_n273,
         MUL0_mult_17_n272, MUL0_mult_17_n271, MUL0_mult_17_n270,
         MUL0_mult_17_n269, MUL0_mult_17_n268, MUL0_mult_17_n267,
         MUL0_mult_17_n266, MUL0_mult_17_n264, MUL0_mult_17_n263,
         MUL0_mult_17_n262, MUL0_mult_17_n261, MUL0_mult_17_n260,
         MUL0_mult_17_n259, MUL0_mult_17_n258, MUL0_mult_17_n257,
         MUL0_mult_17_n256, MUL0_mult_17_n255, MUL0_mult_17_n254,
         MUL0_mult_17_n253, MUL0_mult_17_n251, MUL0_mult_17_n250,
         MUL0_mult_17_n249, MUL0_mult_17_n248, MUL0_mult_17_n247,
         MUL0_mult_17_n246, MUL0_mult_17_n245, MUL0_mult_17_n244,
         MUL0_mult_17_n243, MUL0_mult_17_n242, MUL0_mult_17_n241,
         MUL0_mult_17_n240, MUL0_mult_17_n238, MUL0_mult_17_n237,
         MUL0_mult_17_n236, MUL0_mult_17_n235, MUL0_mult_17_n234,
         MUL0_mult_17_n233, MUL0_mult_17_n232, MUL0_mult_17_n231,
         MUL0_mult_17_n230, MUL0_mult_17_n229, MUL0_mult_17_n228,
         MUL0_mult_17_n227, MUL0_mult_17_n225, MUL0_mult_17_n224,
         MUL0_mult_17_n223, MUL0_mult_17_n221, MUL0_mult_17_n220,
         MUL0_mult_17_n219, MUL0_mult_17_n218, MUL0_mult_17_n217,
         MUL0_mult_17_n216, MUL0_mult_17_n215, MUL0_mult_17_n214,
         MUL0_mult_17_n212, MUL0_mult_17_n210, MUL0_mult_17_n209,
         MUL0_mult_17_n208, MUL0_mult_17_n207, MUL0_mult_17_n206,
         MUL0_mult_17_n205, MUL0_mult_17_n204, MUL0_mult_17_n203,
         MUL0_mult_17_n202, MUL0_mult_17_n201, MUL0_mult_17_n197,
         MUL0_mult_17_n196, MUL0_mult_17_n195, MUL0_mult_17_n194,
         MUL0_mult_17_n193, MUL0_mult_17_n171, MUL0_mult_17_n170,
         MUL0_mult_17_n169, MUL0_mult_17_n168, MUL0_mult_17_n167,
         MUL0_mult_17_n166, MUL0_mult_17_n165, MUL0_mult_17_n164,
         MUL0_mult_17_n163, MUL0_mult_17_n162, MUL0_mult_17_n161,
         MUL0_mult_17_n160, MUL0_mult_17_n159, MUL0_mult_17_n158,
         MUL0_mult_17_n157, MUL0_mult_17_n156, MUL0_mult_17_n155,
         MUL0_mult_17_n154, MUL0_mult_17_n153, MUL0_mult_17_n152,
         MUL0_mult_17_n151, MUL0_mult_17_n150, MUL0_mult_17_n149,
         MUL0_mult_17_n148, MUL0_mult_17_n147, MUL0_mult_17_n146,
         MUL0_mult_17_n145, MUL0_mult_17_n144, MUL0_mult_17_n143,
         MUL0_mult_17_n142, MUL0_mult_17_n141, MUL0_mult_17_n140,
         MUL0_mult_17_n139, MUL0_mult_17_n138, MUL0_mult_17_n137,
         MUL0_mult_17_n136, MUL0_mult_17_n135, MUL0_mult_17_n134,
         MUL0_mult_17_n133, MUL0_mult_17_n132, MUL0_mult_17_n131,
         MUL0_mult_17_n130, MUL0_mult_17_n129, MUL0_mult_17_n128,
         MUL0_mult_17_n127, MUL0_mult_17_n126, MUL0_mult_17_n125,
         MUL0_mult_17_n124, MUL0_mult_17_n123, MUL0_mult_17_n122,
         MUL0_mult_17_n121, MUL0_mult_17_n120, MUL0_mult_17_n119,
         MUL0_mult_17_n118, MUL0_mult_17_n117, MUL0_mult_17_n116,
         MUL0_mult_17_n115, MUL0_mult_17_n114, MUL0_mult_17_n113,
         MUL0_mult_17_n112, MUL0_mult_17_n111, MUL0_mult_17_n110,
         MUL0_mult_17_n109, MUL0_mult_17_n108, MUL0_mult_17_n107,
         MUL0_mult_17_n106, MUL0_mult_17_n105, MUL0_mult_17_n104,
         MUL0_mult_17_n103, MUL0_mult_17_n102, MUL0_mult_17_n101,
         MUL0_mult_17_n100, MUL0_mult_17_n98, MUL0_mult_17_n97,
         MUL0_mult_17_n96, MUL0_mult_17_n95, MUL0_mult_17_n94,
         MUL0_mult_17_n93, MUL0_mult_17_n92, MUL0_mult_17_n91,
         MUL0_mult_17_n90, MUL0_mult_17_n89, MUL0_mult_17_n88,
         MUL0_mult_17_n87, MUL0_mult_17_n86, MUL0_mult_17_n85,
         MUL0_mult_17_n84, MUL0_mult_17_n83, MUL0_mult_17_n82,
         MUL0_mult_17_n81, MUL0_mult_17_n80, MUL0_mult_17_n79,
         MUL0_mult_17_n78, MUL0_mult_17_n76, MUL0_mult_17_n75,
         MUL0_mult_17_n74, MUL0_mult_17_n73, MUL0_mult_17_n72,
         MUL0_mult_17_n71, MUL0_mult_17_n70, MUL0_mult_17_n69,
         MUL0_mult_17_n68, MUL0_mult_17_n67, MUL0_mult_17_n66,
         MUL0_mult_17_n65, MUL0_mult_17_n64, MUL0_mult_17_n63,
         MUL0_mult_17_n62, MUL0_mult_17_n61, MUL0_mult_17_n60,
         MUL0_mult_17_n58, MUL0_mult_17_n57, MUL0_mult_17_n56,
         MUL0_mult_17_n55, MUL0_mult_17_n54, MUL0_mult_17_n53,
         MUL0_mult_17_n52, MUL0_mult_17_n51, MUL0_mult_17_n50,
         MUL0_mult_17_n49, MUL0_mult_17_n48, MUL0_mult_17_n47,
         MUL0_mult_17_n46, MUL0_mult_17_n44, MUL0_mult_17_n43,
         MUL0_mult_17_n42, MUL0_mult_17_n41, MUL0_mult_17_n40,
         MUL0_mult_17_n39, MUL0_mult_17_n38, MUL0_mult_17_n37,
         MUL0_mult_17_n36, MUL0_mult_17_n34, MUL0_mult_17_n33,
         MUL0_mult_17_n32, MUL0_mult_17_n31, MUL0_mult_17_n30,
         MUL0_mult_17_n29, MUL0_mult_17_n10, MUL0_mult_17_n9, MUL0_mult_17_n8,
         MUL0_mult_17_n7, MUL0_mult_17_n6, MUL0_mult_17_n5, MUL0_mult_17_n4,
         SAMPLE_REG_1_n43, SAMPLE_REG_1_n42, SAMPLE_REG_1_n41,
         SAMPLE_REG_1_n40, SAMPLE_REG_1_n39, SAMPLE_REG_1_n38,
         SAMPLE_REG_1_n37, SAMPLE_REG_1_n36, SAMPLE_REG_1_n35,
         SAMPLE_REG_1_n34, SAMPLE_REG_1_n33, SAMPLE_REG_1_n32,
         SAMPLE_REG_1_n31, SAMPLE_REG_1_n30, SAMPLE_REG_1_n29,
         SAMPLE_REG_1_n28, SAMPLE_REG_1_n27, SAMPLE_REG_1_n26,
         SAMPLE_REG_1_n25, SAMPLE_REG_1_n24, SAMPLE_REG_1_n23,
         SAMPLE_REG_1_n22, SAMPLE_REG_1_n21, SAMPLE_REG_1_n20,
         SAMPLE_REG_1_n19, SAMPLE_REG_1_n18, SAMPLE_REG_1_n17,
         SAMPLE_REG_1_n16, SAMPLE_REG_1_n15, SAMPLE_REG_1_n14,
         SAMPLE_REG_1_n13, SAMPLE_REG_1_n12, SAMPLE_REG_1_n11,
         SAMPLE_REG_1_n10, SAMPLE_REG_1_n9, SAMPLE_REG_1_n8, SAMPLE_REG_1_n7,
         SAMPLE_REG_1_n6, SAMPLE_REG_1_n5, SAMPLE_REG_1_n4, SAMPLE_REG_1_n3,
         SAMPLE_REG_1_n2, SAMPLE_REG_1_n1, MUL_1_O_0_, MUL_1_mult_17_n683,
         MUL_1_mult_17_n682, MUL_1_mult_17_n681, MUL_1_mult_17_n680,
         MUL_1_mult_17_n679, MUL_1_mult_17_n678, MUL_1_mult_17_n677,
         MUL_1_mult_17_n676, MUL_1_mult_17_n675, MUL_1_mult_17_n674,
         MUL_1_mult_17_n673, MUL_1_mult_17_n672, MUL_1_mult_17_n671,
         MUL_1_mult_17_n670, MUL_1_mult_17_n669, MUL_1_mult_17_n668,
         MUL_1_mult_17_n667, MUL_1_mult_17_n666, MUL_1_mult_17_n665,
         MUL_1_mult_17_n664, MUL_1_mult_17_n663, MUL_1_mult_17_n662,
         MUL_1_mult_17_n661, MUL_1_mult_17_n660, MUL_1_mult_17_n659,
         MUL_1_mult_17_n658, MUL_1_mult_17_n657, MUL_1_mult_17_n656,
         MUL_1_mult_17_n655, MUL_1_mult_17_n654, MUL_1_mult_17_n653,
         MUL_1_mult_17_n652, MUL_1_mult_17_n651, MUL_1_mult_17_n650,
         MUL_1_mult_17_n649, MUL_1_mult_17_n648, MUL_1_mult_17_n647,
         MUL_1_mult_17_n646, MUL_1_mult_17_n645, MUL_1_mult_17_n644,
         MUL_1_mult_17_n643, MUL_1_mult_17_n642, MUL_1_mult_17_n641,
         MUL_1_mult_17_n640, MUL_1_mult_17_n639, MUL_1_mult_17_n638,
         MUL_1_mult_17_n637, MUL_1_mult_17_n636, MUL_1_mult_17_n635,
         MUL_1_mult_17_n634, MUL_1_mult_17_n633, MUL_1_mult_17_n632,
         MUL_1_mult_17_n631, MUL_1_mult_17_n630, MUL_1_mult_17_n629,
         MUL_1_mult_17_n628, MUL_1_mult_17_n627, MUL_1_mult_17_n626,
         MUL_1_mult_17_n625, MUL_1_mult_17_n624, MUL_1_mult_17_n623,
         MUL_1_mult_17_n622, MUL_1_mult_17_n621, MUL_1_mult_17_n620,
         MUL_1_mult_17_n619, MUL_1_mult_17_n618, MUL_1_mult_17_n617,
         MUL_1_mult_17_n616, MUL_1_mult_17_n615, MUL_1_mult_17_n614,
         MUL_1_mult_17_n613, MUL_1_mult_17_n612, MUL_1_mult_17_n611,
         MUL_1_mult_17_n610, MUL_1_mult_17_n609, MUL_1_mult_17_n608,
         MUL_1_mult_17_n607, MUL_1_mult_17_n606, MUL_1_mult_17_n605,
         MUL_1_mult_17_n604, MUL_1_mult_17_n603, MUL_1_mult_17_n602,
         MUL_1_mult_17_n601, MUL_1_mult_17_n600, MUL_1_mult_17_n599,
         MUL_1_mult_17_n598, MUL_1_mult_17_n597, MUL_1_mult_17_n596,
         MUL_1_mult_17_n595, MUL_1_mult_17_n594, MUL_1_mult_17_n593,
         MUL_1_mult_17_n592, MUL_1_mult_17_n591, MUL_1_mult_17_n590,
         MUL_1_mult_17_n589, MUL_1_mult_17_n588, MUL_1_mult_17_n587,
         MUL_1_mult_17_n586, MUL_1_mult_17_n585, MUL_1_mult_17_n584,
         MUL_1_mult_17_n583, MUL_1_mult_17_n582, MUL_1_mult_17_n581,
         MUL_1_mult_17_n580, MUL_1_mult_17_n579, MUL_1_mult_17_n578,
         MUL_1_mult_17_n577, MUL_1_mult_17_n576, MUL_1_mult_17_n575,
         MUL_1_mult_17_n574, MUL_1_mult_17_n573, MUL_1_mult_17_n572,
         MUL_1_mult_17_n571, MUL_1_mult_17_n570, MUL_1_mult_17_n569,
         MUL_1_mult_17_n568, MUL_1_mult_17_n567, MUL_1_mult_17_n566,
         MUL_1_mult_17_n565, MUL_1_mult_17_n564, MUL_1_mult_17_n563,
         MUL_1_mult_17_n562, MUL_1_mult_17_n561, MUL_1_mult_17_n560,
         MUL_1_mult_17_n559, MUL_1_mult_17_n558, MUL_1_mult_17_n557,
         MUL_1_mult_17_n556, MUL_1_mult_17_n555, MUL_1_mult_17_n554,
         MUL_1_mult_17_n553, MUL_1_mult_17_n552, MUL_1_mult_17_n551,
         MUL_1_mult_17_n550, MUL_1_mult_17_n549, MUL_1_mult_17_n548,
         MUL_1_mult_17_n547, MUL_1_mult_17_n546, MUL_1_mult_17_n545,
         MUL_1_mult_17_n544, MUL_1_mult_17_n543, MUL_1_mult_17_n542,
         MUL_1_mult_17_n541, MUL_1_mult_17_n540, MUL_1_mult_17_n539,
         MUL_1_mult_17_n538, MUL_1_mult_17_n537, MUL_1_mult_17_n536,
         MUL_1_mult_17_n535, MUL_1_mult_17_n534, MUL_1_mult_17_n533,
         MUL_1_mult_17_n532, MUL_1_mult_17_n531, MUL_1_mult_17_n530,
         MUL_1_mult_17_n529, MUL_1_mult_17_n528, MUL_1_mult_17_n527,
         MUL_1_mult_17_n526, MUL_1_mult_17_n525, MUL_1_mult_17_n524,
         MUL_1_mult_17_n523, MUL_1_mult_17_n522, MUL_1_mult_17_n521,
         MUL_1_mult_17_n520, MUL_1_mult_17_n519, MUL_1_mult_17_n518,
         MUL_1_mult_17_n517, MUL_1_mult_17_n516, MUL_1_mult_17_n515,
         MUL_1_mult_17_n514, MUL_1_mult_17_n513, MUL_1_mult_17_n512,
         MUL_1_mult_17_n511, MUL_1_mult_17_n510, MUL_1_mult_17_n509,
         MUL_1_mult_17_n508, MUL_1_mult_17_n507, MUL_1_mult_17_n506,
         MUL_1_mult_17_product_17_, MUL_1_mult_17_product_16_,
         MUL_1_mult_17_product_15_, MUL_1_mult_17_product_14_,
         MUL_1_mult_17_product_13_, MUL_1_mult_17_product_12_,
         MUL_1_mult_17_product_11_, MUL_1_mult_17_product_10_,
         MUL_1_mult_17_product_9_, MUL_1_mult_17_product_8_,
         MUL_1_mult_17_product_7_, MUL_1_mult_17_product_6_,
         MUL_1_mult_17_product_5_, MUL_1_mult_17_product_4_,
         MUL_1_mult_17_product_3_, MUL_1_mult_17_product_2_,
         MUL_1_mult_17_product_1_, MUL_1_mult_17_n288, MUL_1_mult_17_n287,
         MUL_1_mult_17_n286, MUL_1_mult_17_n285, MUL_1_mult_17_n284,
         MUL_1_mult_17_n283, MUL_1_mult_17_n282, MUL_1_mult_17_n281,
         MUL_1_mult_17_n280, MUL_1_mult_17_n279, MUL_1_mult_17_n276,
         MUL_1_mult_17_n275, MUL_1_mult_17_n274, MUL_1_mult_17_n273,
         MUL_1_mult_17_n272, MUL_1_mult_17_n271, MUL_1_mult_17_n270,
         MUL_1_mult_17_n269, MUL_1_mult_17_n268, MUL_1_mult_17_n267,
         MUL_1_mult_17_n266, MUL_1_mult_17_n264, MUL_1_mult_17_n263,
         MUL_1_mult_17_n262, MUL_1_mult_17_n261, MUL_1_mult_17_n260,
         MUL_1_mult_17_n259, MUL_1_mult_17_n258, MUL_1_mult_17_n257,
         MUL_1_mult_17_n256, MUL_1_mult_17_n255, MUL_1_mult_17_n254,
         MUL_1_mult_17_n253, MUL_1_mult_17_n251, MUL_1_mult_17_n250,
         MUL_1_mult_17_n249, MUL_1_mult_17_n248, MUL_1_mult_17_n247,
         MUL_1_mult_17_n246, MUL_1_mult_17_n245, MUL_1_mult_17_n244,
         MUL_1_mult_17_n243, MUL_1_mult_17_n242, MUL_1_mult_17_n241,
         MUL_1_mult_17_n240, MUL_1_mult_17_n238, MUL_1_mult_17_n237,
         MUL_1_mult_17_n236, MUL_1_mult_17_n235, MUL_1_mult_17_n234,
         MUL_1_mult_17_n233, MUL_1_mult_17_n232, MUL_1_mult_17_n231,
         MUL_1_mult_17_n230, MUL_1_mult_17_n229, MUL_1_mult_17_n228,
         MUL_1_mult_17_n227, MUL_1_mult_17_n225, MUL_1_mult_17_n224,
         MUL_1_mult_17_n223, MUL_1_mult_17_n221, MUL_1_mult_17_n220,
         MUL_1_mult_17_n219, MUL_1_mult_17_n218, MUL_1_mult_17_n217,
         MUL_1_mult_17_n216, MUL_1_mult_17_n215, MUL_1_mult_17_n214,
         MUL_1_mult_17_n212, MUL_1_mult_17_n210, MUL_1_mult_17_n209,
         MUL_1_mult_17_n208, MUL_1_mult_17_n207, MUL_1_mult_17_n206,
         MUL_1_mult_17_n205, MUL_1_mult_17_n204, MUL_1_mult_17_n203,
         MUL_1_mult_17_n202, MUL_1_mult_17_n201, MUL_1_mult_17_n197,
         MUL_1_mult_17_n196, MUL_1_mult_17_n195, MUL_1_mult_17_n194,
         MUL_1_mult_17_n193, MUL_1_mult_17_n171, MUL_1_mult_17_n170,
         MUL_1_mult_17_n169, MUL_1_mult_17_n168, MUL_1_mult_17_n167,
         MUL_1_mult_17_n166, MUL_1_mult_17_n165, MUL_1_mult_17_n164,
         MUL_1_mult_17_n163, MUL_1_mult_17_n162, MUL_1_mult_17_n161,
         MUL_1_mult_17_n160, MUL_1_mult_17_n159, MUL_1_mult_17_n158,
         MUL_1_mult_17_n157, MUL_1_mult_17_n156, MUL_1_mult_17_n155,
         MUL_1_mult_17_n154, MUL_1_mult_17_n153, MUL_1_mult_17_n152,
         MUL_1_mult_17_n151, MUL_1_mult_17_n150, MUL_1_mult_17_n149,
         MUL_1_mult_17_n148, MUL_1_mult_17_n147, MUL_1_mult_17_n146,
         MUL_1_mult_17_n145, MUL_1_mult_17_n144, MUL_1_mult_17_n143,
         MUL_1_mult_17_n142, MUL_1_mult_17_n141, MUL_1_mult_17_n140,
         MUL_1_mult_17_n139, MUL_1_mult_17_n138, MUL_1_mult_17_n137,
         MUL_1_mult_17_n136, MUL_1_mult_17_n135, MUL_1_mult_17_n134,
         MUL_1_mult_17_n133, MUL_1_mult_17_n132, MUL_1_mult_17_n131,
         MUL_1_mult_17_n130, MUL_1_mult_17_n129, MUL_1_mult_17_n128,
         MUL_1_mult_17_n127, MUL_1_mult_17_n126, MUL_1_mult_17_n125,
         MUL_1_mult_17_n124, MUL_1_mult_17_n123, MUL_1_mult_17_n122,
         MUL_1_mult_17_n121, MUL_1_mult_17_n120, MUL_1_mult_17_n119,
         MUL_1_mult_17_n118, MUL_1_mult_17_n117, MUL_1_mult_17_n116,
         MUL_1_mult_17_n115, MUL_1_mult_17_n114, MUL_1_mult_17_n113,
         MUL_1_mult_17_n112, MUL_1_mult_17_n111, MUL_1_mult_17_n110,
         MUL_1_mult_17_n109, MUL_1_mult_17_n108, MUL_1_mult_17_n107,
         MUL_1_mult_17_n106, MUL_1_mult_17_n105, MUL_1_mult_17_n104,
         MUL_1_mult_17_n103, MUL_1_mult_17_n102, MUL_1_mult_17_n101,
         MUL_1_mult_17_n100, MUL_1_mult_17_n98, MUL_1_mult_17_n97,
         MUL_1_mult_17_n96, MUL_1_mult_17_n95, MUL_1_mult_17_n94,
         MUL_1_mult_17_n93, MUL_1_mult_17_n92, MUL_1_mult_17_n91,
         MUL_1_mult_17_n90, MUL_1_mult_17_n89, MUL_1_mult_17_n88,
         MUL_1_mult_17_n87, MUL_1_mult_17_n86, MUL_1_mult_17_n85,
         MUL_1_mult_17_n84, MUL_1_mult_17_n83, MUL_1_mult_17_n82,
         MUL_1_mult_17_n81, MUL_1_mult_17_n80, MUL_1_mult_17_n79,
         MUL_1_mult_17_n78, MUL_1_mult_17_n76, MUL_1_mult_17_n75,
         MUL_1_mult_17_n74, MUL_1_mult_17_n73, MUL_1_mult_17_n72,
         MUL_1_mult_17_n71, MUL_1_mult_17_n70, MUL_1_mult_17_n69,
         MUL_1_mult_17_n68, MUL_1_mult_17_n67, MUL_1_mult_17_n66,
         MUL_1_mult_17_n65, MUL_1_mult_17_n64, MUL_1_mult_17_n63,
         MUL_1_mult_17_n62, MUL_1_mult_17_n61, MUL_1_mult_17_n60,
         MUL_1_mult_17_n58, MUL_1_mult_17_n57, MUL_1_mult_17_n56,
         MUL_1_mult_17_n55, MUL_1_mult_17_n54, MUL_1_mult_17_n53,
         MUL_1_mult_17_n52, MUL_1_mult_17_n51, MUL_1_mult_17_n50,
         MUL_1_mult_17_n49, MUL_1_mult_17_n48, MUL_1_mult_17_n47,
         MUL_1_mult_17_n46, MUL_1_mult_17_n44, MUL_1_mult_17_n43,
         MUL_1_mult_17_n42, MUL_1_mult_17_n41, MUL_1_mult_17_n40,
         MUL_1_mult_17_n39, MUL_1_mult_17_n38, MUL_1_mult_17_n37,
         MUL_1_mult_17_n36, MUL_1_mult_17_n34, MUL_1_mult_17_n33,
         MUL_1_mult_17_n32, MUL_1_mult_17_n31, MUL_1_mult_17_n30,
         MUL_1_mult_17_n29, MUL_1_mult_17_n10, MUL_1_mult_17_n9,
         MUL_1_mult_17_n8, MUL_1_mult_17_n7, MUL_1_mult_17_n6,
         MUL_1_mult_17_n5, MUL_1_mult_17_n4, ADD_1_add_18_n1, SAMPLE_REG_2_n82,
         SAMPLE_REG_2_n81, SAMPLE_REG_2_n80, SAMPLE_REG_2_n79,
         SAMPLE_REG_2_n78, SAMPLE_REG_2_n77, SAMPLE_REG_2_n76,
         SAMPLE_REG_2_n75, SAMPLE_REG_2_n74, SAMPLE_REG_2_n73,
         SAMPLE_REG_2_n72, SAMPLE_REG_2_n71, SAMPLE_REG_2_n70,
         SAMPLE_REG_2_n69, SAMPLE_REG_2_n68, SAMPLE_REG_2_n67,
         SAMPLE_REG_2_n66, SAMPLE_REG_2_n65, SAMPLE_REG_2_n64,
         SAMPLE_REG_2_n63, SAMPLE_REG_2_n62, SAMPLE_REG_2_n61,
         SAMPLE_REG_2_n60, SAMPLE_REG_2_n59, SAMPLE_REG_2_n58,
         SAMPLE_REG_2_n57, SAMPLE_REG_2_n56, SAMPLE_REG_2_n55,
         SAMPLE_REG_2_n54, SAMPLE_REG_2_n53, SAMPLE_REG_2_n52,
         SAMPLE_REG_2_n51, SAMPLE_REG_2_n50, SAMPLE_REG_2_n49,
         SAMPLE_REG_2_n48, SAMPLE_REG_2_n47, SAMPLE_REG_2_n46,
         SAMPLE_REG_2_n45, SAMPLE_REG_2_n44, SAMPLE_REG_2_n43,
         SAMPLE_REG_2_n42, SAMPLE_REG_2_n41, SAMPLE_REG_2_n40, MUL_2_O_0_,
         MUL_2_mult_17_n683, MUL_2_mult_17_n682, MUL_2_mult_17_n681,
         MUL_2_mult_17_n680, MUL_2_mult_17_n679, MUL_2_mult_17_n678,
         MUL_2_mult_17_n677, MUL_2_mult_17_n676, MUL_2_mult_17_n675,
         MUL_2_mult_17_n674, MUL_2_mult_17_n673, MUL_2_mult_17_n672,
         MUL_2_mult_17_n671, MUL_2_mult_17_n670, MUL_2_mult_17_n669,
         MUL_2_mult_17_n668, MUL_2_mult_17_n667, MUL_2_mult_17_n666,
         MUL_2_mult_17_n665, MUL_2_mult_17_n664, MUL_2_mult_17_n663,
         MUL_2_mult_17_n662, MUL_2_mult_17_n661, MUL_2_mult_17_n660,
         MUL_2_mult_17_n659, MUL_2_mult_17_n658, MUL_2_mult_17_n657,
         MUL_2_mult_17_n656, MUL_2_mult_17_n655, MUL_2_mult_17_n654,
         MUL_2_mult_17_n653, MUL_2_mult_17_n652, MUL_2_mult_17_n651,
         MUL_2_mult_17_n650, MUL_2_mult_17_n649, MUL_2_mult_17_n648,
         MUL_2_mult_17_n647, MUL_2_mult_17_n646, MUL_2_mult_17_n645,
         MUL_2_mult_17_n644, MUL_2_mult_17_n643, MUL_2_mult_17_n642,
         MUL_2_mult_17_n641, MUL_2_mult_17_n640, MUL_2_mult_17_n639,
         MUL_2_mult_17_n638, MUL_2_mult_17_n637, MUL_2_mult_17_n636,
         MUL_2_mult_17_n635, MUL_2_mult_17_n634, MUL_2_mult_17_n633,
         MUL_2_mult_17_n632, MUL_2_mult_17_n631, MUL_2_mult_17_n630,
         MUL_2_mult_17_n629, MUL_2_mult_17_n628, MUL_2_mult_17_n627,
         MUL_2_mult_17_n626, MUL_2_mult_17_n625, MUL_2_mult_17_n624,
         MUL_2_mult_17_n623, MUL_2_mult_17_n622, MUL_2_mult_17_n621,
         MUL_2_mult_17_n620, MUL_2_mult_17_n619, MUL_2_mult_17_n618,
         MUL_2_mult_17_n617, MUL_2_mult_17_n616, MUL_2_mult_17_n615,
         MUL_2_mult_17_n614, MUL_2_mult_17_n613, MUL_2_mult_17_n612,
         MUL_2_mult_17_n611, MUL_2_mult_17_n610, MUL_2_mult_17_n609,
         MUL_2_mult_17_n608, MUL_2_mult_17_n607, MUL_2_mult_17_n606,
         MUL_2_mult_17_n605, MUL_2_mult_17_n604, MUL_2_mult_17_n603,
         MUL_2_mult_17_n602, MUL_2_mult_17_n601, MUL_2_mult_17_n600,
         MUL_2_mult_17_n599, MUL_2_mult_17_n598, MUL_2_mult_17_n597,
         MUL_2_mult_17_n596, MUL_2_mult_17_n595, MUL_2_mult_17_n594,
         MUL_2_mult_17_n593, MUL_2_mult_17_n592, MUL_2_mult_17_n591,
         MUL_2_mult_17_n590, MUL_2_mult_17_n589, MUL_2_mult_17_n588,
         MUL_2_mult_17_n587, MUL_2_mult_17_n586, MUL_2_mult_17_n585,
         MUL_2_mult_17_n584, MUL_2_mult_17_n583, MUL_2_mult_17_n582,
         MUL_2_mult_17_n581, MUL_2_mult_17_n580, MUL_2_mult_17_n579,
         MUL_2_mult_17_n578, MUL_2_mult_17_n577, MUL_2_mult_17_n576,
         MUL_2_mult_17_n575, MUL_2_mult_17_n574, MUL_2_mult_17_n573,
         MUL_2_mult_17_n572, MUL_2_mult_17_n571, MUL_2_mult_17_n570,
         MUL_2_mult_17_n569, MUL_2_mult_17_n568, MUL_2_mult_17_n567,
         MUL_2_mult_17_n566, MUL_2_mult_17_n565, MUL_2_mult_17_n564,
         MUL_2_mult_17_n563, MUL_2_mult_17_n562, MUL_2_mult_17_n561,
         MUL_2_mult_17_n560, MUL_2_mult_17_n559, MUL_2_mult_17_n558,
         MUL_2_mult_17_n557, MUL_2_mult_17_n556, MUL_2_mult_17_n555,
         MUL_2_mult_17_n554, MUL_2_mult_17_n553, MUL_2_mult_17_n552,
         MUL_2_mult_17_n551, MUL_2_mult_17_n550, MUL_2_mult_17_n549,
         MUL_2_mult_17_n548, MUL_2_mult_17_n547, MUL_2_mult_17_n546,
         MUL_2_mult_17_n545, MUL_2_mult_17_n544, MUL_2_mult_17_n543,
         MUL_2_mult_17_n542, MUL_2_mult_17_n541, MUL_2_mult_17_n540,
         MUL_2_mult_17_n539, MUL_2_mult_17_n538, MUL_2_mult_17_n537,
         MUL_2_mult_17_n536, MUL_2_mult_17_n535, MUL_2_mult_17_n534,
         MUL_2_mult_17_n533, MUL_2_mult_17_n532, MUL_2_mult_17_n531,
         MUL_2_mult_17_n530, MUL_2_mult_17_n529, MUL_2_mult_17_n528,
         MUL_2_mult_17_n527, MUL_2_mult_17_n526, MUL_2_mult_17_n525,
         MUL_2_mult_17_n524, MUL_2_mult_17_n523, MUL_2_mult_17_n522,
         MUL_2_mult_17_n521, MUL_2_mult_17_n520, MUL_2_mult_17_n519,
         MUL_2_mult_17_n518, MUL_2_mult_17_n517, MUL_2_mult_17_n516,
         MUL_2_mult_17_n515, MUL_2_mult_17_n514, MUL_2_mult_17_n513,
         MUL_2_mult_17_n512, MUL_2_mult_17_n511, MUL_2_mult_17_n510,
         MUL_2_mult_17_n509, MUL_2_mult_17_n508, MUL_2_mult_17_n507,
         MUL_2_mult_17_n506, MUL_2_mult_17_product_17_,
         MUL_2_mult_17_product_16_, MUL_2_mult_17_product_15_,
         MUL_2_mult_17_product_14_, MUL_2_mult_17_product_13_,
         MUL_2_mult_17_product_12_, MUL_2_mult_17_product_11_,
         MUL_2_mult_17_product_10_, MUL_2_mult_17_product_9_,
         MUL_2_mult_17_product_8_, MUL_2_mult_17_product_7_,
         MUL_2_mult_17_product_6_, MUL_2_mult_17_product_5_,
         MUL_2_mult_17_product_4_, MUL_2_mult_17_product_3_,
         MUL_2_mult_17_product_2_, MUL_2_mult_17_product_1_,
         MUL_2_mult_17_n288, MUL_2_mult_17_n287, MUL_2_mult_17_n286,
         MUL_2_mult_17_n285, MUL_2_mult_17_n284, MUL_2_mult_17_n283,
         MUL_2_mult_17_n282, MUL_2_mult_17_n281, MUL_2_mult_17_n280,
         MUL_2_mult_17_n279, MUL_2_mult_17_n276, MUL_2_mult_17_n275,
         MUL_2_mult_17_n274, MUL_2_mult_17_n273, MUL_2_mult_17_n272,
         MUL_2_mult_17_n271, MUL_2_mult_17_n270, MUL_2_mult_17_n269,
         MUL_2_mult_17_n268, MUL_2_mult_17_n267, MUL_2_mult_17_n266,
         MUL_2_mult_17_n264, MUL_2_mult_17_n263, MUL_2_mult_17_n262,
         MUL_2_mult_17_n261, MUL_2_mult_17_n260, MUL_2_mult_17_n259,
         MUL_2_mult_17_n258, MUL_2_mult_17_n257, MUL_2_mult_17_n256,
         MUL_2_mult_17_n255, MUL_2_mult_17_n254, MUL_2_mult_17_n253,
         MUL_2_mult_17_n251, MUL_2_mult_17_n250, MUL_2_mult_17_n249,
         MUL_2_mult_17_n248, MUL_2_mult_17_n247, MUL_2_mult_17_n246,
         MUL_2_mult_17_n245, MUL_2_mult_17_n244, MUL_2_mult_17_n243,
         MUL_2_mult_17_n242, MUL_2_mult_17_n241, MUL_2_mult_17_n240,
         MUL_2_mult_17_n238, MUL_2_mult_17_n237, MUL_2_mult_17_n236,
         MUL_2_mult_17_n235, MUL_2_mult_17_n234, MUL_2_mult_17_n233,
         MUL_2_mult_17_n232, MUL_2_mult_17_n231, MUL_2_mult_17_n230,
         MUL_2_mult_17_n229, MUL_2_mult_17_n228, MUL_2_mult_17_n227,
         MUL_2_mult_17_n225, MUL_2_mult_17_n224, MUL_2_mult_17_n223,
         MUL_2_mult_17_n221, MUL_2_mult_17_n220, MUL_2_mult_17_n219,
         MUL_2_mult_17_n218, MUL_2_mult_17_n217, MUL_2_mult_17_n216,
         MUL_2_mult_17_n215, MUL_2_mult_17_n214, MUL_2_mult_17_n212,
         MUL_2_mult_17_n210, MUL_2_mult_17_n209, MUL_2_mult_17_n208,
         MUL_2_mult_17_n207, MUL_2_mult_17_n206, MUL_2_mult_17_n205,
         MUL_2_mult_17_n204, MUL_2_mult_17_n203, MUL_2_mult_17_n202,
         MUL_2_mult_17_n201, MUL_2_mult_17_n197, MUL_2_mult_17_n196,
         MUL_2_mult_17_n195, MUL_2_mult_17_n194, MUL_2_mult_17_n193,
         MUL_2_mult_17_n171, MUL_2_mult_17_n170, MUL_2_mult_17_n169,
         MUL_2_mult_17_n168, MUL_2_mult_17_n167, MUL_2_mult_17_n166,
         MUL_2_mult_17_n165, MUL_2_mult_17_n164, MUL_2_mult_17_n163,
         MUL_2_mult_17_n162, MUL_2_mult_17_n161, MUL_2_mult_17_n160,
         MUL_2_mult_17_n159, MUL_2_mult_17_n158, MUL_2_mult_17_n157,
         MUL_2_mult_17_n156, MUL_2_mult_17_n155, MUL_2_mult_17_n154,
         MUL_2_mult_17_n153, MUL_2_mult_17_n152, MUL_2_mult_17_n151,
         MUL_2_mult_17_n150, MUL_2_mult_17_n149, MUL_2_mult_17_n148,
         MUL_2_mult_17_n147, MUL_2_mult_17_n146, MUL_2_mult_17_n145,
         MUL_2_mult_17_n144, MUL_2_mult_17_n143, MUL_2_mult_17_n142,
         MUL_2_mult_17_n141, MUL_2_mult_17_n140, MUL_2_mult_17_n139,
         MUL_2_mult_17_n138, MUL_2_mult_17_n137, MUL_2_mult_17_n136,
         MUL_2_mult_17_n135, MUL_2_mult_17_n134, MUL_2_mult_17_n133,
         MUL_2_mult_17_n132, MUL_2_mult_17_n131, MUL_2_mult_17_n130,
         MUL_2_mult_17_n129, MUL_2_mult_17_n128, MUL_2_mult_17_n127,
         MUL_2_mult_17_n126, MUL_2_mult_17_n125, MUL_2_mult_17_n124,
         MUL_2_mult_17_n123, MUL_2_mult_17_n122, MUL_2_mult_17_n121,
         MUL_2_mult_17_n120, MUL_2_mult_17_n119, MUL_2_mult_17_n118,
         MUL_2_mult_17_n117, MUL_2_mult_17_n116, MUL_2_mult_17_n115,
         MUL_2_mult_17_n114, MUL_2_mult_17_n113, MUL_2_mult_17_n112,
         MUL_2_mult_17_n111, MUL_2_mult_17_n110, MUL_2_mult_17_n109,
         MUL_2_mult_17_n108, MUL_2_mult_17_n107, MUL_2_mult_17_n106,
         MUL_2_mult_17_n105, MUL_2_mult_17_n104, MUL_2_mult_17_n103,
         MUL_2_mult_17_n102, MUL_2_mult_17_n101, MUL_2_mult_17_n100,
         MUL_2_mult_17_n98, MUL_2_mult_17_n97, MUL_2_mult_17_n96,
         MUL_2_mult_17_n95, MUL_2_mult_17_n94, MUL_2_mult_17_n93,
         MUL_2_mult_17_n92, MUL_2_mult_17_n91, MUL_2_mult_17_n90,
         MUL_2_mult_17_n89, MUL_2_mult_17_n88, MUL_2_mult_17_n87,
         MUL_2_mult_17_n86, MUL_2_mult_17_n85, MUL_2_mult_17_n84,
         MUL_2_mult_17_n83, MUL_2_mult_17_n82, MUL_2_mult_17_n81,
         MUL_2_mult_17_n80, MUL_2_mult_17_n79, MUL_2_mult_17_n78,
         MUL_2_mult_17_n76, MUL_2_mult_17_n75, MUL_2_mult_17_n74,
         MUL_2_mult_17_n73, MUL_2_mult_17_n72, MUL_2_mult_17_n71,
         MUL_2_mult_17_n70, MUL_2_mult_17_n69, MUL_2_mult_17_n68,
         MUL_2_mult_17_n67, MUL_2_mult_17_n66, MUL_2_mult_17_n65,
         MUL_2_mult_17_n64, MUL_2_mult_17_n63, MUL_2_mult_17_n62,
         MUL_2_mult_17_n61, MUL_2_mult_17_n60, MUL_2_mult_17_n58,
         MUL_2_mult_17_n57, MUL_2_mult_17_n56, MUL_2_mult_17_n55,
         MUL_2_mult_17_n54, MUL_2_mult_17_n53, MUL_2_mult_17_n52,
         MUL_2_mult_17_n51, MUL_2_mult_17_n50, MUL_2_mult_17_n49,
         MUL_2_mult_17_n48, MUL_2_mult_17_n47, MUL_2_mult_17_n46,
         MUL_2_mult_17_n44, MUL_2_mult_17_n43, MUL_2_mult_17_n42,
         MUL_2_mult_17_n41, MUL_2_mult_17_n40, MUL_2_mult_17_n39,
         MUL_2_mult_17_n38, MUL_2_mult_17_n37, MUL_2_mult_17_n36,
         MUL_2_mult_17_n34, MUL_2_mult_17_n33, MUL_2_mult_17_n32,
         MUL_2_mult_17_n31, MUL_2_mult_17_n30, MUL_2_mult_17_n29,
         MUL_2_mult_17_n10, MUL_2_mult_17_n9, MUL_2_mult_17_n8,
         MUL_2_mult_17_n7, MUL_2_mult_17_n6, MUL_2_mult_17_n5,
         MUL_2_mult_17_n4, ADD_2_add_18_n1, SAMPLE_REG_3_n82, SAMPLE_REG_3_n81,
         SAMPLE_REG_3_n80, SAMPLE_REG_3_n79, SAMPLE_REG_3_n78,
         SAMPLE_REG_3_n77, SAMPLE_REG_3_n76, SAMPLE_REG_3_n75,
         SAMPLE_REG_3_n74, SAMPLE_REG_3_n73, SAMPLE_REG_3_n72,
         SAMPLE_REG_3_n71, SAMPLE_REG_3_n70, SAMPLE_REG_3_n69,
         SAMPLE_REG_3_n68, SAMPLE_REG_3_n67, SAMPLE_REG_3_n66,
         SAMPLE_REG_3_n65, SAMPLE_REG_3_n64, SAMPLE_REG_3_n63,
         SAMPLE_REG_3_n62, SAMPLE_REG_3_n61, SAMPLE_REG_3_n60,
         SAMPLE_REG_3_n59, SAMPLE_REG_3_n58, SAMPLE_REG_3_n57,
         SAMPLE_REG_3_n56, SAMPLE_REG_3_n55, SAMPLE_REG_3_n54,
         SAMPLE_REG_3_n53, SAMPLE_REG_3_n52, SAMPLE_REG_3_n51,
         SAMPLE_REG_3_n50, SAMPLE_REG_3_n49, SAMPLE_REG_3_n48,
         SAMPLE_REG_3_n47, SAMPLE_REG_3_n46, SAMPLE_REG_3_n45,
         SAMPLE_REG_3_n44, SAMPLE_REG_3_n43, SAMPLE_REG_3_n42,
         SAMPLE_REG_3_n41, SAMPLE_REG_3_n40, MUL_3_O_0_, MUL_3_mult_17_n683,
         MUL_3_mult_17_n682, MUL_3_mult_17_n681, MUL_3_mult_17_n680,
         MUL_3_mult_17_n679, MUL_3_mult_17_n678, MUL_3_mult_17_n677,
         MUL_3_mult_17_n676, MUL_3_mult_17_n675, MUL_3_mult_17_n674,
         MUL_3_mult_17_n673, MUL_3_mult_17_n672, MUL_3_mult_17_n671,
         MUL_3_mult_17_n670, MUL_3_mult_17_n669, MUL_3_mult_17_n668,
         MUL_3_mult_17_n667, MUL_3_mult_17_n666, MUL_3_mult_17_n665,
         MUL_3_mult_17_n664, MUL_3_mult_17_n663, MUL_3_mult_17_n662,
         MUL_3_mult_17_n661, MUL_3_mult_17_n660, MUL_3_mult_17_n659,
         MUL_3_mult_17_n658, MUL_3_mult_17_n657, MUL_3_mult_17_n656,
         MUL_3_mult_17_n655, MUL_3_mult_17_n654, MUL_3_mult_17_n653,
         MUL_3_mult_17_n652, MUL_3_mult_17_n651, MUL_3_mult_17_n650,
         MUL_3_mult_17_n649, MUL_3_mult_17_n648, MUL_3_mult_17_n647,
         MUL_3_mult_17_n646, MUL_3_mult_17_n645, MUL_3_mult_17_n644,
         MUL_3_mult_17_n643, MUL_3_mult_17_n642, MUL_3_mult_17_n641,
         MUL_3_mult_17_n640, MUL_3_mult_17_n639, MUL_3_mult_17_n638,
         MUL_3_mult_17_n637, MUL_3_mult_17_n636, MUL_3_mult_17_n635,
         MUL_3_mult_17_n634, MUL_3_mult_17_n633, MUL_3_mult_17_n632,
         MUL_3_mult_17_n631, MUL_3_mult_17_n630, MUL_3_mult_17_n629,
         MUL_3_mult_17_n628, MUL_3_mult_17_n627, MUL_3_mult_17_n626,
         MUL_3_mult_17_n625, MUL_3_mult_17_n624, MUL_3_mult_17_n623,
         MUL_3_mult_17_n622, MUL_3_mult_17_n621, MUL_3_mult_17_n620,
         MUL_3_mult_17_n619, MUL_3_mult_17_n618, MUL_3_mult_17_n617,
         MUL_3_mult_17_n616, MUL_3_mult_17_n615, MUL_3_mult_17_n614,
         MUL_3_mult_17_n613, MUL_3_mult_17_n612, MUL_3_mult_17_n611,
         MUL_3_mult_17_n610, MUL_3_mult_17_n609, MUL_3_mult_17_n608,
         MUL_3_mult_17_n607, MUL_3_mult_17_n606, MUL_3_mult_17_n605,
         MUL_3_mult_17_n604, MUL_3_mult_17_n603, MUL_3_mult_17_n602,
         MUL_3_mult_17_n601, MUL_3_mult_17_n600, MUL_3_mult_17_n599,
         MUL_3_mult_17_n598, MUL_3_mult_17_n597, MUL_3_mult_17_n596,
         MUL_3_mult_17_n595, MUL_3_mult_17_n594, MUL_3_mult_17_n593,
         MUL_3_mult_17_n592, MUL_3_mult_17_n591, MUL_3_mult_17_n590,
         MUL_3_mult_17_n589, MUL_3_mult_17_n588, MUL_3_mult_17_n587,
         MUL_3_mult_17_n586, MUL_3_mult_17_n585, MUL_3_mult_17_n584,
         MUL_3_mult_17_n583, MUL_3_mult_17_n582, MUL_3_mult_17_n581,
         MUL_3_mult_17_n580, MUL_3_mult_17_n579, MUL_3_mult_17_n578,
         MUL_3_mult_17_n577, MUL_3_mult_17_n576, MUL_3_mult_17_n575,
         MUL_3_mult_17_n574, MUL_3_mult_17_n573, MUL_3_mult_17_n572,
         MUL_3_mult_17_n571, MUL_3_mult_17_n570, MUL_3_mult_17_n569,
         MUL_3_mult_17_n568, MUL_3_mult_17_n567, MUL_3_mult_17_n566,
         MUL_3_mult_17_n565, MUL_3_mult_17_n564, MUL_3_mult_17_n563,
         MUL_3_mult_17_n562, MUL_3_mult_17_n561, MUL_3_mult_17_n560,
         MUL_3_mult_17_n559, MUL_3_mult_17_n558, MUL_3_mult_17_n557,
         MUL_3_mult_17_n556, MUL_3_mult_17_n555, MUL_3_mult_17_n554,
         MUL_3_mult_17_n553, MUL_3_mult_17_n552, MUL_3_mult_17_n551,
         MUL_3_mult_17_n550, MUL_3_mult_17_n549, MUL_3_mult_17_n548,
         MUL_3_mult_17_n547, MUL_3_mult_17_n546, MUL_3_mult_17_n545,
         MUL_3_mult_17_n544, MUL_3_mult_17_n543, MUL_3_mult_17_n542,
         MUL_3_mult_17_n541, MUL_3_mult_17_n540, MUL_3_mult_17_n539,
         MUL_3_mult_17_n538, MUL_3_mult_17_n537, MUL_3_mult_17_n536,
         MUL_3_mult_17_n535, MUL_3_mult_17_n534, MUL_3_mult_17_n533,
         MUL_3_mult_17_n532, MUL_3_mult_17_n531, MUL_3_mult_17_n530,
         MUL_3_mult_17_n529, MUL_3_mult_17_n528, MUL_3_mult_17_n527,
         MUL_3_mult_17_n526, MUL_3_mult_17_n525, MUL_3_mult_17_n524,
         MUL_3_mult_17_n523, MUL_3_mult_17_n522, MUL_3_mult_17_n521,
         MUL_3_mult_17_n520, MUL_3_mult_17_n519, MUL_3_mult_17_n518,
         MUL_3_mult_17_n517, MUL_3_mult_17_n516, MUL_3_mult_17_n515,
         MUL_3_mult_17_n514, MUL_3_mult_17_n513, MUL_3_mult_17_n512,
         MUL_3_mult_17_n511, MUL_3_mult_17_n510, MUL_3_mult_17_n509,
         MUL_3_mult_17_n508, MUL_3_mult_17_n507, MUL_3_mult_17_n506,
         MUL_3_mult_17_product_17_, MUL_3_mult_17_product_16_,
         MUL_3_mult_17_product_15_, MUL_3_mult_17_product_14_,
         MUL_3_mult_17_product_13_, MUL_3_mult_17_product_12_,
         MUL_3_mult_17_product_11_, MUL_3_mult_17_product_10_,
         MUL_3_mult_17_product_9_, MUL_3_mult_17_product_8_,
         MUL_3_mult_17_product_7_, MUL_3_mult_17_product_6_,
         MUL_3_mult_17_product_5_, MUL_3_mult_17_product_4_,
         MUL_3_mult_17_product_3_, MUL_3_mult_17_product_2_,
         MUL_3_mult_17_product_1_, MUL_3_mult_17_n288, MUL_3_mult_17_n287,
         MUL_3_mult_17_n286, MUL_3_mult_17_n285, MUL_3_mult_17_n284,
         MUL_3_mult_17_n283, MUL_3_mult_17_n282, MUL_3_mult_17_n281,
         MUL_3_mult_17_n280, MUL_3_mult_17_n279, MUL_3_mult_17_n276,
         MUL_3_mult_17_n275, MUL_3_mult_17_n274, MUL_3_mult_17_n273,
         MUL_3_mult_17_n272, MUL_3_mult_17_n271, MUL_3_mult_17_n270,
         MUL_3_mult_17_n269, MUL_3_mult_17_n268, MUL_3_mult_17_n267,
         MUL_3_mult_17_n266, MUL_3_mult_17_n264, MUL_3_mult_17_n263,
         MUL_3_mult_17_n262, MUL_3_mult_17_n261, MUL_3_mult_17_n260,
         MUL_3_mult_17_n259, MUL_3_mult_17_n258, MUL_3_mult_17_n257,
         MUL_3_mult_17_n256, MUL_3_mult_17_n255, MUL_3_mult_17_n254,
         MUL_3_mult_17_n253, MUL_3_mult_17_n251, MUL_3_mult_17_n250,
         MUL_3_mult_17_n249, MUL_3_mult_17_n248, MUL_3_mult_17_n247,
         MUL_3_mult_17_n246, MUL_3_mult_17_n245, MUL_3_mult_17_n244,
         MUL_3_mult_17_n243, MUL_3_mult_17_n242, MUL_3_mult_17_n241,
         MUL_3_mult_17_n240, MUL_3_mult_17_n238, MUL_3_mult_17_n237,
         MUL_3_mult_17_n236, MUL_3_mult_17_n235, MUL_3_mult_17_n234,
         MUL_3_mult_17_n233, MUL_3_mult_17_n232, MUL_3_mult_17_n231,
         MUL_3_mult_17_n230, MUL_3_mult_17_n229, MUL_3_mult_17_n228,
         MUL_3_mult_17_n227, MUL_3_mult_17_n225, MUL_3_mult_17_n224,
         MUL_3_mult_17_n223, MUL_3_mult_17_n221, MUL_3_mult_17_n220,
         MUL_3_mult_17_n219, MUL_3_mult_17_n218, MUL_3_mult_17_n217,
         MUL_3_mult_17_n216, MUL_3_mult_17_n215, MUL_3_mult_17_n214,
         MUL_3_mult_17_n212, MUL_3_mult_17_n210, MUL_3_mult_17_n209,
         MUL_3_mult_17_n208, MUL_3_mult_17_n207, MUL_3_mult_17_n206,
         MUL_3_mult_17_n205, MUL_3_mult_17_n204, MUL_3_mult_17_n203,
         MUL_3_mult_17_n202, MUL_3_mult_17_n201, MUL_3_mult_17_n197,
         MUL_3_mult_17_n196, MUL_3_mult_17_n195, MUL_3_mult_17_n194,
         MUL_3_mult_17_n193, MUL_3_mult_17_n171, MUL_3_mult_17_n170,
         MUL_3_mult_17_n169, MUL_3_mult_17_n168, MUL_3_mult_17_n167,
         MUL_3_mult_17_n166, MUL_3_mult_17_n165, MUL_3_mult_17_n164,
         MUL_3_mult_17_n163, MUL_3_mult_17_n162, MUL_3_mult_17_n161,
         MUL_3_mult_17_n160, MUL_3_mult_17_n159, MUL_3_mult_17_n158,
         MUL_3_mult_17_n157, MUL_3_mult_17_n156, MUL_3_mult_17_n155,
         MUL_3_mult_17_n154, MUL_3_mult_17_n153, MUL_3_mult_17_n152,
         MUL_3_mult_17_n151, MUL_3_mult_17_n150, MUL_3_mult_17_n149,
         MUL_3_mult_17_n148, MUL_3_mult_17_n147, MUL_3_mult_17_n146,
         MUL_3_mult_17_n145, MUL_3_mult_17_n144, MUL_3_mult_17_n143,
         MUL_3_mult_17_n142, MUL_3_mult_17_n141, MUL_3_mult_17_n140,
         MUL_3_mult_17_n139, MUL_3_mult_17_n138, MUL_3_mult_17_n137,
         MUL_3_mult_17_n136, MUL_3_mult_17_n135, MUL_3_mult_17_n134,
         MUL_3_mult_17_n133, MUL_3_mult_17_n132, MUL_3_mult_17_n131,
         MUL_3_mult_17_n130, MUL_3_mult_17_n129, MUL_3_mult_17_n128,
         MUL_3_mult_17_n127, MUL_3_mult_17_n126, MUL_3_mult_17_n125,
         MUL_3_mult_17_n124, MUL_3_mult_17_n123, MUL_3_mult_17_n122,
         MUL_3_mult_17_n121, MUL_3_mult_17_n120, MUL_3_mult_17_n119,
         MUL_3_mult_17_n118, MUL_3_mult_17_n117, MUL_3_mult_17_n116,
         MUL_3_mult_17_n115, MUL_3_mult_17_n114, MUL_3_mult_17_n113,
         MUL_3_mult_17_n112, MUL_3_mult_17_n111, MUL_3_mult_17_n110,
         MUL_3_mult_17_n109, MUL_3_mult_17_n108, MUL_3_mult_17_n107,
         MUL_3_mult_17_n106, MUL_3_mult_17_n105, MUL_3_mult_17_n104,
         MUL_3_mult_17_n103, MUL_3_mult_17_n102, MUL_3_mult_17_n101,
         MUL_3_mult_17_n100, MUL_3_mult_17_n98, MUL_3_mult_17_n97,
         MUL_3_mult_17_n96, MUL_3_mult_17_n95, MUL_3_mult_17_n94,
         MUL_3_mult_17_n93, MUL_3_mult_17_n92, MUL_3_mult_17_n91,
         MUL_3_mult_17_n90, MUL_3_mult_17_n89, MUL_3_mult_17_n88,
         MUL_3_mult_17_n87, MUL_3_mult_17_n86, MUL_3_mult_17_n85,
         MUL_3_mult_17_n84, MUL_3_mult_17_n83, MUL_3_mult_17_n82,
         MUL_3_mult_17_n81, MUL_3_mult_17_n80, MUL_3_mult_17_n79,
         MUL_3_mult_17_n78, MUL_3_mult_17_n76, MUL_3_mult_17_n75,
         MUL_3_mult_17_n74, MUL_3_mult_17_n73, MUL_3_mult_17_n72,
         MUL_3_mult_17_n71, MUL_3_mult_17_n70, MUL_3_mult_17_n69,
         MUL_3_mult_17_n68, MUL_3_mult_17_n67, MUL_3_mult_17_n66,
         MUL_3_mult_17_n65, MUL_3_mult_17_n64, MUL_3_mult_17_n63,
         MUL_3_mult_17_n62, MUL_3_mult_17_n61, MUL_3_mult_17_n60,
         MUL_3_mult_17_n58, MUL_3_mult_17_n57, MUL_3_mult_17_n56,
         MUL_3_mult_17_n55, MUL_3_mult_17_n54, MUL_3_mult_17_n53,
         MUL_3_mult_17_n52, MUL_3_mult_17_n51, MUL_3_mult_17_n50,
         MUL_3_mult_17_n49, MUL_3_mult_17_n48, MUL_3_mult_17_n47,
         MUL_3_mult_17_n46, MUL_3_mult_17_n44, MUL_3_mult_17_n43,
         MUL_3_mult_17_n42, MUL_3_mult_17_n41, MUL_3_mult_17_n40,
         MUL_3_mult_17_n39, MUL_3_mult_17_n38, MUL_3_mult_17_n37,
         MUL_3_mult_17_n36, MUL_3_mult_17_n34, MUL_3_mult_17_n33,
         MUL_3_mult_17_n32, MUL_3_mult_17_n31, MUL_3_mult_17_n30,
         MUL_3_mult_17_n29, MUL_3_mult_17_n10, MUL_3_mult_17_n9,
         MUL_3_mult_17_n8, MUL_3_mult_17_n7, MUL_3_mult_17_n6,
         MUL_3_mult_17_n5, MUL_3_mult_17_n4, ADD_3_add_18_n1, SAMPLE_REG_4_n82,
         SAMPLE_REG_4_n81, SAMPLE_REG_4_n80, SAMPLE_REG_4_n79,
         SAMPLE_REG_4_n78, SAMPLE_REG_4_n77, SAMPLE_REG_4_n76,
         SAMPLE_REG_4_n75, SAMPLE_REG_4_n74, SAMPLE_REG_4_n73,
         SAMPLE_REG_4_n72, SAMPLE_REG_4_n71, SAMPLE_REG_4_n70,
         SAMPLE_REG_4_n69, SAMPLE_REG_4_n68, SAMPLE_REG_4_n67,
         SAMPLE_REG_4_n66, SAMPLE_REG_4_n65, SAMPLE_REG_4_n64,
         SAMPLE_REG_4_n63, SAMPLE_REG_4_n62, SAMPLE_REG_4_n61,
         SAMPLE_REG_4_n60, SAMPLE_REG_4_n59, SAMPLE_REG_4_n58,
         SAMPLE_REG_4_n57, SAMPLE_REG_4_n56, SAMPLE_REG_4_n55,
         SAMPLE_REG_4_n54, SAMPLE_REG_4_n53, SAMPLE_REG_4_n52,
         SAMPLE_REG_4_n51, SAMPLE_REG_4_n50, SAMPLE_REG_4_n49,
         SAMPLE_REG_4_n48, SAMPLE_REG_4_n47, SAMPLE_REG_4_n46,
         SAMPLE_REG_4_n45, SAMPLE_REG_4_n44, SAMPLE_REG_4_n43,
         SAMPLE_REG_4_n42, SAMPLE_REG_4_n41, SAMPLE_REG_4_n40, MUL_4_O_0_,
         MUL_4_mult_17_n683, MUL_4_mult_17_n682, MUL_4_mult_17_n681,
         MUL_4_mult_17_n680, MUL_4_mult_17_n679, MUL_4_mult_17_n678,
         MUL_4_mult_17_n677, MUL_4_mult_17_n676, MUL_4_mult_17_n675,
         MUL_4_mult_17_n674, MUL_4_mult_17_n673, MUL_4_mult_17_n672,
         MUL_4_mult_17_n671, MUL_4_mult_17_n670, MUL_4_mult_17_n669,
         MUL_4_mult_17_n668, MUL_4_mult_17_n667, MUL_4_mult_17_n666,
         MUL_4_mult_17_n665, MUL_4_mult_17_n664, MUL_4_mult_17_n663,
         MUL_4_mult_17_n662, MUL_4_mult_17_n661, MUL_4_mult_17_n660,
         MUL_4_mult_17_n659, MUL_4_mult_17_n658, MUL_4_mult_17_n657,
         MUL_4_mult_17_n656, MUL_4_mult_17_n655, MUL_4_mult_17_n654,
         MUL_4_mult_17_n653, MUL_4_mult_17_n652, MUL_4_mult_17_n651,
         MUL_4_mult_17_n650, MUL_4_mult_17_n649, MUL_4_mult_17_n648,
         MUL_4_mult_17_n647, MUL_4_mult_17_n646, MUL_4_mult_17_n645,
         MUL_4_mult_17_n644, MUL_4_mult_17_n643, MUL_4_mult_17_n642,
         MUL_4_mult_17_n641, MUL_4_mult_17_n640, MUL_4_mult_17_n639,
         MUL_4_mult_17_n638, MUL_4_mult_17_n637, MUL_4_mult_17_n636,
         MUL_4_mult_17_n635, MUL_4_mult_17_n634, MUL_4_mult_17_n633,
         MUL_4_mult_17_n632, MUL_4_mult_17_n631, MUL_4_mult_17_n630,
         MUL_4_mult_17_n629, MUL_4_mult_17_n628, MUL_4_mult_17_n627,
         MUL_4_mult_17_n626, MUL_4_mult_17_n625, MUL_4_mult_17_n624,
         MUL_4_mult_17_n623, MUL_4_mult_17_n622, MUL_4_mult_17_n621,
         MUL_4_mult_17_n620, MUL_4_mult_17_n619, MUL_4_mult_17_n618,
         MUL_4_mult_17_n617, MUL_4_mult_17_n616, MUL_4_mult_17_n615,
         MUL_4_mult_17_n614, MUL_4_mult_17_n613, MUL_4_mult_17_n612,
         MUL_4_mult_17_n611, MUL_4_mult_17_n610, MUL_4_mult_17_n609,
         MUL_4_mult_17_n608, MUL_4_mult_17_n607, MUL_4_mult_17_n606,
         MUL_4_mult_17_n605, MUL_4_mult_17_n604, MUL_4_mult_17_n603,
         MUL_4_mult_17_n602, MUL_4_mult_17_n601, MUL_4_mult_17_n600,
         MUL_4_mult_17_n599, MUL_4_mult_17_n598, MUL_4_mult_17_n597,
         MUL_4_mult_17_n596, MUL_4_mult_17_n595, MUL_4_mult_17_n594,
         MUL_4_mult_17_n593, MUL_4_mult_17_n592, MUL_4_mult_17_n591,
         MUL_4_mult_17_n590, MUL_4_mult_17_n589, MUL_4_mult_17_n588,
         MUL_4_mult_17_n587, MUL_4_mult_17_n586, MUL_4_mult_17_n585,
         MUL_4_mult_17_n584, MUL_4_mult_17_n583, MUL_4_mult_17_n582,
         MUL_4_mult_17_n581, MUL_4_mult_17_n580, MUL_4_mult_17_n579,
         MUL_4_mult_17_n578, MUL_4_mult_17_n577, MUL_4_mult_17_n576,
         MUL_4_mult_17_n575, MUL_4_mult_17_n574, MUL_4_mult_17_n573,
         MUL_4_mult_17_n572, MUL_4_mult_17_n571, MUL_4_mult_17_n570,
         MUL_4_mult_17_n569, MUL_4_mult_17_n568, MUL_4_mult_17_n567,
         MUL_4_mult_17_n566, MUL_4_mult_17_n565, MUL_4_mult_17_n564,
         MUL_4_mult_17_n563, MUL_4_mult_17_n562, MUL_4_mult_17_n561,
         MUL_4_mult_17_n560, MUL_4_mult_17_n559, MUL_4_mult_17_n558,
         MUL_4_mult_17_n557, MUL_4_mult_17_n556, MUL_4_mult_17_n555,
         MUL_4_mult_17_n554, MUL_4_mult_17_n553, MUL_4_mult_17_n552,
         MUL_4_mult_17_n551, MUL_4_mult_17_n550, MUL_4_mult_17_n549,
         MUL_4_mult_17_n548, MUL_4_mult_17_n547, MUL_4_mult_17_n546,
         MUL_4_mult_17_n545, MUL_4_mult_17_n544, MUL_4_mult_17_n543,
         MUL_4_mult_17_n542, MUL_4_mult_17_n541, MUL_4_mult_17_n540,
         MUL_4_mult_17_n539, MUL_4_mult_17_n538, MUL_4_mult_17_n537,
         MUL_4_mult_17_n536, MUL_4_mult_17_n535, MUL_4_mult_17_n534,
         MUL_4_mult_17_n533, MUL_4_mult_17_n532, MUL_4_mult_17_n531,
         MUL_4_mult_17_n530, MUL_4_mult_17_n529, MUL_4_mult_17_n528,
         MUL_4_mult_17_n527, MUL_4_mult_17_n526, MUL_4_mult_17_n525,
         MUL_4_mult_17_n524, MUL_4_mult_17_n523, MUL_4_mult_17_n522,
         MUL_4_mult_17_n521, MUL_4_mult_17_n520, MUL_4_mult_17_n519,
         MUL_4_mult_17_n518, MUL_4_mult_17_n517, MUL_4_mult_17_n516,
         MUL_4_mult_17_n515, MUL_4_mult_17_n514, MUL_4_mult_17_n513,
         MUL_4_mult_17_n512, MUL_4_mult_17_n511, MUL_4_mult_17_n510,
         MUL_4_mult_17_n509, MUL_4_mult_17_n508, MUL_4_mult_17_n507,
         MUL_4_mult_17_n506, MUL_4_mult_17_product_17_,
         MUL_4_mult_17_product_16_, MUL_4_mult_17_product_15_,
         MUL_4_mult_17_product_14_, MUL_4_mult_17_product_13_,
         MUL_4_mult_17_product_12_, MUL_4_mult_17_product_11_,
         MUL_4_mult_17_product_10_, MUL_4_mult_17_product_9_,
         MUL_4_mult_17_product_8_, MUL_4_mult_17_product_7_,
         MUL_4_mult_17_product_6_, MUL_4_mult_17_product_5_,
         MUL_4_mult_17_product_4_, MUL_4_mult_17_product_3_,
         MUL_4_mult_17_product_2_, MUL_4_mult_17_product_1_,
         MUL_4_mult_17_n288, MUL_4_mult_17_n287, MUL_4_mult_17_n286,
         MUL_4_mult_17_n285, MUL_4_mult_17_n284, MUL_4_mult_17_n283,
         MUL_4_mult_17_n282, MUL_4_mult_17_n281, MUL_4_mult_17_n280,
         MUL_4_mult_17_n279, MUL_4_mult_17_n276, MUL_4_mult_17_n275,
         MUL_4_mult_17_n274, MUL_4_mult_17_n273, MUL_4_mult_17_n272,
         MUL_4_mult_17_n271, MUL_4_mult_17_n270, MUL_4_mult_17_n269,
         MUL_4_mult_17_n268, MUL_4_mult_17_n267, MUL_4_mult_17_n266,
         MUL_4_mult_17_n264, MUL_4_mult_17_n263, MUL_4_mult_17_n262,
         MUL_4_mult_17_n261, MUL_4_mult_17_n260, MUL_4_mult_17_n259,
         MUL_4_mult_17_n258, MUL_4_mult_17_n257, MUL_4_mult_17_n256,
         MUL_4_mult_17_n255, MUL_4_mult_17_n254, MUL_4_mult_17_n253,
         MUL_4_mult_17_n251, MUL_4_mult_17_n250, MUL_4_mult_17_n249,
         MUL_4_mult_17_n248, MUL_4_mult_17_n247, MUL_4_mult_17_n246,
         MUL_4_mult_17_n245, MUL_4_mult_17_n244, MUL_4_mult_17_n243,
         MUL_4_mult_17_n242, MUL_4_mult_17_n241, MUL_4_mult_17_n240,
         MUL_4_mult_17_n238, MUL_4_mult_17_n237, MUL_4_mult_17_n236,
         MUL_4_mult_17_n235, MUL_4_mult_17_n234, MUL_4_mult_17_n233,
         MUL_4_mult_17_n232, MUL_4_mult_17_n231, MUL_4_mult_17_n230,
         MUL_4_mult_17_n229, MUL_4_mult_17_n228, MUL_4_mult_17_n227,
         MUL_4_mult_17_n225, MUL_4_mult_17_n224, MUL_4_mult_17_n223,
         MUL_4_mult_17_n221, MUL_4_mult_17_n220, MUL_4_mult_17_n219,
         MUL_4_mult_17_n218, MUL_4_mult_17_n217, MUL_4_mult_17_n216,
         MUL_4_mult_17_n215, MUL_4_mult_17_n214, MUL_4_mult_17_n212,
         MUL_4_mult_17_n210, MUL_4_mult_17_n209, MUL_4_mult_17_n208,
         MUL_4_mult_17_n207, MUL_4_mult_17_n206, MUL_4_mult_17_n205,
         MUL_4_mult_17_n204, MUL_4_mult_17_n203, MUL_4_mult_17_n202,
         MUL_4_mult_17_n201, MUL_4_mult_17_n197, MUL_4_mult_17_n196,
         MUL_4_mult_17_n195, MUL_4_mult_17_n194, MUL_4_mult_17_n193,
         MUL_4_mult_17_n171, MUL_4_mult_17_n170, MUL_4_mult_17_n169,
         MUL_4_mult_17_n168, MUL_4_mult_17_n167, MUL_4_mult_17_n166,
         MUL_4_mult_17_n165, MUL_4_mult_17_n164, MUL_4_mult_17_n163,
         MUL_4_mult_17_n162, MUL_4_mult_17_n161, MUL_4_mult_17_n160,
         MUL_4_mult_17_n159, MUL_4_mult_17_n158, MUL_4_mult_17_n157,
         MUL_4_mult_17_n156, MUL_4_mult_17_n155, MUL_4_mult_17_n154,
         MUL_4_mult_17_n153, MUL_4_mult_17_n152, MUL_4_mult_17_n151,
         MUL_4_mult_17_n150, MUL_4_mult_17_n149, MUL_4_mult_17_n148,
         MUL_4_mult_17_n147, MUL_4_mult_17_n146, MUL_4_mult_17_n145,
         MUL_4_mult_17_n144, MUL_4_mult_17_n143, MUL_4_mult_17_n142,
         MUL_4_mult_17_n141, MUL_4_mult_17_n140, MUL_4_mult_17_n139,
         MUL_4_mult_17_n138, MUL_4_mult_17_n137, MUL_4_mult_17_n136,
         MUL_4_mult_17_n135, MUL_4_mult_17_n134, MUL_4_mult_17_n133,
         MUL_4_mult_17_n132, MUL_4_mult_17_n131, MUL_4_mult_17_n130,
         MUL_4_mult_17_n129, MUL_4_mult_17_n128, MUL_4_mult_17_n127,
         MUL_4_mult_17_n126, MUL_4_mult_17_n125, MUL_4_mult_17_n124,
         MUL_4_mult_17_n123, MUL_4_mult_17_n122, MUL_4_mult_17_n121,
         MUL_4_mult_17_n120, MUL_4_mult_17_n119, MUL_4_mult_17_n118,
         MUL_4_mult_17_n117, MUL_4_mult_17_n116, MUL_4_mult_17_n115,
         MUL_4_mult_17_n114, MUL_4_mult_17_n113, MUL_4_mult_17_n112,
         MUL_4_mult_17_n111, MUL_4_mult_17_n110, MUL_4_mult_17_n109,
         MUL_4_mult_17_n108, MUL_4_mult_17_n107, MUL_4_mult_17_n106,
         MUL_4_mult_17_n105, MUL_4_mult_17_n104, MUL_4_mult_17_n103,
         MUL_4_mult_17_n102, MUL_4_mult_17_n101, MUL_4_mult_17_n100,
         MUL_4_mult_17_n98, MUL_4_mult_17_n97, MUL_4_mult_17_n96,
         MUL_4_mult_17_n95, MUL_4_mult_17_n94, MUL_4_mult_17_n93,
         MUL_4_mult_17_n92, MUL_4_mult_17_n91, MUL_4_mult_17_n90,
         MUL_4_mult_17_n89, MUL_4_mult_17_n88, MUL_4_mult_17_n87,
         MUL_4_mult_17_n86, MUL_4_mult_17_n85, MUL_4_mult_17_n84,
         MUL_4_mult_17_n83, MUL_4_mult_17_n82, MUL_4_mult_17_n81,
         MUL_4_mult_17_n80, MUL_4_mult_17_n79, MUL_4_mult_17_n78,
         MUL_4_mult_17_n76, MUL_4_mult_17_n75, MUL_4_mult_17_n74,
         MUL_4_mult_17_n73, MUL_4_mult_17_n72, MUL_4_mult_17_n71,
         MUL_4_mult_17_n70, MUL_4_mult_17_n69, MUL_4_mult_17_n68,
         MUL_4_mult_17_n67, MUL_4_mult_17_n66, MUL_4_mult_17_n65,
         MUL_4_mult_17_n64, MUL_4_mult_17_n63, MUL_4_mult_17_n62,
         MUL_4_mult_17_n61, MUL_4_mult_17_n60, MUL_4_mult_17_n58,
         MUL_4_mult_17_n57, MUL_4_mult_17_n56, MUL_4_mult_17_n55,
         MUL_4_mult_17_n54, MUL_4_mult_17_n53, MUL_4_mult_17_n52,
         MUL_4_mult_17_n51, MUL_4_mult_17_n50, MUL_4_mult_17_n49,
         MUL_4_mult_17_n48, MUL_4_mult_17_n47, MUL_4_mult_17_n46,
         MUL_4_mult_17_n44, MUL_4_mult_17_n43, MUL_4_mult_17_n42,
         MUL_4_mult_17_n41, MUL_4_mult_17_n40, MUL_4_mult_17_n39,
         MUL_4_mult_17_n38, MUL_4_mult_17_n37, MUL_4_mult_17_n36,
         MUL_4_mult_17_n34, MUL_4_mult_17_n33, MUL_4_mult_17_n32,
         MUL_4_mult_17_n31, MUL_4_mult_17_n30, MUL_4_mult_17_n29,
         MUL_4_mult_17_n10, MUL_4_mult_17_n9, MUL_4_mult_17_n8,
         MUL_4_mult_17_n7, MUL_4_mult_17_n6, MUL_4_mult_17_n5,
         MUL_4_mult_17_n4, ADD_4_add_18_n1, SAMPLE_REG_5_n82, SAMPLE_REG_5_n81,
         SAMPLE_REG_5_n80, SAMPLE_REG_5_n79, SAMPLE_REG_5_n78,
         SAMPLE_REG_5_n77, SAMPLE_REG_5_n76, SAMPLE_REG_5_n75,
         SAMPLE_REG_5_n74, SAMPLE_REG_5_n73, SAMPLE_REG_5_n72,
         SAMPLE_REG_5_n71, SAMPLE_REG_5_n70, SAMPLE_REG_5_n69,
         SAMPLE_REG_5_n68, SAMPLE_REG_5_n67, SAMPLE_REG_5_n66,
         SAMPLE_REG_5_n65, SAMPLE_REG_5_n64, SAMPLE_REG_5_n63,
         SAMPLE_REG_5_n62, SAMPLE_REG_5_n61, SAMPLE_REG_5_n60,
         SAMPLE_REG_5_n59, SAMPLE_REG_5_n58, SAMPLE_REG_5_n57,
         SAMPLE_REG_5_n56, SAMPLE_REG_5_n55, SAMPLE_REG_5_n54,
         SAMPLE_REG_5_n53, SAMPLE_REG_5_n52, SAMPLE_REG_5_n51,
         SAMPLE_REG_5_n50, SAMPLE_REG_5_n49, SAMPLE_REG_5_n48,
         SAMPLE_REG_5_n47, SAMPLE_REG_5_n46, SAMPLE_REG_5_n45,
         SAMPLE_REG_5_n44, SAMPLE_REG_5_n43, SAMPLE_REG_5_n42,
         SAMPLE_REG_5_n41, SAMPLE_REG_5_n40, MUL_5_O_0_, MUL_5_mult_17_n683,
         MUL_5_mult_17_n682, MUL_5_mult_17_n681, MUL_5_mult_17_n680,
         MUL_5_mult_17_n679, MUL_5_mult_17_n678, MUL_5_mult_17_n677,
         MUL_5_mult_17_n676, MUL_5_mult_17_n675, MUL_5_mult_17_n674,
         MUL_5_mult_17_n673, MUL_5_mult_17_n672, MUL_5_mult_17_n671,
         MUL_5_mult_17_n670, MUL_5_mult_17_n669, MUL_5_mult_17_n668,
         MUL_5_mult_17_n667, MUL_5_mult_17_n666, MUL_5_mult_17_n665,
         MUL_5_mult_17_n664, MUL_5_mult_17_n663, MUL_5_mult_17_n662,
         MUL_5_mult_17_n661, MUL_5_mult_17_n660, MUL_5_mult_17_n659,
         MUL_5_mult_17_n658, MUL_5_mult_17_n657, MUL_5_mult_17_n656,
         MUL_5_mult_17_n655, MUL_5_mult_17_n654, MUL_5_mult_17_n653,
         MUL_5_mult_17_n652, MUL_5_mult_17_n651, MUL_5_mult_17_n650,
         MUL_5_mult_17_n649, MUL_5_mult_17_n648, MUL_5_mult_17_n647,
         MUL_5_mult_17_n646, MUL_5_mult_17_n645, MUL_5_mult_17_n644,
         MUL_5_mult_17_n643, MUL_5_mult_17_n642, MUL_5_mult_17_n641,
         MUL_5_mult_17_n640, MUL_5_mult_17_n639, MUL_5_mult_17_n638,
         MUL_5_mult_17_n637, MUL_5_mult_17_n636, MUL_5_mult_17_n635,
         MUL_5_mult_17_n634, MUL_5_mult_17_n633, MUL_5_mult_17_n632,
         MUL_5_mult_17_n631, MUL_5_mult_17_n630, MUL_5_mult_17_n629,
         MUL_5_mult_17_n628, MUL_5_mult_17_n627, MUL_5_mult_17_n626,
         MUL_5_mult_17_n625, MUL_5_mult_17_n624, MUL_5_mult_17_n623,
         MUL_5_mult_17_n622, MUL_5_mult_17_n621, MUL_5_mult_17_n620,
         MUL_5_mult_17_n619, MUL_5_mult_17_n618, MUL_5_mult_17_n617,
         MUL_5_mult_17_n616, MUL_5_mult_17_n615, MUL_5_mult_17_n614,
         MUL_5_mult_17_n613, MUL_5_mult_17_n612, MUL_5_mult_17_n611,
         MUL_5_mult_17_n610, MUL_5_mult_17_n609, MUL_5_mult_17_n608,
         MUL_5_mult_17_n607, MUL_5_mult_17_n606, MUL_5_mult_17_n605,
         MUL_5_mult_17_n604, MUL_5_mult_17_n603, MUL_5_mult_17_n602,
         MUL_5_mult_17_n601, MUL_5_mult_17_n600, MUL_5_mult_17_n599,
         MUL_5_mult_17_n598, MUL_5_mult_17_n597, MUL_5_mult_17_n596,
         MUL_5_mult_17_n595, MUL_5_mult_17_n594, MUL_5_mult_17_n593,
         MUL_5_mult_17_n592, MUL_5_mult_17_n591, MUL_5_mult_17_n590,
         MUL_5_mult_17_n589, MUL_5_mult_17_n588, MUL_5_mult_17_n587,
         MUL_5_mult_17_n586, MUL_5_mult_17_n585, MUL_5_mult_17_n584,
         MUL_5_mult_17_n583, MUL_5_mult_17_n582, MUL_5_mult_17_n581,
         MUL_5_mult_17_n580, MUL_5_mult_17_n579, MUL_5_mult_17_n578,
         MUL_5_mult_17_n577, MUL_5_mult_17_n576, MUL_5_mult_17_n575,
         MUL_5_mult_17_n574, MUL_5_mult_17_n573, MUL_5_mult_17_n572,
         MUL_5_mult_17_n571, MUL_5_mult_17_n570, MUL_5_mult_17_n569,
         MUL_5_mult_17_n568, MUL_5_mult_17_n567, MUL_5_mult_17_n566,
         MUL_5_mult_17_n565, MUL_5_mult_17_n564, MUL_5_mult_17_n563,
         MUL_5_mult_17_n562, MUL_5_mult_17_n561, MUL_5_mult_17_n560,
         MUL_5_mult_17_n559, MUL_5_mult_17_n558, MUL_5_mult_17_n557,
         MUL_5_mult_17_n556, MUL_5_mult_17_n555, MUL_5_mult_17_n554,
         MUL_5_mult_17_n553, MUL_5_mult_17_n552, MUL_5_mult_17_n551,
         MUL_5_mult_17_n550, MUL_5_mult_17_n549, MUL_5_mult_17_n548,
         MUL_5_mult_17_n547, MUL_5_mult_17_n546, MUL_5_mult_17_n545,
         MUL_5_mult_17_n544, MUL_5_mult_17_n543, MUL_5_mult_17_n542,
         MUL_5_mult_17_n541, MUL_5_mult_17_n540, MUL_5_mult_17_n539,
         MUL_5_mult_17_n538, MUL_5_mult_17_n537, MUL_5_mult_17_n536,
         MUL_5_mult_17_n535, MUL_5_mult_17_n534, MUL_5_mult_17_n533,
         MUL_5_mult_17_n532, MUL_5_mult_17_n531, MUL_5_mult_17_n530,
         MUL_5_mult_17_n529, MUL_5_mult_17_n528, MUL_5_mult_17_n527,
         MUL_5_mult_17_n526, MUL_5_mult_17_n525, MUL_5_mult_17_n524,
         MUL_5_mult_17_n523, MUL_5_mult_17_n522, MUL_5_mult_17_n521,
         MUL_5_mult_17_n520, MUL_5_mult_17_n519, MUL_5_mult_17_n518,
         MUL_5_mult_17_n517, MUL_5_mult_17_n516, MUL_5_mult_17_n515,
         MUL_5_mult_17_n514, MUL_5_mult_17_n513, MUL_5_mult_17_n512,
         MUL_5_mult_17_n511, MUL_5_mult_17_n510, MUL_5_mult_17_n509,
         MUL_5_mult_17_n508, MUL_5_mult_17_n507, MUL_5_mult_17_n506,
         MUL_5_mult_17_product_17_, MUL_5_mult_17_product_16_,
         MUL_5_mult_17_product_15_, MUL_5_mult_17_product_14_,
         MUL_5_mult_17_product_13_, MUL_5_mult_17_product_12_,
         MUL_5_mult_17_product_11_, MUL_5_mult_17_product_10_,
         MUL_5_mult_17_product_9_, MUL_5_mult_17_product_8_,
         MUL_5_mult_17_product_7_, MUL_5_mult_17_product_6_,
         MUL_5_mult_17_product_5_, MUL_5_mult_17_product_4_,
         MUL_5_mult_17_product_3_, MUL_5_mult_17_product_2_,
         MUL_5_mult_17_product_1_, MUL_5_mult_17_n288, MUL_5_mult_17_n287,
         MUL_5_mult_17_n286, MUL_5_mult_17_n285, MUL_5_mult_17_n284,
         MUL_5_mult_17_n283, MUL_5_mult_17_n282, MUL_5_mult_17_n281,
         MUL_5_mult_17_n280, MUL_5_mult_17_n279, MUL_5_mult_17_n276,
         MUL_5_mult_17_n275, MUL_5_mult_17_n274, MUL_5_mult_17_n273,
         MUL_5_mult_17_n272, MUL_5_mult_17_n271, MUL_5_mult_17_n270,
         MUL_5_mult_17_n269, MUL_5_mult_17_n268, MUL_5_mult_17_n267,
         MUL_5_mult_17_n266, MUL_5_mult_17_n264, MUL_5_mult_17_n263,
         MUL_5_mult_17_n262, MUL_5_mult_17_n261, MUL_5_mult_17_n260,
         MUL_5_mult_17_n259, MUL_5_mult_17_n258, MUL_5_mult_17_n257,
         MUL_5_mult_17_n256, MUL_5_mult_17_n255, MUL_5_mult_17_n254,
         MUL_5_mult_17_n253, MUL_5_mult_17_n251, MUL_5_mult_17_n250,
         MUL_5_mult_17_n249, MUL_5_mult_17_n248, MUL_5_mult_17_n247,
         MUL_5_mult_17_n246, MUL_5_mult_17_n245, MUL_5_mult_17_n244,
         MUL_5_mult_17_n243, MUL_5_mult_17_n242, MUL_5_mult_17_n241,
         MUL_5_mult_17_n240, MUL_5_mult_17_n238, MUL_5_mult_17_n237,
         MUL_5_mult_17_n236, MUL_5_mult_17_n235, MUL_5_mult_17_n234,
         MUL_5_mult_17_n233, MUL_5_mult_17_n232, MUL_5_mult_17_n231,
         MUL_5_mult_17_n230, MUL_5_mult_17_n229, MUL_5_mult_17_n228,
         MUL_5_mult_17_n227, MUL_5_mult_17_n225, MUL_5_mult_17_n224,
         MUL_5_mult_17_n223, MUL_5_mult_17_n221, MUL_5_mult_17_n220,
         MUL_5_mult_17_n219, MUL_5_mult_17_n218, MUL_5_mult_17_n217,
         MUL_5_mult_17_n216, MUL_5_mult_17_n215, MUL_5_mult_17_n214,
         MUL_5_mult_17_n212, MUL_5_mult_17_n210, MUL_5_mult_17_n209,
         MUL_5_mult_17_n208, MUL_5_mult_17_n207, MUL_5_mult_17_n206,
         MUL_5_mult_17_n205, MUL_5_mult_17_n204, MUL_5_mult_17_n203,
         MUL_5_mult_17_n202, MUL_5_mult_17_n201, MUL_5_mult_17_n197,
         MUL_5_mult_17_n196, MUL_5_mult_17_n195, MUL_5_mult_17_n194,
         MUL_5_mult_17_n193, MUL_5_mult_17_n171, MUL_5_mult_17_n170,
         MUL_5_mult_17_n169, MUL_5_mult_17_n168, MUL_5_mult_17_n167,
         MUL_5_mult_17_n166, MUL_5_mult_17_n165, MUL_5_mult_17_n164,
         MUL_5_mult_17_n163, MUL_5_mult_17_n162, MUL_5_mult_17_n161,
         MUL_5_mult_17_n160, MUL_5_mult_17_n159, MUL_5_mult_17_n158,
         MUL_5_mult_17_n157, MUL_5_mult_17_n156, MUL_5_mult_17_n155,
         MUL_5_mult_17_n154, MUL_5_mult_17_n153, MUL_5_mult_17_n152,
         MUL_5_mult_17_n151, MUL_5_mult_17_n150, MUL_5_mult_17_n149,
         MUL_5_mult_17_n148, MUL_5_mult_17_n147, MUL_5_mult_17_n146,
         MUL_5_mult_17_n145, MUL_5_mult_17_n144, MUL_5_mult_17_n143,
         MUL_5_mult_17_n142, MUL_5_mult_17_n141, MUL_5_mult_17_n140,
         MUL_5_mult_17_n139, MUL_5_mult_17_n138, MUL_5_mult_17_n137,
         MUL_5_mult_17_n136, MUL_5_mult_17_n135, MUL_5_mult_17_n134,
         MUL_5_mult_17_n133, MUL_5_mult_17_n132, MUL_5_mult_17_n131,
         MUL_5_mult_17_n130, MUL_5_mult_17_n129, MUL_5_mult_17_n128,
         MUL_5_mult_17_n127, MUL_5_mult_17_n126, MUL_5_mult_17_n125,
         MUL_5_mult_17_n124, MUL_5_mult_17_n123, MUL_5_mult_17_n122,
         MUL_5_mult_17_n121, MUL_5_mult_17_n120, MUL_5_mult_17_n119,
         MUL_5_mult_17_n118, MUL_5_mult_17_n117, MUL_5_mult_17_n116,
         MUL_5_mult_17_n115, MUL_5_mult_17_n114, MUL_5_mult_17_n113,
         MUL_5_mult_17_n112, MUL_5_mult_17_n111, MUL_5_mult_17_n110,
         MUL_5_mult_17_n109, MUL_5_mult_17_n108, MUL_5_mult_17_n107,
         MUL_5_mult_17_n106, MUL_5_mult_17_n105, MUL_5_mult_17_n104,
         MUL_5_mult_17_n103, MUL_5_mult_17_n102, MUL_5_mult_17_n101,
         MUL_5_mult_17_n100, MUL_5_mult_17_n98, MUL_5_mult_17_n97,
         MUL_5_mult_17_n96, MUL_5_mult_17_n95, MUL_5_mult_17_n94,
         MUL_5_mult_17_n93, MUL_5_mult_17_n92, MUL_5_mult_17_n91,
         MUL_5_mult_17_n90, MUL_5_mult_17_n89, MUL_5_mult_17_n88,
         MUL_5_mult_17_n87, MUL_5_mult_17_n86, MUL_5_mult_17_n85,
         MUL_5_mult_17_n84, MUL_5_mult_17_n83, MUL_5_mult_17_n82,
         MUL_5_mult_17_n81, MUL_5_mult_17_n80, MUL_5_mult_17_n79,
         MUL_5_mult_17_n78, MUL_5_mult_17_n76, MUL_5_mult_17_n75,
         MUL_5_mult_17_n74, MUL_5_mult_17_n73, MUL_5_mult_17_n72,
         MUL_5_mult_17_n71, MUL_5_mult_17_n70, MUL_5_mult_17_n69,
         MUL_5_mult_17_n68, MUL_5_mult_17_n67, MUL_5_mult_17_n66,
         MUL_5_mult_17_n65, MUL_5_mult_17_n64, MUL_5_mult_17_n63,
         MUL_5_mult_17_n62, MUL_5_mult_17_n61, MUL_5_mult_17_n60,
         MUL_5_mult_17_n58, MUL_5_mult_17_n57, MUL_5_mult_17_n56,
         MUL_5_mult_17_n55, MUL_5_mult_17_n54, MUL_5_mult_17_n53,
         MUL_5_mult_17_n52, MUL_5_mult_17_n51, MUL_5_mult_17_n50,
         MUL_5_mult_17_n49, MUL_5_mult_17_n48, MUL_5_mult_17_n47,
         MUL_5_mult_17_n46, MUL_5_mult_17_n44, MUL_5_mult_17_n43,
         MUL_5_mult_17_n42, MUL_5_mult_17_n41, MUL_5_mult_17_n40,
         MUL_5_mult_17_n39, MUL_5_mult_17_n38, MUL_5_mult_17_n37,
         MUL_5_mult_17_n36, MUL_5_mult_17_n34, MUL_5_mult_17_n33,
         MUL_5_mult_17_n32, MUL_5_mult_17_n31, MUL_5_mult_17_n30,
         MUL_5_mult_17_n29, MUL_5_mult_17_n10, MUL_5_mult_17_n9,
         MUL_5_mult_17_n8, MUL_5_mult_17_n7, MUL_5_mult_17_n6,
         MUL_5_mult_17_n5, MUL_5_mult_17_n4, ADD_5_add_18_n1, SAMPLE_REG_6_n82,
         SAMPLE_REG_6_n81, SAMPLE_REG_6_n80, SAMPLE_REG_6_n79,
         SAMPLE_REG_6_n78, SAMPLE_REG_6_n77, SAMPLE_REG_6_n76,
         SAMPLE_REG_6_n75, SAMPLE_REG_6_n74, SAMPLE_REG_6_n73,
         SAMPLE_REG_6_n72, SAMPLE_REG_6_n71, SAMPLE_REG_6_n70,
         SAMPLE_REG_6_n69, SAMPLE_REG_6_n68, SAMPLE_REG_6_n67,
         SAMPLE_REG_6_n66, SAMPLE_REG_6_n65, SAMPLE_REG_6_n64,
         SAMPLE_REG_6_n63, SAMPLE_REG_6_n62, SAMPLE_REG_6_n61,
         SAMPLE_REG_6_n60, SAMPLE_REG_6_n59, SAMPLE_REG_6_n58,
         SAMPLE_REG_6_n57, SAMPLE_REG_6_n56, SAMPLE_REG_6_n55,
         SAMPLE_REG_6_n54, SAMPLE_REG_6_n53, SAMPLE_REG_6_n52,
         SAMPLE_REG_6_n51, SAMPLE_REG_6_n50, SAMPLE_REG_6_n49,
         SAMPLE_REG_6_n48, SAMPLE_REG_6_n47, SAMPLE_REG_6_n46,
         SAMPLE_REG_6_n45, SAMPLE_REG_6_n44, SAMPLE_REG_6_n43,
         SAMPLE_REG_6_n42, SAMPLE_REG_6_n41, SAMPLE_REG_6_n40, MUL_6_O_0_,
         MUL_6_mult_17_n683, MUL_6_mult_17_n682, MUL_6_mult_17_n681,
         MUL_6_mult_17_n680, MUL_6_mult_17_n679, MUL_6_mult_17_n678,
         MUL_6_mult_17_n677, MUL_6_mult_17_n676, MUL_6_mult_17_n675,
         MUL_6_mult_17_n674, MUL_6_mult_17_n673, MUL_6_mult_17_n672,
         MUL_6_mult_17_n671, MUL_6_mult_17_n670, MUL_6_mult_17_n669,
         MUL_6_mult_17_n668, MUL_6_mult_17_n667, MUL_6_mult_17_n666,
         MUL_6_mult_17_n665, MUL_6_mult_17_n664, MUL_6_mult_17_n663,
         MUL_6_mult_17_n662, MUL_6_mult_17_n661, MUL_6_mult_17_n660,
         MUL_6_mult_17_n659, MUL_6_mult_17_n658, MUL_6_mult_17_n657,
         MUL_6_mult_17_n656, MUL_6_mult_17_n655, MUL_6_mult_17_n654,
         MUL_6_mult_17_n653, MUL_6_mult_17_n652, MUL_6_mult_17_n651,
         MUL_6_mult_17_n650, MUL_6_mult_17_n649, MUL_6_mult_17_n648,
         MUL_6_mult_17_n647, MUL_6_mult_17_n646, MUL_6_mult_17_n645,
         MUL_6_mult_17_n644, MUL_6_mult_17_n643, MUL_6_mult_17_n642,
         MUL_6_mult_17_n641, MUL_6_mult_17_n640, MUL_6_mult_17_n639,
         MUL_6_mult_17_n638, MUL_6_mult_17_n637, MUL_6_mult_17_n636,
         MUL_6_mult_17_n635, MUL_6_mult_17_n634, MUL_6_mult_17_n633,
         MUL_6_mult_17_n632, MUL_6_mult_17_n631, MUL_6_mult_17_n630,
         MUL_6_mult_17_n629, MUL_6_mult_17_n628, MUL_6_mult_17_n627,
         MUL_6_mult_17_n626, MUL_6_mult_17_n625, MUL_6_mult_17_n624,
         MUL_6_mult_17_n623, MUL_6_mult_17_n622, MUL_6_mult_17_n621,
         MUL_6_mult_17_n620, MUL_6_mult_17_n619, MUL_6_mult_17_n618,
         MUL_6_mult_17_n617, MUL_6_mult_17_n616, MUL_6_mult_17_n615,
         MUL_6_mult_17_n614, MUL_6_mult_17_n613, MUL_6_mult_17_n612,
         MUL_6_mult_17_n611, MUL_6_mult_17_n610, MUL_6_mult_17_n609,
         MUL_6_mult_17_n608, MUL_6_mult_17_n607, MUL_6_mult_17_n606,
         MUL_6_mult_17_n605, MUL_6_mult_17_n604, MUL_6_mult_17_n603,
         MUL_6_mult_17_n602, MUL_6_mult_17_n601, MUL_6_mult_17_n600,
         MUL_6_mult_17_n599, MUL_6_mult_17_n598, MUL_6_mult_17_n597,
         MUL_6_mult_17_n596, MUL_6_mult_17_n595, MUL_6_mult_17_n594,
         MUL_6_mult_17_n593, MUL_6_mult_17_n592, MUL_6_mult_17_n591,
         MUL_6_mult_17_n590, MUL_6_mult_17_n589, MUL_6_mult_17_n588,
         MUL_6_mult_17_n587, MUL_6_mult_17_n586, MUL_6_mult_17_n585,
         MUL_6_mult_17_n584, MUL_6_mult_17_n583, MUL_6_mult_17_n582,
         MUL_6_mult_17_n581, MUL_6_mult_17_n580, MUL_6_mult_17_n579,
         MUL_6_mult_17_n578, MUL_6_mult_17_n577, MUL_6_mult_17_n576,
         MUL_6_mult_17_n575, MUL_6_mult_17_n574, MUL_6_mult_17_n573,
         MUL_6_mult_17_n572, MUL_6_mult_17_n571, MUL_6_mult_17_n570,
         MUL_6_mult_17_n569, MUL_6_mult_17_n568, MUL_6_mult_17_n567,
         MUL_6_mult_17_n566, MUL_6_mult_17_n565, MUL_6_mult_17_n564,
         MUL_6_mult_17_n563, MUL_6_mult_17_n562, MUL_6_mult_17_n561,
         MUL_6_mult_17_n560, MUL_6_mult_17_n559, MUL_6_mult_17_n558,
         MUL_6_mult_17_n557, MUL_6_mult_17_n556, MUL_6_mult_17_n555,
         MUL_6_mult_17_n554, MUL_6_mult_17_n553, MUL_6_mult_17_n552,
         MUL_6_mult_17_n551, MUL_6_mult_17_n550, MUL_6_mult_17_n549,
         MUL_6_mult_17_n548, MUL_6_mult_17_n547, MUL_6_mult_17_n546,
         MUL_6_mult_17_n545, MUL_6_mult_17_n544, MUL_6_mult_17_n543,
         MUL_6_mult_17_n542, MUL_6_mult_17_n541, MUL_6_mult_17_n540,
         MUL_6_mult_17_n539, MUL_6_mult_17_n538, MUL_6_mult_17_n537,
         MUL_6_mult_17_n536, MUL_6_mult_17_n535, MUL_6_mult_17_n534,
         MUL_6_mult_17_n533, MUL_6_mult_17_n532, MUL_6_mult_17_n531,
         MUL_6_mult_17_n530, MUL_6_mult_17_n529, MUL_6_mult_17_n528,
         MUL_6_mult_17_n527, MUL_6_mult_17_n526, MUL_6_mult_17_n525,
         MUL_6_mult_17_n524, MUL_6_mult_17_n523, MUL_6_mult_17_n522,
         MUL_6_mult_17_n521, MUL_6_mult_17_n520, MUL_6_mult_17_n519,
         MUL_6_mult_17_n518, MUL_6_mult_17_n517, MUL_6_mult_17_n516,
         MUL_6_mult_17_n515, MUL_6_mult_17_n514, MUL_6_mult_17_n513,
         MUL_6_mult_17_n512, MUL_6_mult_17_n511, MUL_6_mult_17_n510,
         MUL_6_mult_17_n509, MUL_6_mult_17_n508, MUL_6_mult_17_n507,
         MUL_6_mult_17_n506, MUL_6_mult_17_product_17_,
         MUL_6_mult_17_product_16_, MUL_6_mult_17_product_15_,
         MUL_6_mult_17_product_14_, MUL_6_mult_17_product_13_,
         MUL_6_mult_17_product_12_, MUL_6_mult_17_product_11_,
         MUL_6_mult_17_product_10_, MUL_6_mult_17_product_9_,
         MUL_6_mult_17_product_8_, MUL_6_mult_17_product_7_,
         MUL_6_mult_17_product_6_, MUL_6_mult_17_product_5_,
         MUL_6_mult_17_product_4_, MUL_6_mult_17_product_3_,
         MUL_6_mult_17_product_2_, MUL_6_mult_17_product_1_,
         MUL_6_mult_17_n288, MUL_6_mult_17_n287, MUL_6_mult_17_n286,
         MUL_6_mult_17_n285, MUL_6_mult_17_n284, MUL_6_mult_17_n283,
         MUL_6_mult_17_n282, MUL_6_mult_17_n281, MUL_6_mult_17_n280,
         MUL_6_mult_17_n279, MUL_6_mult_17_n276, MUL_6_mult_17_n275,
         MUL_6_mult_17_n274, MUL_6_mult_17_n273, MUL_6_mult_17_n272,
         MUL_6_mult_17_n271, MUL_6_mult_17_n270, MUL_6_mult_17_n269,
         MUL_6_mult_17_n268, MUL_6_mult_17_n267, MUL_6_mult_17_n266,
         MUL_6_mult_17_n264, MUL_6_mult_17_n263, MUL_6_mult_17_n262,
         MUL_6_mult_17_n261, MUL_6_mult_17_n260, MUL_6_mult_17_n259,
         MUL_6_mult_17_n258, MUL_6_mult_17_n257, MUL_6_mult_17_n256,
         MUL_6_mult_17_n255, MUL_6_mult_17_n254, MUL_6_mult_17_n253,
         MUL_6_mult_17_n251, MUL_6_mult_17_n250, MUL_6_mult_17_n249,
         MUL_6_mult_17_n248, MUL_6_mult_17_n247, MUL_6_mult_17_n246,
         MUL_6_mult_17_n245, MUL_6_mult_17_n244, MUL_6_mult_17_n243,
         MUL_6_mult_17_n242, MUL_6_mult_17_n241, MUL_6_mult_17_n240,
         MUL_6_mult_17_n238, MUL_6_mult_17_n237, MUL_6_mult_17_n236,
         MUL_6_mult_17_n235, MUL_6_mult_17_n234, MUL_6_mult_17_n233,
         MUL_6_mult_17_n232, MUL_6_mult_17_n231, MUL_6_mult_17_n230,
         MUL_6_mult_17_n229, MUL_6_mult_17_n228, MUL_6_mult_17_n227,
         MUL_6_mult_17_n225, MUL_6_mult_17_n224, MUL_6_mult_17_n223,
         MUL_6_mult_17_n221, MUL_6_mult_17_n220, MUL_6_mult_17_n219,
         MUL_6_mult_17_n218, MUL_6_mult_17_n217, MUL_6_mult_17_n216,
         MUL_6_mult_17_n215, MUL_6_mult_17_n214, MUL_6_mult_17_n212,
         MUL_6_mult_17_n210, MUL_6_mult_17_n209, MUL_6_mult_17_n208,
         MUL_6_mult_17_n207, MUL_6_mult_17_n206, MUL_6_mult_17_n205,
         MUL_6_mult_17_n204, MUL_6_mult_17_n203, MUL_6_mult_17_n202,
         MUL_6_mult_17_n201, MUL_6_mult_17_n197, MUL_6_mult_17_n196,
         MUL_6_mult_17_n195, MUL_6_mult_17_n194, MUL_6_mult_17_n193,
         MUL_6_mult_17_n171, MUL_6_mult_17_n170, MUL_6_mult_17_n169,
         MUL_6_mult_17_n168, MUL_6_mult_17_n167, MUL_6_mult_17_n166,
         MUL_6_mult_17_n165, MUL_6_mult_17_n164, MUL_6_mult_17_n163,
         MUL_6_mult_17_n162, MUL_6_mult_17_n161, MUL_6_mult_17_n160,
         MUL_6_mult_17_n159, MUL_6_mult_17_n158, MUL_6_mult_17_n157,
         MUL_6_mult_17_n156, MUL_6_mult_17_n155, MUL_6_mult_17_n154,
         MUL_6_mult_17_n153, MUL_6_mult_17_n152, MUL_6_mult_17_n151,
         MUL_6_mult_17_n150, MUL_6_mult_17_n149, MUL_6_mult_17_n148,
         MUL_6_mult_17_n147, MUL_6_mult_17_n146, MUL_6_mult_17_n145,
         MUL_6_mult_17_n144, MUL_6_mult_17_n143, MUL_6_mult_17_n142,
         MUL_6_mult_17_n141, MUL_6_mult_17_n140, MUL_6_mult_17_n139,
         MUL_6_mult_17_n138, MUL_6_mult_17_n137, MUL_6_mult_17_n136,
         MUL_6_mult_17_n135, MUL_6_mult_17_n134, MUL_6_mult_17_n133,
         MUL_6_mult_17_n132, MUL_6_mult_17_n131, MUL_6_mult_17_n130,
         MUL_6_mult_17_n129, MUL_6_mult_17_n128, MUL_6_mult_17_n127,
         MUL_6_mult_17_n126, MUL_6_mult_17_n125, MUL_6_mult_17_n124,
         MUL_6_mult_17_n123, MUL_6_mult_17_n122, MUL_6_mult_17_n121,
         MUL_6_mult_17_n120, MUL_6_mult_17_n119, MUL_6_mult_17_n118,
         MUL_6_mult_17_n117, MUL_6_mult_17_n116, MUL_6_mult_17_n115,
         MUL_6_mult_17_n114, MUL_6_mult_17_n113, MUL_6_mult_17_n112,
         MUL_6_mult_17_n111, MUL_6_mult_17_n110, MUL_6_mult_17_n109,
         MUL_6_mult_17_n108, MUL_6_mult_17_n107, MUL_6_mult_17_n106,
         MUL_6_mult_17_n105, MUL_6_mult_17_n104, MUL_6_mult_17_n103,
         MUL_6_mult_17_n102, MUL_6_mult_17_n101, MUL_6_mult_17_n100,
         MUL_6_mult_17_n98, MUL_6_mult_17_n97, MUL_6_mult_17_n96,
         MUL_6_mult_17_n95, MUL_6_mult_17_n94, MUL_6_mult_17_n93,
         MUL_6_mult_17_n92, MUL_6_mult_17_n91, MUL_6_mult_17_n90,
         MUL_6_mult_17_n89, MUL_6_mult_17_n88, MUL_6_mult_17_n87,
         MUL_6_mult_17_n86, MUL_6_mult_17_n85, MUL_6_mult_17_n84,
         MUL_6_mult_17_n83, MUL_6_mult_17_n82, MUL_6_mult_17_n81,
         MUL_6_mult_17_n80, MUL_6_mult_17_n79, MUL_6_mult_17_n78,
         MUL_6_mult_17_n76, MUL_6_mult_17_n75, MUL_6_mult_17_n74,
         MUL_6_mult_17_n73, MUL_6_mult_17_n72, MUL_6_mult_17_n71,
         MUL_6_mult_17_n70, MUL_6_mult_17_n69, MUL_6_mult_17_n68,
         MUL_6_mult_17_n67, MUL_6_mult_17_n66, MUL_6_mult_17_n65,
         MUL_6_mult_17_n64, MUL_6_mult_17_n63, MUL_6_mult_17_n62,
         MUL_6_mult_17_n61, MUL_6_mult_17_n60, MUL_6_mult_17_n58,
         MUL_6_mult_17_n57, MUL_6_mult_17_n56, MUL_6_mult_17_n55,
         MUL_6_mult_17_n54, MUL_6_mult_17_n53, MUL_6_mult_17_n52,
         MUL_6_mult_17_n51, MUL_6_mult_17_n50, MUL_6_mult_17_n49,
         MUL_6_mult_17_n48, MUL_6_mult_17_n47, MUL_6_mult_17_n46,
         MUL_6_mult_17_n44, MUL_6_mult_17_n43, MUL_6_mult_17_n42,
         MUL_6_mult_17_n41, MUL_6_mult_17_n40, MUL_6_mult_17_n39,
         MUL_6_mult_17_n38, MUL_6_mult_17_n37, MUL_6_mult_17_n36,
         MUL_6_mult_17_n34, MUL_6_mult_17_n33, MUL_6_mult_17_n32,
         MUL_6_mult_17_n31, MUL_6_mult_17_n30, MUL_6_mult_17_n29,
         MUL_6_mult_17_n10, MUL_6_mult_17_n9, MUL_6_mult_17_n8,
         MUL_6_mult_17_n7, MUL_6_mult_17_n6, MUL_6_mult_17_n5,
         MUL_6_mult_17_n4, ADD_6_add_18_n1, SAMPLE_REG_7_n82, SAMPLE_REG_7_n81,
         SAMPLE_REG_7_n80, SAMPLE_REG_7_n79, SAMPLE_REG_7_n78,
         SAMPLE_REG_7_n77, SAMPLE_REG_7_n76, SAMPLE_REG_7_n75,
         SAMPLE_REG_7_n74, SAMPLE_REG_7_n73, SAMPLE_REG_7_n72,
         SAMPLE_REG_7_n71, SAMPLE_REG_7_n70, SAMPLE_REG_7_n69,
         SAMPLE_REG_7_n68, SAMPLE_REG_7_n67, SAMPLE_REG_7_n66,
         SAMPLE_REG_7_n65, SAMPLE_REG_7_n64, SAMPLE_REG_7_n63,
         SAMPLE_REG_7_n62, SAMPLE_REG_7_n61, SAMPLE_REG_7_n60,
         SAMPLE_REG_7_n59, SAMPLE_REG_7_n58, SAMPLE_REG_7_n57,
         SAMPLE_REG_7_n56, SAMPLE_REG_7_n55, SAMPLE_REG_7_n54,
         SAMPLE_REG_7_n53, SAMPLE_REG_7_n52, SAMPLE_REG_7_n51,
         SAMPLE_REG_7_n50, SAMPLE_REG_7_n49, SAMPLE_REG_7_n48,
         SAMPLE_REG_7_n47, SAMPLE_REG_7_n46, SAMPLE_REG_7_n45,
         SAMPLE_REG_7_n44, SAMPLE_REG_7_n43, SAMPLE_REG_7_n42,
         SAMPLE_REG_7_n41, SAMPLE_REG_7_n40, MUL_7_O_0_, MUL_7_mult_17_n683,
         MUL_7_mult_17_n682, MUL_7_mult_17_n681, MUL_7_mult_17_n680,
         MUL_7_mult_17_n679, MUL_7_mult_17_n678, MUL_7_mult_17_n677,
         MUL_7_mult_17_n676, MUL_7_mult_17_n675, MUL_7_mult_17_n674,
         MUL_7_mult_17_n673, MUL_7_mult_17_n672, MUL_7_mult_17_n671,
         MUL_7_mult_17_n670, MUL_7_mult_17_n669, MUL_7_mult_17_n668,
         MUL_7_mult_17_n667, MUL_7_mult_17_n666, MUL_7_mult_17_n665,
         MUL_7_mult_17_n664, MUL_7_mult_17_n663, MUL_7_mult_17_n662,
         MUL_7_mult_17_n661, MUL_7_mult_17_n660, MUL_7_mult_17_n659,
         MUL_7_mult_17_n658, MUL_7_mult_17_n657, MUL_7_mult_17_n656,
         MUL_7_mult_17_n655, MUL_7_mult_17_n654, MUL_7_mult_17_n653,
         MUL_7_mult_17_n652, MUL_7_mult_17_n651, MUL_7_mult_17_n650,
         MUL_7_mult_17_n649, MUL_7_mult_17_n648, MUL_7_mult_17_n647,
         MUL_7_mult_17_n646, MUL_7_mult_17_n645, MUL_7_mult_17_n644,
         MUL_7_mult_17_n643, MUL_7_mult_17_n642, MUL_7_mult_17_n641,
         MUL_7_mult_17_n640, MUL_7_mult_17_n639, MUL_7_mult_17_n638,
         MUL_7_mult_17_n637, MUL_7_mult_17_n636, MUL_7_mult_17_n635,
         MUL_7_mult_17_n634, MUL_7_mult_17_n633, MUL_7_mult_17_n632,
         MUL_7_mult_17_n631, MUL_7_mult_17_n630, MUL_7_mult_17_n629,
         MUL_7_mult_17_n628, MUL_7_mult_17_n627, MUL_7_mult_17_n626,
         MUL_7_mult_17_n625, MUL_7_mult_17_n624, MUL_7_mult_17_n623,
         MUL_7_mult_17_n622, MUL_7_mult_17_n621, MUL_7_mult_17_n620,
         MUL_7_mult_17_n619, MUL_7_mult_17_n618, MUL_7_mult_17_n617,
         MUL_7_mult_17_n616, MUL_7_mult_17_n615, MUL_7_mult_17_n614,
         MUL_7_mult_17_n613, MUL_7_mult_17_n612, MUL_7_mult_17_n611,
         MUL_7_mult_17_n610, MUL_7_mult_17_n609, MUL_7_mult_17_n608,
         MUL_7_mult_17_n607, MUL_7_mult_17_n606, MUL_7_mult_17_n605,
         MUL_7_mult_17_n604, MUL_7_mult_17_n603, MUL_7_mult_17_n602,
         MUL_7_mult_17_n601, MUL_7_mult_17_n600, MUL_7_mult_17_n599,
         MUL_7_mult_17_n598, MUL_7_mult_17_n597, MUL_7_mult_17_n596,
         MUL_7_mult_17_n595, MUL_7_mult_17_n594, MUL_7_mult_17_n593,
         MUL_7_mult_17_n592, MUL_7_mult_17_n591, MUL_7_mult_17_n590,
         MUL_7_mult_17_n589, MUL_7_mult_17_n588, MUL_7_mult_17_n587,
         MUL_7_mult_17_n586, MUL_7_mult_17_n585, MUL_7_mult_17_n584,
         MUL_7_mult_17_n583, MUL_7_mult_17_n582, MUL_7_mult_17_n581,
         MUL_7_mult_17_n580, MUL_7_mult_17_n579, MUL_7_mult_17_n578,
         MUL_7_mult_17_n577, MUL_7_mult_17_n576, MUL_7_mult_17_n575,
         MUL_7_mult_17_n574, MUL_7_mult_17_n573, MUL_7_mult_17_n572,
         MUL_7_mult_17_n571, MUL_7_mult_17_n570, MUL_7_mult_17_n569,
         MUL_7_mult_17_n568, MUL_7_mult_17_n567, MUL_7_mult_17_n566,
         MUL_7_mult_17_n565, MUL_7_mult_17_n564, MUL_7_mult_17_n563,
         MUL_7_mult_17_n562, MUL_7_mult_17_n561, MUL_7_mult_17_n560,
         MUL_7_mult_17_n559, MUL_7_mult_17_n558, MUL_7_mult_17_n557,
         MUL_7_mult_17_n556, MUL_7_mult_17_n555, MUL_7_mult_17_n554,
         MUL_7_mult_17_n553, MUL_7_mult_17_n552, MUL_7_mult_17_n551,
         MUL_7_mult_17_n550, MUL_7_mult_17_n549, MUL_7_mult_17_n548,
         MUL_7_mult_17_n547, MUL_7_mult_17_n546, MUL_7_mult_17_n545,
         MUL_7_mult_17_n544, MUL_7_mult_17_n543, MUL_7_mult_17_n542,
         MUL_7_mult_17_n541, MUL_7_mult_17_n540, MUL_7_mult_17_n539,
         MUL_7_mult_17_n538, MUL_7_mult_17_n537, MUL_7_mult_17_n536,
         MUL_7_mult_17_n535, MUL_7_mult_17_n534, MUL_7_mult_17_n533,
         MUL_7_mult_17_n532, MUL_7_mult_17_n531, MUL_7_mult_17_n530,
         MUL_7_mult_17_n529, MUL_7_mult_17_n528, MUL_7_mult_17_n527,
         MUL_7_mult_17_n526, MUL_7_mult_17_n525, MUL_7_mult_17_n524,
         MUL_7_mult_17_n523, MUL_7_mult_17_n522, MUL_7_mult_17_n521,
         MUL_7_mult_17_n520, MUL_7_mult_17_n519, MUL_7_mult_17_n518,
         MUL_7_mult_17_n517, MUL_7_mult_17_n516, MUL_7_mult_17_n515,
         MUL_7_mult_17_n514, MUL_7_mult_17_n513, MUL_7_mult_17_n512,
         MUL_7_mult_17_n511, MUL_7_mult_17_n510, MUL_7_mult_17_n509,
         MUL_7_mult_17_n508, MUL_7_mult_17_n507, MUL_7_mult_17_n506,
         MUL_7_mult_17_product_17_, MUL_7_mult_17_product_16_,
         MUL_7_mult_17_product_15_, MUL_7_mult_17_product_14_,
         MUL_7_mult_17_product_13_, MUL_7_mult_17_product_12_,
         MUL_7_mult_17_product_11_, MUL_7_mult_17_product_10_,
         MUL_7_mult_17_product_9_, MUL_7_mult_17_product_8_,
         MUL_7_mult_17_product_7_, MUL_7_mult_17_product_6_,
         MUL_7_mult_17_product_5_, MUL_7_mult_17_product_4_,
         MUL_7_mult_17_product_3_, MUL_7_mult_17_product_2_,
         MUL_7_mult_17_product_1_, MUL_7_mult_17_n288, MUL_7_mult_17_n287,
         MUL_7_mult_17_n286, MUL_7_mult_17_n285, MUL_7_mult_17_n284,
         MUL_7_mult_17_n283, MUL_7_mult_17_n282, MUL_7_mult_17_n281,
         MUL_7_mult_17_n280, MUL_7_mult_17_n279, MUL_7_mult_17_n276,
         MUL_7_mult_17_n275, MUL_7_mult_17_n274, MUL_7_mult_17_n273,
         MUL_7_mult_17_n272, MUL_7_mult_17_n271, MUL_7_mult_17_n270,
         MUL_7_mult_17_n269, MUL_7_mult_17_n268, MUL_7_mult_17_n267,
         MUL_7_mult_17_n266, MUL_7_mult_17_n264, MUL_7_mult_17_n263,
         MUL_7_mult_17_n262, MUL_7_mult_17_n261, MUL_7_mult_17_n260,
         MUL_7_mult_17_n259, MUL_7_mult_17_n258, MUL_7_mult_17_n257,
         MUL_7_mult_17_n256, MUL_7_mult_17_n255, MUL_7_mult_17_n254,
         MUL_7_mult_17_n253, MUL_7_mult_17_n251, MUL_7_mult_17_n250,
         MUL_7_mult_17_n249, MUL_7_mult_17_n248, MUL_7_mult_17_n247,
         MUL_7_mult_17_n246, MUL_7_mult_17_n245, MUL_7_mult_17_n244,
         MUL_7_mult_17_n243, MUL_7_mult_17_n242, MUL_7_mult_17_n241,
         MUL_7_mult_17_n240, MUL_7_mult_17_n238, MUL_7_mult_17_n237,
         MUL_7_mult_17_n236, MUL_7_mult_17_n235, MUL_7_mult_17_n234,
         MUL_7_mult_17_n233, MUL_7_mult_17_n232, MUL_7_mult_17_n231,
         MUL_7_mult_17_n230, MUL_7_mult_17_n229, MUL_7_mult_17_n228,
         MUL_7_mult_17_n227, MUL_7_mult_17_n225, MUL_7_mult_17_n224,
         MUL_7_mult_17_n223, MUL_7_mult_17_n221, MUL_7_mult_17_n220,
         MUL_7_mult_17_n219, MUL_7_mult_17_n218, MUL_7_mult_17_n217,
         MUL_7_mult_17_n216, MUL_7_mult_17_n215, MUL_7_mult_17_n214,
         MUL_7_mult_17_n212, MUL_7_mult_17_n210, MUL_7_mult_17_n209,
         MUL_7_mult_17_n208, MUL_7_mult_17_n207, MUL_7_mult_17_n206,
         MUL_7_mult_17_n205, MUL_7_mult_17_n204, MUL_7_mult_17_n203,
         MUL_7_mult_17_n202, MUL_7_mult_17_n201, MUL_7_mult_17_n197,
         MUL_7_mult_17_n196, MUL_7_mult_17_n195, MUL_7_mult_17_n194,
         MUL_7_mult_17_n193, MUL_7_mult_17_n171, MUL_7_mult_17_n170,
         MUL_7_mult_17_n169, MUL_7_mult_17_n168, MUL_7_mult_17_n167,
         MUL_7_mult_17_n166, MUL_7_mult_17_n165, MUL_7_mult_17_n164,
         MUL_7_mult_17_n163, MUL_7_mult_17_n162, MUL_7_mult_17_n161,
         MUL_7_mult_17_n160, MUL_7_mult_17_n159, MUL_7_mult_17_n158,
         MUL_7_mult_17_n157, MUL_7_mult_17_n156, MUL_7_mult_17_n155,
         MUL_7_mult_17_n154, MUL_7_mult_17_n153, MUL_7_mult_17_n152,
         MUL_7_mult_17_n151, MUL_7_mult_17_n150, MUL_7_mult_17_n149,
         MUL_7_mult_17_n148, MUL_7_mult_17_n147, MUL_7_mult_17_n146,
         MUL_7_mult_17_n145, MUL_7_mult_17_n144, MUL_7_mult_17_n143,
         MUL_7_mult_17_n142, MUL_7_mult_17_n141, MUL_7_mult_17_n140,
         MUL_7_mult_17_n139, MUL_7_mult_17_n138, MUL_7_mult_17_n137,
         MUL_7_mult_17_n136, MUL_7_mult_17_n135, MUL_7_mult_17_n134,
         MUL_7_mult_17_n133, MUL_7_mult_17_n132, MUL_7_mult_17_n131,
         MUL_7_mult_17_n130, MUL_7_mult_17_n129, MUL_7_mult_17_n128,
         MUL_7_mult_17_n127, MUL_7_mult_17_n126, MUL_7_mult_17_n125,
         MUL_7_mult_17_n124, MUL_7_mult_17_n123, MUL_7_mult_17_n122,
         MUL_7_mult_17_n121, MUL_7_mult_17_n120, MUL_7_mult_17_n119,
         MUL_7_mult_17_n118, MUL_7_mult_17_n117, MUL_7_mult_17_n116,
         MUL_7_mult_17_n115, MUL_7_mult_17_n114, MUL_7_mult_17_n113,
         MUL_7_mult_17_n112, MUL_7_mult_17_n111, MUL_7_mult_17_n110,
         MUL_7_mult_17_n109, MUL_7_mult_17_n108, MUL_7_mult_17_n107,
         MUL_7_mult_17_n106, MUL_7_mult_17_n105, MUL_7_mult_17_n104,
         MUL_7_mult_17_n103, MUL_7_mult_17_n102, MUL_7_mult_17_n101,
         MUL_7_mult_17_n100, MUL_7_mult_17_n98, MUL_7_mult_17_n97,
         MUL_7_mult_17_n96, MUL_7_mult_17_n95, MUL_7_mult_17_n94,
         MUL_7_mult_17_n93, MUL_7_mult_17_n92, MUL_7_mult_17_n91,
         MUL_7_mult_17_n90, MUL_7_mult_17_n89, MUL_7_mult_17_n88,
         MUL_7_mult_17_n87, MUL_7_mult_17_n86, MUL_7_mult_17_n85,
         MUL_7_mult_17_n84, MUL_7_mult_17_n83, MUL_7_mult_17_n82,
         MUL_7_mult_17_n81, MUL_7_mult_17_n80, MUL_7_mult_17_n79,
         MUL_7_mult_17_n78, MUL_7_mult_17_n76, MUL_7_mult_17_n75,
         MUL_7_mult_17_n74, MUL_7_mult_17_n73, MUL_7_mult_17_n72,
         MUL_7_mult_17_n71, MUL_7_mult_17_n70, MUL_7_mult_17_n69,
         MUL_7_mult_17_n68, MUL_7_mult_17_n67, MUL_7_mult_17_n66,
         MUL_7_mult_17_n65, MUL_7_mult_17_n64, MUL_7_mult_17_n63,
         MUL_7_mult_17_n62, MUL_7_mult_17_n61, MUL_7_mult_17_n60,
         MUL_7_mult_17_n58, MUL_7_mult_17_n57, MUL_7_mult_17_n56,
         MUL_7_mult_17_n55, MUL_7_mult_17_n54, MUL_7_mult_17_n53,
         MUL_7_mult_17_n52, MUL_7_mult_17_n51, MUL_7_mult_17_n50,
         MUL_7_mult_17_n49, MUL_7_mult_17_n48, MUL_7_mult_17_n47,
         MUL_7_mult_17_n46, MUL_7_mult_17_n44, MUL_7_mult_17_n43,
         MUL_7_mult_17_n42, MUL_7_mult_17_n41, MUL_7_mult_17_n40,
         MUL_7_mult_17_n39, MUL_7_mult_17_n38, MUL_7_mult_17_n37,
         MUL_7_mult_17_n36, MUL_7_mult_17_n34, MUL_7_mult_17_n33,
         MUL_7_mult_17_n32, MUL_7_mult_17_n31, MUL_7_mult_17_n30,
         MUL_7_mult_17_n29, MUL_7_mult_17_n10, MUL_7_mult_17_n9,
         MUL_7_mult_17_n8, MUL_7_mult_17_n7, MUL_7_mult_17_n6,
         MUL_7_mult_17_n5, MUL_7_mult_17_n4, ADD_7_add_18_n1, SAMPLE_REG_8_n82,
         SAMPLE_REG_8_n81, SAMPLE_REG_8_n80, SAMPLE_REG_8_n79,
         SAMPLE_REG_8_n78, SAMPLE_REG_8_n77, SAMPLE_REG_8_n76,
         SAMPLE_REG_8_n75, SAMPLE_REG_8_n74, SAMPLE_REG_8_n73,
         SAMPLE_REG_8_n72, SAMPLE_REG_8_n71, SAMPLE_REG_8_n70,
         SAMPLE_REG_8_n69, SAMPLE_REG_8_n68, SAMPLE_REG_8_n67,
         SAMPLE_REG_8_n66, SAMPLE_REG_8_n65, SAMPLE_REG_8_n64,
         SAMPLE_REG_8_n63, SAMPLE_REG_8_n62, SAMPLE_REG_8_n61,
         SAMPLE_REG_8_n60, SAMPLE_REG_8_n59, SAMPLE_REG_8_n58,
         SAMPLE_REG_8_n57, SAMPLE_REG_8_n56, SAMPLE_REG_8_n55,
         SAMPLE_REG_8_n54, SAMPLE_REG_8_n53, SAMPLE_REG_8_n52,
         SAMPLE_REG_8_n51, SAMPLE_REG_8_n50, SAMPLE_REG_8_n49,
         SAMPLE_REG_8_n48, SAMPLE_REG_8_n47, SAMPLE_REG_8_n46,
         SAMPLE_REG_8_n45, SAMPLE_REG_8_n44, SAMPLE_REG_8_n43,
         SAMPLE_REG_8_n42, SAMPLE_REG_8_n41, SAMPLE_REG_8_n40, MUL_8_O_0_,
         MUL_8_mult_17_n683, MUL_8_mult_17_n682, MUL_8_mult_17_n681,
         MUL_8_mult_17_n680, MUL_8_mult_17_n679, MUL_8_mult_17_n678,
         MUL_8_mult_17_n677, MUL_8_mult_17_n676, MUL_8_mult_17_n675,
         MUL_8_mult_17_n674, MUL_8_mult_17_n673, MUL_8_mult_17_n672,
         MUL_8_mult_17_n671, MUL_8_mult_17_n670, MUL_8_mult_17_n669,
         MUL_8_mult_17_n668, MUL_8_mult_17_n667, MUL_8_mult_17_n666,
         MUL_8_mult_17_n665, MUL_8_mult_17_n664, MUL_8_mult_17_n663,
         MUL_8_mult_17_n662, MUL_8_mult_17_n661, MUL_8_mult_17_n660,
         MUL_8_mult_17_n659, MUL_8_mult_17_n658, MUL_8_mult_17_n657,
         MUL_8_mult_17_n656, MUL_8_mult_17_n655, MUL_8_mult_17_n654,
         MUL_8_mult_17_n653, MUL_8_mult_17_n652, MUL_8_mult_17_n651,
         MUL_8_mult_17_n650, MUL_8_mult_17_n649, MUL_8_mult_17_n648,
         MUL_8_mult_17_n647, MUL_8_mult_17_n646, MUL_8_mult_17_n645,
         MUL_8_mult_17_n644, MUL_8_mult_17_n643, MUL_8_mult_17_n642,
         MUL_8_mult_17_n641, MUL_8_mult_17_n640, MUL_8_mult_17_n639,
         MUL_8_mult_17_n638, MUL_8_mult_17_n637, MUL_8_mult_17_n636,
         MUL_8_mult_17_n635, MUL_8_mult_17_n634, MUL_8_mult_17_n633,
         MUL_8_mult_17_n632, MUL_8_mult_17_n631, MUL_8_mult_17_n630,
         MUL_8_mult_17_n629, MUL_8_mult_17_n628, MUL_8_mult_17_n627,
         MUL_8_mult_17_n626, MUL_8_mult_17_n625, MUL_8_mult_17_n624,
         MUL_8_mult_17_n623, MUL_8_mult_17_n622, MUL_8_mult_17_n621,
         MUL_8_mult_17_n620, MUL_8_mult_17_n619, MUL_8_mult_17_n618,
         MUL_8_mult_17_n617, MUL_8_mult_17_n616, MUL_8_mult_17_n615,
         MUL_8_mult_17_n614, MUL_8_mult_17_n613, MUL_8_mult_17_n612,
         MUL_8_mult_17_n611, MUL_8_mult_17_n610, MUL_8_mult_17_n609,
         MUL_8_mult_17_n608, MUL_8_mult_17_n607, MUL_8_mult_17_n606,
         MUL_8_mult_17_n605, MUL_8_mult_17_n604, MUL_8_mult_17_n603,
         MUL_8_mult_17_n602, MUL_8_mult_17_n601, MUL_8_mult_17_n600,
         MUL_8_mult_17_n599, MUL_8_mult_17_n598, MUL_8_mult_17_n597,
         MUL_8_mult_17_n596, MUL_8_mult_17_n595, MUL_8_mult_17_n594,
         MUL_8_mult_17_n593, MUL_8_mult_17_n592, MUL_8_mult_17_n591,
         MUL_8_mult_17_n590, MUL_8_mult_17_n589, MUL_8_mult_17_n588,
         MUL_8_mult_17_n587, MUL_8_mult_17_n586, MUL_8_mult_17_n585,
         MUL_8_mult_17_n584, MUL_8_mult_17_n583, MUL_8_mult_17_n582,
         MUL_8_mult_17_n581, MUL_8_mult_17_n580, MUL_8_mult_17_n579,
         MUL_8_mult_17_n578, MUL_8_mult_17_n577, MUL_8_mult_17_n576,
         MUL_8_mult_17_n575, MUL_8_mult_17_n574, MUL_8_mult_17_n573,
         MUL_8_mult_17_n572, MUL_8_mult_17_n571, MUL_8_mult_17_n570,
         MUL_8_mult_17_n569, MUL_8_mult_17_n568, MUL_8_mult_17_n567,
         MUL_8_mult_17_n566, MUL_8_mult_17_n565, MUL_8_mult_17_n564,
         MUL_8_mult_17_n563, MUL_8_mult_17_n562, MUL_8_mult_17_n561,
         MUL_8_mult_17_n560, MUL_8_mult_17_n559, MUL_8_mult_17_n558,
         MUL_8_mult_17_n557, MUL_8_mult_17_n556, MUL_8_mult_17_n555,
         MUL_8_mult_17_n554, MUL_8_mult_17_n553, MUL_8_mult_17_n552,
         MUL_8_mult_17_n551, MUL_8_mult_17_n550, MUL_8_mult_17_n549,
         MUL_8_mult_17_n548, MUL_8_mult_17_n547, MUL_8_mult_17_n546,
         MUL_8_mult_17_n545, MUL_8_mult_17_n544, MUL_8_mult_17_n543,
         MUL_8_mult_17_n542, MUL_8_mult_17_n541, MUL_8_mult_17_n540,
         MUL_8_mult_17_n539, MUL_8_mult_17_n538, MUL_8_mult_17_n537,
         MUL_8_mult_17_n536, MUL_8_mult_17_n535, MUL_8_mult_17_n534,
         MUL_8_mult_17_n533, MUL_8_mult_17_n532, MUL_8_mult_17_n531,
         MUL_8_mult_17_n530, MUL_8_mult_17_n529, MUL_8_mult_17_n528,
         MUL_8_mult_17_n527, MUL_8_mult_17_n526, MUL_8_mult_17_n525,
         MUL_8_mult_17_n524, MUL_8_mult_17_n523, MUL_8_mult_17_n522,
         MUL_8_mult_17_n521, MUL_8_mult_17_n520, MUL_8_mult_17_n519,
         MUL_8_mult_17_n518, MUL_8_mult_17_n517, MUL_8_mult_17_n516,
         MUL_8_mult_17_n515, MUL_8_mult_17_n514, MUL_8_mult_17_n513,
         MUL_8_mult_17_n512, MUL_8_mult_17_n511, MUL_8_mult_17_n510,
         MUL_8_mult_17_n509, MUL_8_mult_17_n508, MUL_8_mult_17_n507,
         MUL_8_mult_17_n506, MUL_8_mult_17_product_17_,
         MUL_8_mult_17_product_16_, MUL_8_mult_17_product_15_,
         MUL_8_mult_17_product_14_, MUL_8_mult_17_product_13_,
         MUL_8_mult_17_product_12_, MUL_8_mult_17_product_11_,
         MUL_8_mult_17_product_10_, MUL_8_mult_17_product_9_,
         MUL_8_mult_17_product_8_, MUL_8_mult_17_product_7_,
         MUL_8_mult_17_product_6_, MUL_8_mult_17_product_5_,
         MUL_8_mult_17_product_4_, MUL_8_mult_17_product_3_,
         MUL_8_mult_17_product_2_, MUL_8_mult_17_product_1_,
         MUL_8_mult_17_n288, MUL_8_mult_17_n287, MUL_8_mult_17_n286,
         MUL_8_mult_17_n285, MUL_8_mult_17_n284, MUL_8_mult_17_n283,
         MUL_8_mult_17_n282, MUL_8_mult_17_n281, MUL_8_mult_17_n280,
         MUL_8_mult_17_n279, MUL_8_mult_17_n276, MUL_8_mult_17_n275,
         MUL_8_mult_17_n274, MUL_8_mult_17_n273, MUL_8_mult_17_n272,
         MUL_8_mult_17_n271, MUL_8_mult_17_n270, MUL_8_mult_17_n269,
         MUL_8_mult_17_n268, MUL_8_mult_17_n267, MUL_8_mult_17_n266,
         MUL_8_mult_17_n264, MUL_8_mult_17_n263, MUL_8_mult_17_n262,
         MUL_8_mult_17_n261, MUL_8_mult_17_n260, MUL_8_mult_17_n259,
         MUL_8_mult_17_n258, MUL_8_mult_17_n257, MUL_8_mult_17_n256,
         MUL_8_mult_17_n255, MUL_8_mult_17_n254, MUL_8_mult_17_n253,
         MUL_8_mult_17_n251, MUL_8_mult_17_n250, MUL_8_mult_17_n249,
         MUL_8_mult_17_n248, MUL_8_mult_17_n247, MUL_8_mult_17_n246,
         MUL_8_mult_17_n245, MUL_8_mult_17_n244, MUL_8_mult_17_n243,
         MUL_8_mult_17_n242, MUL_8_mult_17_n241, MUL_8_mult_17_n240,
         MUL_8_mult_17_n238, MUL_8_mult_17_n237, MUL_8_mult_17_n236,
         MUL_8_mult_17_n235, MUL_8_mult_17_n234, MUL_8_mult_17_n233,
         MUL_8_mult_17_n232, MUL_8_mult_17_n231, MUL_8_mult_17_n230,
         MUL_8_mult_17_n229, MUL_8_mult_17_n228, MUL_8_mult_17_n227,
         MUL_8_mult_17_n225, MUL_8_mult_17_n224, MUL_8_mult_17_n223,
         MUL_8_mult_17_n221, MUL_8_mult_17_n220, MUL_8_mult_17_n219,
         MUL_8_mult_17_n218, MUL_8_mult_17_n217, MUL_8_mult_17_n216,
         MUL_8_mult_17_n215, MUL_8_mult_17_n214, MUL_8_mult_17_n212,
         MUL_8_mult_17_n210, MUL_8_mult_17_n209, MUL_8_mult_17_n208,
         MUL_8_mult_17_n207, MUL_8_mult_17_n206, MUL_8_mult_17_n205,
         MUL_8_mult_17_n204, MUL_8_mult_17_n203, MUL_8_mult_17_n202,
         MUL_8_mult_17_n201, MUL_8_mult_17_n197, MUL_8_mult_17_n196,
         MUL_8_mult_17_n195, MUL_8_mult_17_n194, MUL_8_mult_17_n193,
         MUL_8_mult_17_n171, MUL_8_mult_17_n170, MUL_8_mult_17_n169,
         MUL_8_mult_17_n168, MUL_8_mult_17_n167, MUL_8_mult_17_n166,
         MUL_8_mult_17_n165, MUL_8_mult_17_n164, MUL_8_mult_17_n163,
         MUL_8_mult_17_n162, MUL_8_mult_17_n161, MUL_8_mult_17_n160,
         MUL_8_mult_17_n159, MUL_8_mult_17_n158, MUL_8_mult_17_n157,
         MUL_8_mult_17_n156, MUL_8_mult_17_n155, MUL_8_mult_17_n154,
         MUL_8_mult_17_n153, MUL_8_mult_17_n152, MUL_8_mult_17_n151,
         MUL_8_mult_17_n150, MUL_8_mult_17_n149, MUL_8_mult_17_n148,
         MUL_8_mult_17_n147, MUL_8_mult_17_n146, MUL_8_mult_17_n145,
         MUL_8_mult_17_n144, MUL_8_mult_17_n143, MUL_8_mult_17_n142,
         MUL_8_mult_17_n141, MUL_8_mult_17_n140, MUL_8_mult_17_n139,
         MUL_8_mult_17_n138, MUL_8_mult_17_n137, MUL_8_mult_17_n136,
         MUL_8_mult_17_n135, MUL_8_mult_17_n134, MUL_8_mult_17_n133,
         MUL_8_mult_17_n132, MUL_8_mult_17_n131, MUL_8_mult_17_n130,
         MUL_8_mult_17_n129, MUL_8_mult_17_n128, MUL_8_mult_17_n127,
         MUL_8_mult_17_n126, MUL_8_mult_17_n125, MUL_8_mult_17_n124,
         MUL_8_mult_17_n123, MUL_8_mult_17_n122, MUL_8_mult_17_n121,
         MUL_8_mult_17_n120, MUL_8_mult_17_n119, MUL_8_mult_17_n118,
         MUL_8_mult_17_n117, MUL_8_mult_17_n116, MUL_8_mult_17_n115,
         MUL_8_mult_17_n114, MUL_8_mult_17_n113, MUL_8_mult_17_n112,
         MUL_8_mult_17_n111, MUL_8_mult_17_n110, MUL_8_mult_17_n109,
         MUL_8_mult_17_n108, MUL_8_mult_17_n107, MUL_8_mult_17_n106,
         MUL_8_mult_17_n105, MUL_8_mult_17_n104, MUL_8_mult_17_n103,
         MUL_8_mult_17_n102, MUL_8_mult_17_n101, MUL_8_mult_17_n100,
         MUL_8_mult_17_n98, MUL_8_mult_17_n97, MUL_8_mult_17_n96,
         MUL_8_mult_17_n95, MUL_8_mult_17_n94, MUL_8_mult_17_n93,
         MUL_8_mult_17_n92, MUL_8_mult_17_n91, MUL_8_mult_17_n90,
         MUL_8_mult_17_n89, MUL_8_mult_17_n88, MUL_8_mult_17_n87,
         MUL_8_mult_17_n86, MUL_8_mult_17_n85, MUL_8_mult_17_n84,
         MUL_8_mult_17_n83, MUL_8_mult_17_n82, MUL_8_mult_17_n81,
         MUL_8_mult_17_n80, MUL_8_mult_17_n79, MUL_8_mult_17_n78,
         MUL_8_mult_17_n76, MUL_8_mult_17_n75, MUL_8_mult_17_n74,
         MUL_8_mult_17_n73, MUL_8_mult_17_n72, MUL_8_mult_17_n71,
         MUL_8_mult_17_n70, MUL_8_mult_17_n69, MUL_8_mult_17_n68,
         MUL_8_mult_17_n67, MUL_8_mult_17_n66, MUL_8_mult_17_n65,
         MUL_8_mult_17_n64, MUL_8_mult_17_n63, MUL_8_mult_17_n62,
         MUL_8_mult_17_n61, MUL_8_mult_17_n60, MUL_8_mult_17_n58,
         MUL_8_mult_17_n57, MUL_8_mult_17_n56, MUL_8_mult_17_n55,
         MUL_8_mult_17_n54, MUL_8_mult_17_n53, MUL_8_mult_17_n52,
         MUL_8_mult_17_n51, MUL_8_mult_17_n50, MUL_8_mult_17_n49,
         MUL_8_mult_17_n48, MUL_8_mult_17_n47, MUL_8_mult_17_n46,
         MUL_8_mult_17_n44, MUL_8_mult_17_n43, MUL_8_mult_17_n42,
         MUL_8_mult_17_n41, MUL_8_mult_17_n40, MUL_8_mult_17_n39,
         MUL_8_mult_17_n38, MUL_8_mult_17_n37, MUL_8_mult_17_n36,
         MUL_8_mult_17_n34, MUL_8_mult_17_n33, MUL_8_mult_17_n32,
         MUL_8_mult_17_n31, MUL_8_mult_17_n30, MUL_8_mult_17_n29,
         MUL_8_mult_17_n10, MUL_8_mult_17_n9, MUL_8_mult_17_n8,
         MUL_8_mult_17_n7, MUL_8_mult_17_n6, MUL_8_mult_17_n5,
         MUL_8_mult_17_n4, ADD_8_add_18_n1, SAMPLE_REG_9_n82, SAMPLE_REG_9_n81,
         SAMPLE_REG_9_n80, SAMPLE_REG_9_n79, SAMPLE_REG_9_n78,
         SAMPLE_REG_9_n77, SAMPLE_REG_9_n76, SAMPLE_REG_9_n75,
         SAMPLE_REG_9_n74, SAMPLE_REG_9_n73, SAMPLE_REG_9_n72,
         SAMPLE_REG_9_n71, SAMPLE_REG_9_n70, SAMPLE_REG_9_n69,
         SAMPLE_REG_9_n68, SAMPLE_REG_9_n67, SAMPLE_REG_9_n66,
         SAMPLE_REG_9_n65, SAMPLE_REG_9_n64, SAMPLE_REG_9_n63,
         SAMPLE_REG_9_n62, SAMPLE_REG_9_n61, SAMPLE_REG_9_n60,
         SAMPLE_REG_9_n59, SAMPLE_REG_9_n58, SAMPLE_REG_9_n57,
         SAMPLE_REG_9_n56, SAMPLE_REG_9_n55, SAMPLE_REG_9_n54,
         SAMPLE_REG_9_n53, SAMPLE_REG_9_n52, SAMPLE_REG_9_n51,
         SAMPLE_REG_9_n50, SAMPLE_REG_9_n49, SAMPLE_REG_9_n48,
         SAMPLE_REG_9_n47, SAMPLE_REG_9_n46, SAMPLE_REG_9_n45,
         SAMPLE_REG_9_n44, SAMPLE_REG_9_n43, SAMPLE_REG_9_n42,
         SAMPLE_REG_9_n41, SAMPLE_REG_9_n40, MUL_9_O_0_, MUL_9_mult_17_n683,
         MUL_9_mult_17_n682, MUL_9_mult_17_n681, MUL_9_mult_17_n680,
         MUL_9_mult_17_n679, MUL_9_mult_17_n678, MUL_9_mult_17_n677,
         MUL_9_mult_17_n676, MUL_9_mult_17_n675, MUL_9_mult_17_n674,
         MUL_9_mult_17_n673, MUL_9_mult_17_n672, MUL_9_mult_17_n671,
         MUL_9_mult_17_n670, MUL_9_mult_17_n669, MUL_9_mult_17_n668,
         MUL_9_mult_17_n667, MUL_9_mult_17_n666, MUL_9_mult_17_n665,
         MUL_9_mult_17_n664, MUL_9_mult_17_n663, MUL_9_mult_17_n662,
         MUL_9_mult_17_n661, MUL_9_mult_17_n660, MUL_9_mult_17_n659,
         MUL_9_mult_17_n658, MUL_9_mult_17_n657, MUL_9_mult_17_n656,
         MUL_9_mult_17_n655, MUL_9_mult_17_n654, MUL_9_mult_17_n653,
         MUL_9_mult_17_n652, MUL_9_mult_17_n651, MUL_9_mult_17_n650,
         MUL_9_mult_17_n649, MUL_9_mult_17_n648, MUL_9_mult_17_n647,
         MUL_9_mult_17_n646, MUL_9_mult_17_n645, MUL_9_mult_17_n644,
         MUL_9_mult_17_n643, MUL_9_mult_17_n642, MUL_9_mult_17_n641,
         MUL_9_mult_17_n640, MUL_9_mult_17_n639, MUL_9_mult_17_n638,
         MUL_9_mult_17_n637, MUL_9_mult_17_n636, MUL_9_mult_17_n635,
         MUL_9_mult_17_n634, MUL_9_mult_17_n633, MUL_9_mult_17_n632,
         MUL_9_mult_17_n631, MUL_9_mult_17_n630, MUL_9_mult_17_n629,
         MUL_9_mult_17_n628, MUL_9_mult_17_n627, MUL_9_mult_17_n626,
         MUL_9_mult_17_n625, MUL_9_mult_17_n624, MUL_9_mult_17_n623,
         MUL_9_mult_17_n622, MUL_9_mult_17_n621, MUL_9_mult_17_n620,
         MUL_9_mult_17_n619, MUL_9_mult_17_n618, MUL_9_mult_17_n617,
         MUL_9_mult_17_n616, MUL_9_mult_17_n615, MUL_9_mult_17_n614,
         MUL_9_mult_17_n613, MUL_9_mult_17_n612, MUL_9_mult_17_n611,
         MUL_9_mult_17_n610, MUL_9_mult_17_n609, MUL_9_mult_17_n608,
         MUL_9_mult_17_n607, MUL_9_mult_17_n606, MUL_9_mult_17_n605,
         MUL_9_mult_17_n604, MUL_9_mult_17_n603, MUL_9_mult_17_n602,
         MUL_9_mult_17_n601, MUL_9_mult_17_n600, MUL_9_mult_17_n599,
         MUL_9_mult_17_n598, MUL_9_mult_17_n597, MUL_9_mult_17_n596,
         MUL_9_mult_17_n595, MUL_9_mult_17_n594, MUL_9_mult_17_n593,
         MUL_9_mult_17_n592, MUL_9_mult_17_n591, MUL_9_mult_17_n590,
         MUL_9_mult_17_n589, MUL_9_mult_17_n588, MUL_9_mult_17_n587,
         MUL_9_mult_17_n586, MUL_9_mult_17_n585, MUL_9_mult_17_n584,
         MUL_9_mult_17_n583, MUL_9_mult_17_n582, MUL_9_mult_17_n581,
         MUL_9_mult_17_n580, MUL_9_mult_17_n579, MUL_9_mult_17_n578,
         MUL_9_mult_17_n577, MUL_9_mult_17_n576, MUL_9_mult_17_n575,
         MUL_9_mult_17_n574, MUL_9_mult_17_n573, MUL_9_mult_17_n572,
         MUL_9_mult_17_n571, MUL_9_mult_17_n570, MUL_9_mult_17_n569,
         MUL_9_mult_17_n568, MUL_9_mult_17_n567, MUL_9_mult_17_n566,
         MUL_9_mult_17_n565, MUL_9_mult_17_n564, MUL_9_mult_17_n563,
         MUL_9_mult_17_n562, MUL_9_mult_17_n561, MUL_9_mult_17_n560,
         MUL_9_mult_17_n559, MUL_9_mult_17_n558, MUL_9_mult_17_n557,
         MUL_9_mult_17_n556, MUL_9_mult_17_n555, MUL_9_mult_17_n554,
         MUL_9_mult_17_n553, MUL_9_mult_17_n552, MUL_9_mult_17_n551,
         MUL_9_mult_17_n550, MUL_9_mult_17_n549, MUL_9_mult_17_n548,
         MUL_9_mult_17_n547, MUL_9_mult_17_n546, MUL_9_mult_17_n545,
         MUL_9_mult_17_n544, MUL_9_mult_17_n543, MUL_9_mult_17_n542,
         MUL_9_mult_17_n541, MUL_9_mult_17_n540, MUL_9_mult_17_n539,
         MUL_9_mult_17_n538, MUL_9_mult_17_n537, MUL_9_mult_17_n536,
         MUL_9_mult_17_n535, MUL_9_mult_17_n534, MUL_9_mult_17_n533,
         MUL_9_mult_17_n532, MUL_9_mult_17_n531, MUL_9_mult_17_n530,
         MUL_9_mult_17_n529, MUL_9_mult_17_n528, MUL_9_mult_17_n527,
         MUL_9_mult_17_n526, MUL_9_mult_17_n525, MUL_9_mult_17_n524,
         MUL_9_mult_17_n523, MUL_9_mult_17_n522, MUL_9_mult_17_n521,
         MUL_9_mult_17_n520, MUL_9_mult_17_n519, MUL_9_mult_17_n518,
         MUL_9_mult_17_n517, MUL_9_mult_17_n516, MUL_9_mult_17_n515,
         MUL_9_mult_17_n514, MUL_9_mult_17_n513, MUL_9_mult_17_n512,
         MUL_9_mult_17_n511, MUL_9_mult_17_n510, MUL_9_mult_17_n509,
         MUL_9_mult_17_n508, MUL_9_mult_17_n507, MUL_9_mult_17_n506,
         MUL_9_mult_17_product_17_, MUL_9_mult_17_product_16_,
         MUL_9_mult_17_product_15_, MUL_9_mult_17_product_14_,
         MUL_9_mult_17_product_13_, MUL_9_mult_17_product_12_,
         MUL_9_mult_17_product_11_, MUL_9_mult_17_product_10_,
         MUL_9_mult_17_product_9_, MUL_9_mult_17_product_8_,
         MUL_9_mult_17_product_7_, MUL_9_mult_17_product_6_,
         MUL_9_mult_17_product_5_, MUL_9_mult_17_product_4_,
         MUL_9_mult_17_product_3_, MUL_9_mult_17_product_2_,
         MUL_9_mult_17_product_1_, MUL_9_mult_17_n288, MUL_9_mult_17_n287,
         MUL_9_mult_17_n286, MUL_9_mult_17_n285, MUL_9_mult_17_n284,
         MUL_9_mult_17_n283, MUL_9_mult_17_n282, MUL_9_mult_17_n281,
         MUL_9_mult_17_n280, MUL_9_mult_17_n279, MUL_9_mult_17_n276,
         MUL_9_mult_17_n275, MUL_9_mult_17_n274, MUL_9_mult_17_n273,
         MUL_9_mult_17_n272, MUL_9_mult_17_n271, MUL_9_mult_17_n270,
         MUL_9_mult_17_n269, MUL_9_mult_17_n268, MUL_9_mult_17_n267,
         MUL_9_mult_17_n266, MUL_9_mult_17_n264, MUL_9_mult_17_n263,
         MUL_9_mult_17_n262, MUL_9_mult_17_n261, MUL_9_mult_17_n260,
         MUL_9_mult_17_n259, MUL_9_mult_17_n258, MUL_9_mult_17_n257,
         MUL_9_mult_17_n256, MUL_9_mult_17_n255, MUL_9_mult_17_n254,
         MUL_9_mult_17_n253, MUL_9_mult_17_n251, MUL_9_mult_17_n250,
         MUL_9_mult_17_n249, MUL_9_mult_17_n248, MUL_9_mult_17_n247,
         MUL_9_mult_17_n246, MUL_9_mult_17_n245, MUL_9_mult_17_n244,
         MUL_9_mult_17_n243, MUL_9_mult_17_n242, MUL_9_mult_17_n241,
         MUL_9_mult_17_n240, MUL_9_mult_17_n238, MUL_9_mult_17_n237,
         MUL_9_mult_17_n236, MUL_9_mult_17_n235, MUL_9_mult_17_n234,
         MUL_9_mult_17_n233, MUL_9_mult_17_n232, MUL_9_mult_17_n231,
         MUL_9_mult_17_n230, MUL_9_mult_17_n229, MUL_9_mult_17_n228,
         MUL_9_mult_17_n227, MUL_9_mult_17_n225, MUL_9_mult_17_n224,
         MUL_9_mult_17_n223, MUL_9_mult_17_n221, MUL_9_mult_17_n220,
         MUL_9_mult_17_n219, MUL_9_mult_17_n218, MUL_9_mult_17_n217,
         MUL_9_mult_17_n216, MUL_9_mult_17_n215, MUL_9_mult_17_n214,
         MUL_9_mult_17_n212, MUL_9_mult_17_n210, MUL_9_mult_17_n209,
         MUL_9_mult_17_n208, MUL_9_mult_17_n207, MUL_9_mult_17_n206,
         MUL_9_mult_17_n205, MUL_9_mult_17_n204, MUL_9_mult_17_n203,
         MUL_9_mult_17_n202, MUL_9_mult_17_n201, MUL_9_mult_17_n197,
         MUL_9_mult_17_n196, MUL_9_mult_17_n195, MUL_9_mult_17_n194,
         MUL_9_mult_17_n193, MUL_9_mult_17_n171, MUL_9_mult_17_n170,
         MUL_9_mult_17_n169, MUL_9_mult_17_n168, MUL_9_mult_17_n167,
         MUL_9_mult_17_n166, MUL_9_mult_17_n165, MUL_9_mult_17_n164,
         MUL_9_mult_17_n163, MUL_9_mult_17_n162, MUL_9_mult_17_n161,
         MUL_9_mult_17_n160, MUL_9_mult_17_n159, MUL_9_mult_17_n158,
         MUL_9_mult_17_n157, MUL_9_mult_17_n156, MUL_9_mult_17_n155,
         MUL_9_mult_17_n154, MUL_9_mult_17_n153, MUL_9_mult_17_n152,
         MUL_9_mult_17_n151, MUL_9_mult_17_n150, MUL_9_mult_17_n149,
         MUL_9_mult_17_n148, MUL_9_mult_17_n147, MUL_9_mult_17_n146,
         MUL_9_mult_17_n145, MUL_9_mult_17_n144, MUL_9_mult_17_n143,
         MUL_9_mult_17_n142, MUL_9_mult_17_n141, MUL_9_mult_17_n140,
         MUL_9_mult_17_n139, MUL_9_mult_17_n138, MUL_9_mult_17_n137,
         MUL_9_mult_17_n136, MUL_9_mult_17_n135, MUL_9_mult_17_n134,
         MUL_9_mult_17_n133, MUL_9_mult_17_n132, MUL_9_mult_17_n131,
         MUL_9_mult_17_n130, MUL_9_mult_17_n129, MUL_9_mult_17_n128,
         MUL_9_mult_17_n127, MUL_9_mult_17_n126, MUL_9_mult_17_n125,
         MUL_9_mult_17_n124, MUL_9_mult_17_n123, MUL_9_mult_17_n122,
         MUL_9_mult_17_n121, MUL_9_mult_17_n120, MUL_9_mult_17_n119,
         MUL_9_mult_17_n118, MUL_9_mult_17_n117, MUL_9_mult_17_n116,
         MUL_9_mult_17_n115, MUL_9_mult_17_n114, MUL_9_mult_17_n113,
         MUL_9_mult_17_n112, MUL_9_mult_17_n111, MUL_9_mult_17_n110,
         MUL_9_mult_17_n109, MUL_9_mult_17_n108, MUL_9_mult_17_n107,
         MUL_9_mult_17_n106, MUL_9_mult_17_n105, MUL_9_mult_17_n104,
         MUL_9_mult_17_n103, MUL_9_mult_17_n102, MUL_9_mult_17_n101,
         MUL_9_mult_17_n100, MUL_9_mult_17_n98, MUL_9_mult_17_n97,
         MUL_9_mult_17_n96, MUL_9_mult_17_n95, MUL_9_mult_17_n94,
         MUL_9_mult_17_n93, MUL_9_mult_17_n92, MUL_9_mult_17_n91,
         MUL_9_mult_17_n90, MUL_9_mult_17_n89, MUL_9_mult_17_n88,
         MUL_9_mult_17_n87, MUL_9_mult_17_n86, MUL_9_mult_17_n85,
         MUL_9_mult_17_n84, MUL_9_mult_17_n83, MUL_9_mult_17_n82,
         MUL_9_mult_17_n81, MUL_9_mult_17_n80, MUL_9_mult_17_n79,
         MUL_9_mult_17_n78, MUL_9_mult_17_n76, MUL_9_mult_17_n75,
         MUL_9_mult_17_n74, MUL_9_mult_17_n73, MUL_9_mult_17_n72,
         MUL_9_mult_17_n71, MUL_9_mult_17_n70, MUL_9_mult_17_n69,
         MUL_9_mult_17_n68, MUL_9_mult_17_n67, MUL_9_mult_17_n66,
         MUL_9_mult_17_n65, MUL_9_mult_17_n64, MUL_9_mult_17_n63,
         MUL_9_mult_17_n62, MUL_9_mult_17_n61, MUL_9_mult_17_n60,
         MUL_9_mult_17_n58, MUL_9_mult_17_n57, MUL_9_mult_17_n56,
         MUL_9_mult_17_n55, MUL_9_mult_17_n54, MUL_9_mult_17_n53,
         MUL_9_mult_17_n52, MUL_9_mult_17_n51, MUL_9_mult_17_n50,
         MUL_9_mult_17_n49, MUL_9_mult_17_n48, MUL_9_mult_17_n47,
         MUL_9_mult_17_n46, MUL_9_mult_17_n44, MUL_9_mult_17_n43,
         MUL_9_mult_17_n42, MUL_9_mult_17_n41, MUL_9_mult_17_n40,
         MUL_9_mult_17_n39, MUL_9_mult_17_n38, MUL_9_mult_17_n37,
         MUL_9_mult_17_n36, MUL_9_mult_17_n34, MUL_9_mult_17_n33,
         MUL_9_mult_17_n32, MUL_9_mult_17_n31, MUL_9_mult_17_n30,
         MUL_9_mult_17_n29, MUL_9_mult_17_n10, MUL_9_mult_17_n9,
         MUL_9_mult_17_n8, MUL_9_mult_17_n7, MUL_9_mult_17_n6,
         MUL_9_mult_17_n5, MUL_9_mult_17_n4, ADD_9_add_18_n1,
         SAMPLE_REG_10_n82, SAMPLE_REG_10_n81, SAMPLE_REG_10_n80,
         SAMPLE_REG_10_n79, SAMPLE_REG_10_n78, SAMPLE_REG_10_n77,
         SAMPLE_REG_10_n76, SAMPLE_REG_10_n75, SAMPLE_REG_10_n74,
         SAMPLE_REG_10_n73, SAMPLE_REG_10_n72, SAMPLE_REG_10_n71,
         SAMPLE_REG_10_n70, SAMPLE_REG_10_n69, SAMPLE_REG_10_n68,
         SAMPLE_REG_10_n67, SAMPLE_REG_10_n66, SAMPLE_REG_10_n65,
         SAMPLE_REG_10_n64, SAMPLE_REG_10_n63, SAMPLE_REG_10_n62,
         SAMPLE_REG_10_n61, SAMPLE_REG_10_n60, SAMPLE_REG_10_n59,
         SAMPLE_REG_10_n58, SAMPLE_REG_10_n57, SAMPLE_REG_10_n56,
         SAMPLE_REG_10_n55, SAMPLE_REG_10_n54, SAMPLE_REG_10_n53,
         SAMPLE_REG_10_n52, SAMPLE_REG_10_n51, SAMPLE_REG_10_n50,
         SAMPLE_REG_10_n49, SAMPLE_REG_10_n48, SAMPLE_REG_10_n47,
         SAMPLE_REG_10_n46, SAMPLE_REG_10_n45, SAMPLE_REG_10_n44,
         SAMPLE_REG_10_n43, SAMPLE_REG_10_n42, SAMPLE_REG_10_n41,
         SAMPLE_REG_10_n40, MUL_10_O_0_, MUL_10_mult_17_n683,
         MUL_10_mult_17_n682, MUL_10_mult_17_n681, MUL_10_mult_17_n680,
         MUL_10_mult_17_n679, MUL_10_mult_17_n678, MUL_10_mult_17_n677,
         MUL_10_mult_17_n676, MUL_10_mult_17_n675, MUL_10_mult_17_n674,
         MUL_10_mult_17_n673, MUL_10_mult_17_n672, MUL_10_mult_17_n671,
         MUL_10_mult_17_n670, MUL_10_mult_17_n669, MUL_10_mult_17_n668,
         MUL_10_mult_17_n667, MUL_10_mult_17_n666, MUL_10_mult_17_n665,
         MUL_10_mult_17_n664, MUL_10_mult_17_n663, MUL_10_mult_17_n662,
         MUL_10_mult_17_n661, MUL_10_mult_17_n660, MUL_10_mult_17_n659,
         MUL_10_mult_17_n658, MUL_10_mult_17_n657, MUL_10_mult_17_n656,
         MUL_10_mult_17_n655, MUL_10_mult_17_n654, MUL_10_mult_17_n653,
         MUL_10_mult_17_n652, MUL_10_mult_17_n651, MUL_10_mult_17_n650,
         MUL_10_mult_17_n649, MUL_10_mult_17_n648, MUL_10_mult_17_n647,
         MUL_10_mult_17_n646, MUL_10_mult_17_n645, MUL_10_mult_17_n644,
         MUL_10_mult_17_n643, MUL_10_mult_17_n642, MUL_10_mult_17_n641,
         MUL_10_mult_17_n640, MUL_10_mult_17_n639, MUL_10_mult_17_n638,
         MUL_10_mult_17_n637, MUL_10_mult_17_n636, MUL_10_mult_17_n635,
         MUL_10_mult_17_n634, MUL_10_mult_17_n633, MUL_10_mult_17_n632,
         MUL_10_mult_17_n631, MUL_10_mult_17_n630, MUL_10_mult_17_n629,
         MUL_10_mult_17_n628, MUL_10_mult_17_n627, MUL_10_mult_17_n626,
         MUL_10_mult_17_n625, MUL_10_mult_17_n624, MUL_10_mult_17_n623,
         MUL_10_mult_17_n622, MUL_10_mult_17_n621, MUL_10_mult_17_n620,
         MUL_10_mult_17_n619, MUL_10_mult_17_n618, MUL_10_mult_17_n617,
         MUL_10_mult_17_n616, MUL_10_mult_17_n615, MUL_10_mult_17_n614,
         MUL_10_mult_17_n613, MUL_10_mult_17_n612, MUL_10_mult_17_n611,
         MUL_10_mult_17_n610, MUL_10_mult_17_n609, MUL_10_mult_17_n608,
         MUL_10_mult_17_n607, MUL_10_mult_17_n606, MUL_10_mult_17_n605,
         MUL_10_mult_17_n604, MUL_10_mult_17_n603, MUL_10_mult_17_n602,
         MUL_10_mult_17_n601, MUL_10_mult_17_n600, MUL_10_mult_17_n599,
         MUL_10_mult_17_n598, MUL_10_mult_17_n597, MUL_10_mult_17_n596,
         MUL_10_mult_17_n595, MUL_10_mult_17_n594, MUL_10_mult_17_n593,
         MUL_10_mult_17_n592, MUL_10_mult_17_n591, MUL_10_mult_17_n590,
         MUL_10_mult_17_n589, MUL_10_mult_17_n588, MUL_10_mult_17_n587,
         MUL_10_mult_17_n586, MUL_10_mult_17_n585, MUL_10_mult_17_n584,
         MUL_10_mult_17_n583, MUL_10_mult_17_n582, MUL_10_mult_17_n581,
         MUL_10_mult_17_n580, MUL_10_mult_17_n579, MUL_10_mult_17_n578,
         MUL_10_mult_17_n577, MUL_10_mult_17_n576, MUL_10_mult_17_n575,
         MUL_10_mult_17_n574, MUL_10_mult_17_n573, MUL_10_mult_17_n572,
         MUL_10_mult_17_n571, MUL_10_mult_17_n570, MUL_10_mult_17_n569,
         MUL_10_mult_17_n568, MUL_10_mult_17_n567, MUL_10_mult_17_n566,
         MUL_10_mult_17_n565, MUL_10_mult_17_n564, MUL_10_mult_17_n563,
         MUL_10_mult_17_n562, MUL_10_mult_17_n561, MUL_10_mult_17_n560,
         MUL_10_mult_17_n559, MUL_10_mult_17_n558, MUL_10_mult_17_n557,
         MUL_10_mult_17_n556, MUL_10_mult_17_n555, MUL_10_mult_17_n554,
         MUL_10_mult_17_n553, MUL_10_mult_17_n552, MUL_10_mult_17_n551,
         MUL_10_mult_17_n550, MUL_10_mult_17_n549, MUL_10_mult_17_n548,
         MUL_10_mult_17_n547, MUL_10_mult_17_n546, MUL_10_mult_17_n545,
         MUL_10_mult_17_n544, MUL_10_mult_17_n543, MUL_10_mult_17_n542,
         MUL_10_mult_17_n541, MUL_10_mult_17_n540, MUL_10_mult_17_n539,
         MUL_10_mult_17_n538, MUL_10_mult_17_n537, MUL_10_mult_17_n536,
         MUL_10_mult_17_n535, MUL_10_mult_17_n534, MUL_10_mult_17_n533,
         MUL_10_mult_17_n532, MUL_10_mult_17_n531, MUL_10_mult_17_n530,
         MUL_10_mult_17_n529, MUL_10_mult_17_n528, MUL_10_mult_17_n527,
         MUL_10_mult_17_n526, MUL_10_mult_17_n525, MUL_10_mult_17_n524,
         MUL_10_mult_17_n523, MUL_10_mult_17_n522, MUL_10_mult_17_n521,
         MUL_10_mult_17_n520, MUL_10_mult_17_n519, MUL_10_mult_17_n518,
         MUL_10_mult_17_n517, MUL_10_mult_17_n516, MUL_10_mult_17_n515,
         MUL_10_mult_17_n514, MUL_10_mult_17_n513, MUL_10_mult_17_n512,
         MUL_10_mult_17_n511, MUL_10_mult_17_n510, MUL_10_mult_17_n509,
         MUL_10_mult_17_n508, MUL_10_mult_17_n507, MUL_10_mult_17_n506,
         MUL_10_mult_17_product_17_, MUL_10_mult_17_product_16_,
         MUL_10_mult_17_product_15_, MUL_10_mult_17_product_14_,
         MUL_10_mult_17_product_13_, MUL_10_mult_17_product_12_,
         MUL_10_mult_17_product_11_, MUL_10_mult_17_product_10_,
         MUL_10_mult_17_product_9_, MUL_10_mult_17_product_8_,
         MUL_10_mult_17_product_7_, MUL_10_mult_17_product_6_,
         MUL_10_mult_17_product_5_, MUL_10_mult_17_product_4_,
         MUL_10_mult_17_product_3_, MUL_10_mult_17_product_2_,
         MUL_10_mult_17_product_1_, MUL_10_mult_17_n288, MUL_10_mult_17_n287,
         MUL_10_mult_17_n286, MUL_10_mult_17_n285, MUL_10_mult_17_n284,
         MUL_10_mult_17_n283, MUL_10_mult_17_n282, MUL_10_mult_17_n281,
         MUL_10_mult_17_n280, MUL_10_mult_17_n279, MUL_10_mult_17_n276,
         MUL_10_mult_17_n275, MUL_10_mult_17_n274, MUL_10_mult_17_n273,
         MUL_10_mult_17_n272, MUL_10_mult_17_n271, MUL_10_mult_17_n270,
         MUL_10_mult_17_n269, MUL_10_mult_17_n268, MUL_10_mult_17_n267,
         MUL_10_mult_17_n266, MUL_10_mult_17_n264, MUL_10_mult_17_n263,
         MUL_10_mult_17_n262, MUL_10_mult_17_n261, MUL_10_mult_17_n260,
         MUL_10_mult_17_n259, MUL_10_mult_17_n258, MUL_10_mult_17_n257,
         MUL_10_mult_17_n256, MUL_10_mult_17_n255, MUL_10_mult_17_n254,
         MUL_10_mult_17_n253, MUL_10_mult_17_n251, MUL_10_mult_17_n250,
         MUL_10_mult_17_n249, MUL_10_mult_17_n248, MUL_10_mult_17_n247,
         MUL_10_mult_17_n246, MUL_10_mult_17_n245, MUL_10_mult_17_n244,
         MUL_10_mult_17_n243, MUL_10_mult_17_n242, MUL_10_mult_17_n241,
         MUL_10_mult_17_n240, MUL_10_mult_17_n238, MUL_10_mult_17_n237,
         MUL_10_mult_17_n236, MUL_10_mult_17_n235, MUL_10_mult_17_n234,
         MUL_10_mult_17_n233, MUL_10_mult_17_n232, MUL_10_mult_17_n231,
         MUL_10_mult_17_n230, MUL_10_mult_17_n229, MUL_10_mult_17_n228,
         MUL_10_mult_17_n227, MUL_10_mult_17_n225, MUL_10_mult_17_n224,
         MUL_10_mult_17_n223, MUL_10_mult_17_n221, MUL_10_mult_17_n220,
         MUL_10_mult_17_n219, MUL_10_mult_17_n218, MUL_10_mult_17_n217,
         MUL_10_mult_17_n216, MUL_10_mult_17_n215, MUL_10_mult_17_n214,
         MUL_10_mult_17_n212, MUL_10_mult_17_n210, MUL_10_mult_17_n209,
         MUL_10_mult_17_n208, MUL_10_mult_17_n207, MUL_10_mult_17_n206,
         MUL_10_mult_17_n205, MUL_10_mult_17_n204, MUL_10_mult_17_n203,
         MUL_10_mult_17_n202, MUL_10_mult_17_n201, MUL_10_mult_17_n197,
         MUL_10_mult_17_n196, MUL_10_mult_17_n195, MUL_10_mult_17_n194,
         MUL_10_mult_17_n193, MUL_10_mult_17_n171, MUL_10_mult_17_n170,
         MUL_10_mult_17_n169, MUL_10_mult_17_n168, MUL_10_mult_17_n167,
         MUL_10_mult_17_n166, MUL_10_mult_17_n165, MUL_10_mult_17_n164,
         MUL_10_mult_17_n163, MUL_10_mult_17_n162, MUL_10_mult_17_n161,
         MUL_10_mult_17_n160, MUL_10_mult_17_n159, MUL_10_mult_17_n158,
         MUL_10_mult_17_n157, MUL_10_mult_17_n156, MUL_10_mult_17_n155,
         MUL_10_mult_17_n154, MUL_10_mult_17_n153, MUL_10_mult_17_n152,
         MUL_10_mult_17_n151, MUL_10_mult_17_n150, MUL_10_mult_17_n149,
         MUL_10_mult_17_n148, MUL_10_mult_17_n147, MUL_10_mult_17_n146,
         MUL_10_mult_17_n145, MUL_10_mult_17_n144, MUL_10_mult_17_n143,
         MUL_10_mult_17_n142, MUL_10_mult_17_n141, MUL_10_mult_17_n140,
         MUL_10_mult_17_n139, MUL_10_mult_17_n138, MUL_10_mult_17_n137,
         MUL_10_mult_17_n136, MUL_10_mult_17_n135, MUL_10_mult_17_n134,
         MUL_10_mult_17_n133, MUL_10_mult_17_n132, MUL_10_mult_17_n131,
         MUL_10_mult_17_n130, MUL_10_mult_17_n129, MUL_10_mult_17_n128,
         MUL_10_mult_17_n127, MUL_10_mult_17_n126, MUL_10_mult_17_n125,
         MUL_10_mult_17_n124, MUL_10_mult_17_n123, MUL_10_mult_17_n122,
         MUL_10_mult_17_n121, MUL_10_mult_17_n120, MUL_10_mult_17_n119,
         MUL_10_mult_17_n118, MUL_10_mult_17_n117, MUL_10_mult_17_n116,
         MUL_10_mult_17_n115, MUL_10_mult_17_n114, MUL_10_mult_17_n113,
         MUL_10_mult_17_n112, MUL_10_mult_17_n111, MUL_10_mult_17_n110,
         MUL_10_mult_17_n109, MUL_10_mult_17_n108, MUL_10_mult_17_n107,
         MUL_10_mult_17_n106, MUL_10_mult_17_n105, MUL_10_mult_17_n104,
         MUL_10_mult_17_n103, MUL_10_mult_17_n102, MUL_10_mult_17_n101,
         MUL_10_mult_17_n100, MUL_10_mult_17_n98, MUL_10_mult_17_n97,
         MUL_10_mult_17_n96, MUL_10_mult_17_n95, MUL_10_mult_17_n94,
         MUL_10_mult_17_n93, MUL_10_mult_17_n92, MUL_10_mult_17_n91,
         MUL_10_mult_17_n90, MUL_10_mult_17_n89, MUL_10_mult_17_n88,
         MUL_10_mult_17_n87, MUL_10_mult_17_n86, MUL_10_mult_17_n85,
         MUL_10_mult_17_n84, MUL_10_mult_17_n83, MUL_10_mult_17_n82,
         MUL_10_mult_17_n81, MUL_10_mult_17_n80, MUL_10_mult_17_n79,
         MUL_10_mult_17_n78, MUL_10_mult_17_n76, MUL_10_mult_17_n75,
         MUL_10_mult_17_n74, MUL_10_mult_17_n73, MUL_10_mult_17_n72,
         MUL_10_mult_17_n71, MUL_10_mult_17_n70, MUL_10_mult_17_n69,
         MUL_10_mult_17_n68, MUL_10_mult_17_n67, MUL_10_mult_17_n66,
         MUL_10_mult_17_n65, MUL_10_mult_17_n64, MUL_10_mult_17_n63,
         MUL_10_mult_17_n62, MUL_10_mult_17_n61, MUL_10_mult_17_n60,
         MUL_10_mult_17_n58, MUL_10_mult_17_n57, MUL_10_mult_17_n56,
         MUL_10_mult_17_n55, MUL_10_mult_17_n54, MUL_10_mult_17_n53,
         MUL_10_mult_17_n52, MUL_10_mult_17_n51, MUL_10_mult_17_n50,
         MUL_10_mult_17_n49, MUL_10_mult_17_n48, MUL_10_mult_17_n47,
         MUL_10_mult_17_n46, MUL_10_mult_17_n44, MUL_10_mult_17_n43,
         MUL_10_mult_17_n42, MUL_10_mult_17_n41, MUL_10_mult_17_n40,
         MUL_10_mult_17_n39, MUL_10_mult_17_n38, MUL_10_mult_17_n37,
         MUL_10_mult_17_n36, MUL_10_mult_17_n34, MUL_10_mult_17_n33,
         MUL_10_mult_17_n32, MUL_10_mult_17_n31, MUL_10_mult_17_n30,
         MUL_10_mult_17_n29, MUL_10_mult_17_n10, MUL_10_mult_17_n9,
         MUL_10_mult_17_n8, MUL_10_mult_17_n7, MUL_10_mult_17_n6,
         MUL_10_mult_17_n5, MUL_10_mult_17_n4, ADD_10_add_18_n2;
  wire   [142:0] SAMPLES;
  wire   [142:0] A;
  wire   [7:2] ADD_1_add_18_carry;
  wire   [8:2] ADD_2_add_18_carry;
  wire   [8:2] ADD_3_add_18_carry;
  wire   [9:2] ADD_4_add_18_carry;
  wire   [9:2] ADD_5_add_18_carry;
  wire   [9:2] ADD_6_add_18_carry;
  wire   [9:2] ADD_7_add_18_carry;
  wire   [9:2] ADD_8_add_18_carry;
  wire   [10:2] ADD_9_add_18_carry;
  wire   [10:2] ADD_10_add_18_carry;

  DFFR_X1 ENABLE_reg ( .D(VIN), .CK(CLK), .RN(n555), .Q(ENABLE), .QN(n339) );
  DFFR_X1 A_reg_10__1_ ( .D(n509), .CK(CLK), .RN(n555), .Q(A[1]), .QN(n338) );
  DFFR_X1 A_reg_6__4_ ( .D(n508), .CK(CLK), .RN(n555), .Q(A[56]), .QN(n337) );
  DFFR_X1 A_reg_6__3_ ( .D(n507), .CK(CLK), .RN(n555), .Q(A[55]), .QN(n336) );
  DFFR_X1 A_reg_6__2_ ( .D(n506), .CK(CLK), .RN(n555), .Q(A[54]), .QN(n335) );
  DFFR_X1 A_reg_6__1_ ( .D(n505), .CK(CLK), .RN(n555), .Q(A[53]), .QN(n334) );
  DFFR_X1 A_reg_6__0_ ( .D(n504), .CK(CLK), .RN(n555), .Q(A[52]), .QN(n333) );
  DFFR_X1 A_reg_7__12_ ( .D(n503), .CK(CLK), .RN(n555), .Q(A[51]), .QN(n332)
         );
  DFFR_X1 A_reg_7__11_ ( .D(n502), .CK(CLK), .RN(n554), .Q(A[50]), .QN(n331)
         );
  DFFR_X1 A_reg_7__10_ ( .D(n501), .CK(CLK), .RN(n554), .Q(A[49]), .QN(n330)
         );
  DFFR_X1 A_reg_7__9_ ( .D(n500), .CK(CLK), .RN(n554), .Q(A[48]), .QN(n329) );
  DFFR_X1 A_reg_7__8_ ( .D(n499), .CK(CLK), .RN(n554), .Q(A[47]), .QN(n328) );
  DFFR_X1 A_reg_7__7_ ( .D(n498), .CK(CLK), .RN(n554), .Q(A[46]), .QN(n327) );
  DFFR_X1 A_reg_7__6_ ( .D(n497), .CK(CLK), .RN(n554), .Q(A[45]), .QN(n326) );
  DFFR_X1 A_reg_7__5_ ( .D(n496), .CK(CLK), .RN(n554), .Q(A[44]), .QN(n325) );
  DFFR_X1 A_reg_7__4_ ( .D(n495), .CK(CLK), .RN(n554), .Q(A[43]), .QN(n324) );
  DFFR_X1 A_reg_7__3_ ( .D(n494), .CK(CLK), .RN(n554), .Q(A[42]), .QN(n323) );
  DFFR_X1 A_reg_7__2_ ( .D(n493), .CK(CLK), .RN(n554), .Q(A[41]), .QN(n322) );
  DFFR_X1 A_reg_7__1_ ( .D(n492), .CK(CLK), .RN(n554), .Q(A[40]), .QN(n321) );
  DFFR_X1 A_reg_7__0_ ( .D(n491), .CK(CLK), .RN(n554), .Q(A[39]), .QN(n320) );
  DFFR_X1 A_reg_8__12_ ( .D(n490), .CK(CLK), .RN(n554), .Q(A[38]), .QN(n319)
         );
  DFFR_X1 A_reg_8__11_ ( .D(n489), .CK(CLK), .RN(n554), .Q(A[37]), .QN(n318)
         );
  DFFR_X1 A_reg_8__10_ ( .D(n488), .CK(CLK), .RN(n554), .Q(A[36]), .QN(n317)
         );
  DFFR_X1 A_reg_8__9_ ( .D(n487), .CK(CLK), .RN(n554), .Q(A[35]), .QN(n316) );
  DFFR_X1 A_reg_8__8_ ( .D(n486), .CK(CLK), .RN(n554), .Q(A[34]), .QN(n315) );
  DFFR_X1 A_reg_8__7_ ( .D(n485), .CK(CLK), .RN(n554), .Q(A[33]), .QN(n314) );
  DFFR_X1 A_reg_8__6_ ( .D(n484), .CK(CLK), .RN(n554), .Q(A[32]), .QN(n313) );
  DFFR_X1 A_reg_8__5_ ( .D(n483), .CK(CLK), .RN(n554), .Q(A[31]), .QN(n312) );
  DFFR_X1 A_reg_8__4_ ( .D(n482), .CK(CLK), .RN(n553), .Q(A[30]), .QN(n311) );
  DFFR_X1 A_reg_8__3_ ( .D(n481), .CK(CLK), .RN(n553), .Q(A[29]), .QN(n310) );
  DFFR_X1 A_reg_8__2_ ( .D(n480), .CK(CLK), .RN(n553), .Q(A[28]), .QN(n309) );
  DFFR_X1 A_reg_8__1_ ( .D(n479), .CK(CLK), .RN(n553), .Q(A[27]), .QN(n308) );
  DFFR_X1 A_reg_8__0_ ( .D(n478), .CK(CLK), .RN(n553), .Q(A[26]), .QN(n307) );
  DFFR_X1 A_reg_9__12_ ( .D(n477), .CK(CLK), .RN(n553), .Q(A[25]), .QN(n306)
         );
  DFFR_X1 A_reg_9__11_ ( .D(n476), .CK(CLK), .RN(n553), .Q(A[24]), .QN(n305)
         );
  DFFR_X1 A_reg_9__10_ ( .D(n475), .CK(CLK), .RN(n553), .Q(A[23]), .QN(n304)
         );
  DFFR_X1 A_reg_9__9_ ( .D(n474), .CK(CLK), .RN(n553), .Q(A[22]), .QN(n303) );
  DFFR_X1 A_reg_9__8_ ( .D(n473), .CK(CLK), .RN(n553), .Q(A[21]), .QN(n302) );
  DFFR_X1 A_reg_9__7_ ( .D(n472), .CK(CLK), .RN(n553), .Q(A[20]), .QN(n301) );
  DFFR_X1 A_reg_9__6_ ( .D(n471), .CK(CLK), .RN(n553), .Q(A[19]), .QN(n300) );
  DFFR_X1 A_reg_9__5_ ( .D(n470), .CK(CLK), .RN(n553), .Q(A[18]), .QN(n299) );
  DFFR_X1 A_reg_9__4_ ( .D(n469), .CK(CLK), .RN(n553), .Q(A[17]), .QN(n298) );
  DFFR_X1 A_reg_9__3_ ( .D(n468), .CK(CLK), .RN(n553), .Q(A[16]), .QN(n297) );
  DFFR_X1 A_reg_9__2_ ( .D(n467), .CK(CLK), .RN(n553), .Q(A[15]), .QN(n296) );
  DFFR_X1 A_reg_9__1_ ( .D(n466), .CK(CLK), .RN(n553), .Q(A[14]), .QN(n295) );
  DFFR_X1 A_reg_9__0_ ( .D(n465), .CK(CLK), .RN(n553), .Q(A[13]), .QN(n294) );
  DFFR_X1 A_reg_10__12_ ( .D(n464), .CK(CLK), .RN(n553), .Q(A[12]), .QN(n293)
         );
  DFFR_X1 A_reg_10__11_ ( .D(n463), .CK(CLK), .RN(n553), .Q(A[11]), .QN(n292)
         );
  DFFR_X1 A_reg_10__10_ ( .D(n462), .CK(CLK), .RN(n552), .Q(A[10]), .QN(n291)
         );
  DFFR_X1 A_reg_10__9_ ( .D(n461), .CK(CLK), .RN(n552), .Q(A[9]), .QN(n290) );
  DFFR_X1 A_reg_10__8_ ( .D(n460), .CK(CLK), .RN(n552), .Q(A[8]), .QN(n289) );
  DFFR_X1 A_reg_10__7_ ( .D(n459), .CK(CLK), .RN(n552), .Q(A[7]), .QN(n288) );
  DFFR_X1 A_reg_10__6_ ( .D(n458), .CK(CLK), .RN(n552), .Q(A[6]), .QN(n287) );
  DFFR_X1 A_reg_10__5_ ( .D(n457), .CK(CLK), .RN(n552), .Q(A[5]), .QN(n286) );
  DFFR_X1 A_reg_10__4_ ( .D(n456), .CK(CLK), .RN(n552), .Q(A[4]), .QN(n285) );
  DFFR_X1 A_reg_10__3_ ( .D(n455), .CK(CLK), .RN(n552), .Q(A[3]), .QN(n284) );
  DFFR_X1 A_reg_10__2_ ( .D(n454), .CK(CLK), .RN(n552), .Q(A[2]), .QN(n283) );
  DFFR_X1 A_reg_10__0_ ( .D(n453), .CK(CLK), .RN(n552), .Q(A[0]), .QN(n282) );
  DFFR_X1 SAMPLES_reg_0__12_ ( .D(n452), .CK(CLK), .RN(n552), .Q(SAMPLES[142]), 
        .QN(n281) );
  DFFR_X1 SAMPLES_reg_0__11_ ( .D(n451), .CK(CLK), .RN(n552), .Q(SAMPLES[141]), 
        .QN(n280) );
  DFFR_X1 SAMPLES_reg_0__10_ ( .D(n450), .CK(CLK), .RN(n552), .Q(SAMPLES[140]), 
        .QN(n279) );
  DFFR_X1 SAMPLES_reg_0__9_ ( .D(n449), .CK(CLK), .RN(n552), .Q(SAMPLES[139]), 
        .QN(n278) );
  DFFR_X1 SAMPLES_reg_0__8_ ( .D(n448), .CK(CLK), .RN(n552), .Q(SAMPLES[138]), 
        .QN(n277) );
  DFFR_X1 SAMPLES_reg_0__7_ ( .D(n447), .CK(CLK), .RN(n552), .Q(SAMPLES[137]), 
        .QN(n276) );
  DFFR_X1 SAMPLES_reg_0__6_ ( .D(n446), .CK(CLK), .RN(n552), .Q(SAMPLES[136]), 
        .QN(n275) );
  DFFR_X1 SAMPLES_reg_0__5_ ( .D(n445), .CK(CLK), .RN(n552), .Q(SAMPLES[135]), 
        .QN(n274) );
  DFFR_X1 SAMPLES_reg_0__4_ ( .D(n444), .CK(CLK), .RN(n552), .Q(SAMPLES[134]), 
        .QN(n273) );
  DFFR_X1 SAMPLES_reg_0__3_ ( .D(n443), .CK(CLK), .RN(n552), .Q(SAMPLES[133]), 
        .QN(n272) );
  DFFR_X1 SAMPLES_reg_0__2_ ( .D(n442), .CK(CLK), .RN(n551), .Q(SAMPLES[132]), 
        .QN(n271) );
  DFFR_X1 SAMPLES_reg_0__1_ ( .D(n441), .CK(CLK), .RN(n551), .Q(SAMPLES[131]), 
        .QN(n270) );
  DFFR_X1 SAMPLES_reg_0__0_ ( .D(n440), .CK(CLK), .RN(n551), .Q(SAMPLES[130]), 
        .QN(n269) );
  DFFR_X1 A_reg_0__12_ ( .D(n439), .CK(CLK), .RN(n551), .Q(A[142]), .QN(n268)
         );
  DFFR_X1 A_reg_0__11_ ( .D(n438), .CK(CLK), .RN(n551), .Q(A[141]), .QN(n267)
         );
  DFFR_X1 A_reg_0__10_ ( .D(n437), .CK(CLK), .RN(n551), .Q(A[140]), .QN(n266)
         );
  DFFR_X1 A_reg_0__9_ ( .D(n436), .CK(CLK), .RN(n551), .Q(A[139]), .QN(n265)
         );
  DFFR_X1 A_reg_0__8_ ( .D(n435), .CK(CLK), .RN(n551), .Q(A[138]), .QN(n264)
         );
  DFFR_X1 A_reg_0__7_ ( .D(n434), .CK(CLK), .RN(n551), .Q(A[137]), .QN(n263)
         );
  DFFR_X1 A_reg_0__6_ ( .D(n433), .CK(CLK), .RN(n551), .Q(A[136]), .QN(n262)
         );
  DFFR_X1 A_reg_0__5_ ( .D(n432), .CK(CLK), .RN(n551), .Q(A[135]), .QN(n261)
         );
  DFFR_X1 A_reg_0__4_ ( .D(n431), .CK(CLK), .RN(n551), .Q(A[134]), .QN(n260)
         );
  DFFR_X1 A_reg_0__3_ ( .D(n430), .CK(CLK), .RN(n551), .Q(A[133]), .QN(n259)
         );
  DFFR_X1 A_reg_0__2_ ( .D(n429), .CK(CLK), .RN(n551), .Q(A[132]), .QN(n258)
         );
  DFFR_X1 A_reg_0__1_ ( .D(n428), .CK(CLK), .RN(n551), .Q(A[131]), .QN(n257)
         );
  DFFR_X1 A_reg_0__0_ ( .D(n427), .CK(CLK), .RN(n551), .Q(A[130]), .QN(n256)
         );
  DFFR_X1 A_reg_1__12_ ( .D(n426), .CK(CLK), .RN(n551), .Q(A[129]), .QN(n255)
         );
  DFFR_X1 A_reg_1__11_ ( .D(n425), .CK(CLK), .RN(n551), .Q(A[128]), .QN(n254)
         );
  DFFR_X1 A_reg_1__10_ ( .D(n424), .CK(CLK), .RN(n551), .Q(A[127]), .QN(n253)
         );
  DFFR_X1 A_reg_1__9_ ( .D(n423), .CK(CLK), .RN(n551), .Q(A[126]), .QN(n252)
         );
  DFFR_X1 A_reg_1__8_ ( .D(n422), .CK(CLK), .RN(n550), .Q(A[125]), .QN(n251)
         );
  DFFR_X1 A_reg_1__7_ ( .D(n421), .CK(CLK), .RN(n550), .Q(A[124]), .QN(n250)
         );
  DFFR_X1 A_reg_1__6_ ( .D(n420), .CK(CLK), .RN(n550), .Q(A[123]), .QN(n249)
         );
  DFFR_X1 A_reg_1__5_ ( .D(n419), .CK(CLK), .RN(n550), .Q(A[122]), .QN(n248)
         );
  DFFR_X1 A_reg_1__4_ ( .D(n418), .CK(CLK), .RN(n550), .Q(A[121]), .QN(n247)
         );
  DFFR_X1 A_reg_1__3_ ( .D(n417), .CK(CLK), .RN(n550), .Q(A[120]), .QN(n246)
         );
  DFFR_X1 A_reg_1__2_ ( .D(n416), .CK(CLK), .RN(n550), .Q(A[119]), .QN(n245)
         );
  DFFR_X1 A_reg_1__1_ ( .D(n415), .CK(CLK), .RN(n550), .Q(A[118]), .QN(n244)
         );
  DFFR_X1 A_reg_1__0_ ( .D(n414), .CK(CLK), .RN(n550), .Q(A[117]), .QN(n243)
         );
  DFFR_X1 A_reg_2__12_ ( .D(n413), .CK(CLK), .RN(n550), .Q(A[116]), .QN(n242)
         );
  DFFR_X1 A_reg_2__11_ ( .D(n412), .CK(CLK), .RN(n550), .Q(A[115]), .QN(n241)
         );
  DFFR_X1 A_reg_2__10_ ( .D(n411), .CK(CLK), .RN(n550), .Q(A[114]), .QN(n240)
         );
  DFFR_X1 A_reg_2__9_ ( .D(n410), .CK(CLK), .RN(n550), .Q(A[113]), .QN(n239)
         );
  DFFR_X1 A_reg_2__8_ ( .D(n409), .CK(CLK), .RN(n550), .Q(A[112]), .QN(n238)
         );
  DFFR_X1 A_reg_2__7_ ( .D(n408), .CK(CLK), .RN(n550), .Q(A[111]), .QN(n237)
         );
  DFFR_X1 A_reg_2__6_ ( .D(n407), .CK(CLK), .RN(n550), .Q(A[110]), .QN(n236)
         );
  DFFR_X1 A_reg_2__5_ ( .D(n406), .CK(CLK), .RN(n550), .Q(A[109]), .QN(n235)
         );
  DFFR_X1 A_reg_2__4_ ( .D(n405), .CK(CLK), .RN(n550), .Q(A[108]), .QN(n234)
         );
  DFFR_X1 A_reg_2__3_ ( .D(n404), .CK(CLK), .RN(n550), .Q(A[107]), .QN(n233)
         );
  DFFR_X1 A_reg_2__2_ ( .D(n403), .CK(CLK), .RN(n550), .Q(A[106]), .QN(n232)
         );
  DFFR_X1 A_reg_2__1_ ( .D(n402), .CK(CLK), .RN(n549), .Q(A[105]), .QN(n231)
         );
  DFFR_X1 A_reg_2__0_ ( .D(n401), .CK(CLK), .RN(n549), .Q(A[104]), .QN(n230)
         );
  DFFR_X1 A_reg_3__12_ ( .D(n400), .CK(CLK), .RN(n549), .Q(A[103]), .QN(n229)
         );
  DFFR_X1 A_reg_3__11_ ( .D(n399), .CK(CLK), .RN(n549), .Q(A[102]), .QN(n228)
         );
  DFFR_X1 A_reg_3__10_ ( .D(n398), .CK(CLK), .RN(n549), .Q(A[101]), .QN(n227)
         );
  DFFR_X1 A_reg_3__9_ ( .D(n397), .CK(CLK), .RN(n549), .Q(A[100]), .QN(n226)
         );
  DFFR_X1 A_reg_3__8_ ( .D(n396), .CK(CLK), .RN(n549), .Q(A[99]), .QN(n225) );
  DFFR_X1 A_reg_3__7_ ( .D(n395), .CK(CLK), .RN(n549), .Q(A[98]), .QN(n224) );
  DFFR_X1 A_reg_3__6_ ( .D(n394), .CK(CLK), .RN(n549), .Q(A[97]), .QN(n223) );
  DFFR_X1 A_reg_3__5_ ( .D(n393), .CK(CLK), .RN(n549), .Q(A[96]), .QN(n222) );
  DFFR_X1 A_reg_3__4_ ( .D(n392), .CK(CLK), .RN(n549), .Q(A[95]), .QN(n221) );
  DFFR_X1 A_reg_3__3_ ( .D(n391), .CK(CLK), .RN(n549), .Q(A[94]), .QN(n220) );
  DFFR_X1 A_reg_3__2_ ( .D(n390), .CK(CLK), .RN(n549), .Q(A[93]), .QN(n219) );
  DFFR_X1 A_reg_3__1_ ( .D(n389), .CK(CLK), .RN(n549), .Q(A[92]), .QN(n218) );
  DFFR_X1 A_reg_3__0_ ( .D(n388), .CK(CLK), .RN(n549), .Q(A[91]), .QN(n217) );
  DFFR_X1 A_reg_4__12_ ( .D(n387), .CK(CLK), .RN(n549), .Q(A[90]), .QN(n216)
         );
  DFFR_X1 A_reg_4__11_ ( .D(n386), .CK(CLK), .RN(n549), .Q(A[89]), .QN(n215)
         );
  DFFR_X1 A_reg_4__10_ ( .D(n385), .CK(CLK), .RN(n549), .Q(A[88]), .QN(n214)
         );
  DFFR_X1 A_reg_4__9_ ( .D(n384), .CK(CLK), .RN(n549), .Q(A[87]), .QN(n213) );
  DFFR_X1 A_reg_4__8_ ( .D(n383), .CK(CLK), .RN(n549), .Q(A[86]), .QN(n212) );
  DFFR_X1 A_reg_4__7_ ( .D(n382), .CK(CLK), .RN(n548), .Q(A[85]), .QN(n211) );
  DFFR_X1 A_reg_4__6_ ( .D(n381), .CK(CLK), .RN(n548), .Q(A[84]), .QN(n210) );
  DFFR_X1 A_reg_4__5_ ( .D(n380), .CK(CLK), .RN(n548), .Q(A[83]), .QN(n209) );
  DFFR_X1 A_reg_4__4_ ( .D(n379), .CK(CLK), .RN(n548), .Q(A[82]), .QN(n208) );
  DFFR_X1 A_reg_4__3_ ( .D(n378), .CK(CLK), .RN(n548), .Q(A[81]), .QN(n207) );
  DFFR_X1 A_reg_4__2_ ( .D(n377), .CK(CLK), .RN(n548), .Q(A[80]), .QN(n206) );
  DFFR_X1 A_reg_4__1_ ( .D(n376), .CK(CLK), .RN(n548), .Q(A[79]), .QN(n205) );
  DFFR_X1 A_reg_4__0_ ( .D(n375), .CK(CLK), .RN(n548), .Q(A[78]), .QN(n204) );
  DFFR_X1 A_reg_5__12_ ( .D(n374), .CK(CLK), .RN(n548), .Q(A[77]), .QN(n203)
         );
  DFFR_X1 A_reg_5__11_ ( .D(n373), .CK(CLK), .RN(n548), .Q(A[76]), .QN(n202)
         );
  DFFR_X1 A_reg_5__10_ ( .D(n372), .CK(CLK), .RN(n548), .Q(A[75]), .QN(n201)
         );
  DFFR_X1 A_reg_5__9_ ( .D(n371), .CK(CLK), .RN(n548), .Q(A[74]), .QN(n200) );
  DFFR_X1 A_reg_5__8_ ( .D(n370), .CK(CLK), .RN(n548), .Q(A[73]), .QN(n199) );
  DFFR_X1 A_reg_5__7_ ( .D(n369), .CK(CLK), .RN(n548), .Q(A[72]), .QN(n198) );
  DFFR_X1 A_reg_5__6_ ( .D(n368), .CK(CLK), .RN(n548), .Q(A[71]), .QN(n197) );
  DFFR_X1 A_reg_5__5_ ( .D(n367), .CK(CLK), .RN(n548), .Q(A[70]), .QN(n196) );
  DFFR_X1 A_reg_5__4_ ( .D(n366), .CK(CLK), .RN(n548), .Q(A[69]), .QN(n195) );
  DFFR_X1 A_reg_5__3_ ( .D(n365), .CK(CLK), .RN(n548), .Q(A[68]), .QN(n194) );
  DFFR_X1 A_reg_5__2_ ( .D(n364), .CK(CLK), .RN(n548), .Q(A[67]), .QN(n193) );
  DFFR_X1 A_reg_5__1_ ( .D(n363), .CK(CLK), .RN(n548), .Q(A[66]), .QN(n192) );
  DFFR_X1 A_reg_5__0_ ( .D(n362), .CK(CLK), .RN(n547), .Q(A[65]), .QN(n191) );
  DFFR_X1 A_reg_6__12_ ( .D(n361), .CK(CLK), .RN(n547), .Q(A[64]), .QN(n190)
         );
  DFFR_X1 A_reg_6__11_ ( .D(n360), .CK(CLK), .RN(n547), .Q(A[63]), .QN(n189)
         );
  DFFR_X1 A_reg_6__10_ ( .D(n359), .CK(CLK), .RN(n547), .Q(A[62]), .QN(n188)
         );
  DFFR_X1 A_reg_6__9_ ( .D(n358), .CK(CLK), .RN(n547), .Q(A[61]), .QN(n187) );
  DFFR_X1 A_reg_6__8_ ( .D(n357), .CK(CLK), .RN(n547), .Q(A[60]), .QN(n186) );
  DFFR_X1 A_reg_6__7_ ( .D(n356), .CK(CLK), .RN(n547), .Q(A[59]), .QN(n185) );
  DFFR_X1 A_reg_6__6_ ( .D(n355), .CK(CLK), .RN(n547), .Q(A[58]), .QN(n184) );
  DFFR_X1 A_reg_6__5_ ( .D(n354), .CK(CLK), .RN(n547), .Q(A[57]), .QN(n183) );
  DFFR_X1 VOUT_reg ( .D(n353), .CK(CLK), .RN(n547), .Q(VOUT), .QN(n182) );
  DFFR_X1 DOUT_reg_0_ ( .D(n352), .CK(CLK), .RN(n547), .Q(DOUT[0]), .QN(n181)
         );
  DFFR_X1 DOUT_reg_1_ ( .D(n351), .CK(CLK), .RN(n547), .Q(DOUT[1]), .QN(n180)
         );
  DFFR_X1 DOUT_reg_2_ ( .D(n350), .CK(CLK), .RN(n547), .Q(DOUT[2]), .QN(n179)
         );
  DFFR_X1 DOUT_reg_3_ ( .D(n349), .CK(CLK), .RN(n547), .Q(DOUT[3]), .QN(n178)
         );
  DFFR_X1 DOUT_reg_4_ ( .D(n348), .CK(CLK), .RN(n547), .Q(DOUT[4]), .QN(n177)
         );
  DFFR_X1 DOUT_reg_5_ ( .D(n347), .CK(CLK), .RN(n547), .Q(DOUT[5]), .QN(n176)
         );
  DFFR_X1 DOUT_reg_6_ ( .D(n346), .CK(CLK), .RN(n547), .Q(DOUT[6]), .QN(n175)
         );
  DFFR_X1 DOUT_reg_7_ ( .D(n345), .CK(CLK), .RN(n547), .Q(DOUT[7]), .QN(n174)
         );
  DFFR_X1 DOUT_reg_8_ ( .D(n344), .CK(CLK), .RN(n547), .Q(DOUT[8]), .QN(n173)
         );
  DFFR_X1 DOUT_reg_9_ ( .D(n343), .CK(CLK), .RN(n547), .Q(DOUT[9]), .QN(n172)
         );
  DFFR_X1 DOUT_reg_10_ ( .D(n342), .CK(CLK), .RN(n546), .Q(DOUT[10]), .QN(n171) );
  DFFR_X1 DOUT_reg_11_ ( .D(n341), .CK(CLK), .RN(n546), .Q(DOUT[11]), .QN(n170) );
  DFFR_X1 DOUT_reg_12_ ( .D(n340), .CK(CLK), .RN(n546), .Q(DOUT[12]), .QN(n169) );
  BUF_X1 U341 ( .A(n511), .Z(n527) );
  BUF_X1 U342 ( .A(n511), .Z(n528) );
  BUF_X1 U343 ( .A(n512), .Z(n529) );
  BUF_X1 U344 ( .A(n510), .Z(n517) );
  BUF_X1 U345 ( .A(n510), .Z(n518) );
  BUF_X1 U346 ( .A(n511), .Z(n526) );
  BUF_X1 U347 ( .A(n510), .Z(n519) );
  BUF_X1 U348 ( .A(n510), .Z(n520) );
  BUF_X1 U349 ( .A(n510), .Z(n521) );
  BUF_X1 U350 ( .A(n510), .Z(n522) );
  BUF_X1 U351 ( .A(n511), .Z(n523) );
  BUF_X1 U352 ( .A(n511), .Z(n524) );
  BUF_X1 U353 ( .A(n511), .Z(n525) );
  BUF_X1 U354 ( .A(n512), .Z(n530) );
  BUF_X1 U355 ( .A(n513), .Z(n540) );
  BUF_X1 U356 ( .A(n513), .Z(n539) );
  BUF_X1 U357 ( .A(n513), .Z(n538) );
  BUF_X1 U358 ( .A(n513), .Z(n537) );
  BUF_X1 U359 ( .A(n513), .Z(n536) );
  BUF_X1 U360 ( .A(n513), .Z(n535) );
  BUF_X1 U361 ( .A(n512), .Z(n534) );
  BUF_X1 U362 ( .A(n512), .Z(n533) );
  BUF_X1 U363 ( .A(n512), .Z(n532) );
  BUF_X1 U364 ( .A(n512), .Z(n531) );
  BUF_X1 U365 ( .A(n514), .Z(n544) );
  BUF_X1 U366 ( .A(n514), .Z(n543) );
  BUF_X1 U367 ( .A(n514), .Z(n542) );
  BUF_X1 U368 ( .A(n514), .Z(n541) );
  NAND2_X1 U369 ( .A1(SUM_RESULTS_10__12_), .A2(n525), .ZN(n162) );
  BUF_X1 U370 ( .A(n515), .Z(n512) );
  BUF_X1 U371 ( .A(n515), .Z(n513) );
  BUF_X1 U372 ( .A(n516), .Z(n510) );
  BUF_X1 U373 ( .A(n516), .Z(n511) );
  BUF_X1 U374 ( .A(n515), .Z(n514) );
  BUF_X1 U375 ( .A(ENABLE), .Z(n515) );
  BUF_X1 U376 ( .A(ENABLE), .Z(n516) );
  BUF_X1 U377 ( .A(n557), .Z(n546) );
  OAI21_X1 U378 ( .B1(n169), .B2(n533), .A(n162), .ZN(n340) );
  OAI21_X1 U379 ( .B1(n170), .B2(n531), .A(n162), .ZN(n341) );
  OAI21_X1 U380 ( .B1(n171), .B2(n532), .A(n162), .ZN(n342) );
  OAI21_X1 U381 ( .B1(n172), .B2(n531), .A(n163), .ZN(n343) );
  NAND2_X1 U382 ( .A1(SUM_RESULTS_10__9_), .A2(n525), .ZN(n163) );
  OAI21_X1 U383 ( .B1(n173), .B2(n531), .A(n164), .ZN(n344) );
  NAND2_X1 U384 ( .A1(SUM_RESULTS_10__8_), .A2(n526), .ZN(n164) );
  OAI21_X1 U385 ( .B1(n174), .B2(n532), .A(n165), .ZN(n345) );
  NAND2_X1 U386 ( .A1(SUM_RESULTS_10__7_), .A2(n526), .ZN(n165) );
  OAI21_X1 U387 ( .B1(n175), .B2(n531), .A(n166), .ZN(n346) );
  NAND2_X1 U388 ( .A1(SUM_RESULTS_10__6_), .A2(n526), .ZN(n166) );
  OAI21_X1 U389 ( .B1(n176), .B2(n531), .A(n167), .ZN(n347) );
  NAND2_X1 U390 ( .A1(SUM_RESULTS_10__5_), .A2(n517), .ZN(n167) );
  OAI21_X1 U391 ( .B1(n177), .B2(n531), .A(n168), .ZN(n348) );
  NAND2_X1 U392 ( .A1(SUM_RESULTS_10__4_), .A2(n519), .ZN(n168) );
  OAI21_X1 U393 ( .B1(n178), .B2(n535), .A(n2), .ZN(n349) );
  NAND2_X1 U394 ( .A1(SUM_RESULTS_10__3_), .A2(n526), .ZN(n2) );
  OAI21_X1 U395 ( .B1(n179), .B2(n531), .A(n3), .ZN(n350) );
  NAND2_X1 U396 ( .A1(SUM_RESULTS_10__2_), .A2(n526), .ZN(n3) );
  OAI21_X1 U397 ( .B1(n180), .B2(n531), .A(n4), .ZN(n351) );
  NAND2_X1 U398 ( .A1(SUM_RESULTS_10__1_), .A2(n526), .ZN(n4) );
  OAI21_X1 U399 ( .B1(n181), .B2(n531), .A(n5), .ZN(n352) );
  NAND2_X1 U400 ( .A1(SUM_RESULTS_10__0_), .A2(n526), .ZN(n5) );
  BUF_X1 U401 ( .A(ENABLE), .Z(n545) );
  OAI21_X1 U402 ( .B1(n183), .B2(n532), .A(n6), .ZN(n354) );
  NAND2_X1 U403 ( .A1(H6[5]), .A2(n526), .ZN(n6) );
  OAI21_X1 U404 ( .B1(n184), .B2(n532), .A(n7), .ZN(n355) );
  NAND2_X1 U405 ( .A1(H6[6]), .A2(n526), .ZN(n7) );
  OAI21_X1 U406 ( .B1(n185), .B2(n532), .A(n8), .ZN(n356) );
  NAND2_X1 U407 ( .A1(H6[7]), .A2(n526), .ZN(n8) );
  OAI21_X1 U408 ( .B1(n186), .B2(n533), .A(n9), .ZN(n357) );
  NAND2_X1 U409 ( .A1(H6[8]), .A2(n526), .ZN(n9) );
  OAI21_X1 U410 ( .B1(n187), .B2(n533), .A(n10), .ZN(n358) );
  NAND2_X1 U411 ( .A1(H6[9]), .A2(n527), .ZN(n10) );
  OAI21_X1 U412 ( .B1(n188), .B2(n534), .A(n11), .ZN(n359) );
  NAND2_X1 U413 ( .A1(H6[10]), .A2(n527), .ZN(n11) );
  OAI21_X1 U414 ( .B1(n189), .B2(n534), .A(n12), .ZN(n360) );
  NAND2_X1 U415 ( .A1(H6[11]), .A2(n527), .ZN(n12) );
  OAI21_X1 U416 ( .B1(n190), .B2(n534), .A(n13), .ZN(n361) );
  NAND2_X1 U417 ( .A1(H6[12]), .A2(n527), .ZN(n13) );
  OAI21_X1 U418 ( .B1(n191), .B2(n534), .A(n14), .ZN(n362) );
  NAND2_X1 U419 ( .A1(H5[0]), .A2(n527), .ZN(n14) );
  OAI21_X1 U420 ( .B1(n192), .B2(n535), .A(n15), .ZN(n363) );
  NAND2_X1 U421 ( .A1(H5[1]), .A2(n529), .ZN(n15) );
  OAI21_X1 U422 ( .B1(n193), .B2(n535), .A(n16), .ZN(n364) );
  NAND2_X1 U423 ( .A1(H5[2]), .A2(n527), .ZN(n16) );
  OAI21_X1 U424 ( .B1(n194), .B2(n535), .A(n17), .ZN(n365) );
  NAND2_X1 U425 ( .A1(H5[3]), .A2(n527), .ZN(n17) );
  OAI21_X1 U426 ( .B1(n195), .B2(n536), .A(n18), .ZN(n366) );
  NAND2_X1 U427 ( .A1(H5[4]), .A2(n527), .ZN(n18) );
  OAI21_X1 U428 ( .B1(n196), .B2(n536), .A(n19), .ZN(n367) );
  NAND2_X1 U429 ( .A1(H5[5]), .A2(n527), .ZN(n19) );
  OAI21_X1 U430 ( .B1(n197), .B2(n536), .A(n20), .ZN(n368) );
  NAND2_X1 U431 ( .A1(H5[6]), .A2(n527), .ZN(n20) );
  OAI21_X1 U432 ( .B1(n198), .B2(n537), .A(n21), .ZN(n369) );
  NAND2_X1 U433 ( .A1(H5[7]), .A2(n527), .ZN(n21) );
  OAI21_X1 U434 ( .B1(n199), .B2(n537), .A(n22), .ZN(n370) );
  NAND2_X1 U435 ( .A1(H5[8]), .A2(n527), .ZN(n22) );
  OAI21_X1 U436 ( .B1(n200), .B2(n537), .A(n23), .ZN(n371) );
  NAND2_X1 U437 ( .A1(H5[9]), .A2(n528), .ZN(n23) );
  OAI21_X1 U438 ( .B1(n201), .B2(n538), .A(n24), .ZN(n372) );
  NAND2_X1 U439 ( .A1(H5[10]), .A2(n528), .ZN(n24) );
  OAI21_X1 U440 ( .B1(n202), .B2(n538), .A(n25), .ZN(n373) );
  NAND2_X1 U441 ( .A1(H5[11]), .A2(n528), .ZN(n25) );
  OAI21_X1 U442 ( .B1(n203), .B2(n538), .A(n26), .ZN(n374) );
  NAND2_X1 U443 ( .A1(H5[12]), .A2(n528), .ZN(n26) );
  OAI21_X1 U444 ( .B1(n204), .B2(n539), .A(n27), .ZN(n375) );
  NAND2_X1 U445 ( .A1(H4[0]), .A2(n528), .ZN(n27) );
  OAI21_X1 U446 ( .B1(n205), .B2(n539), .A(n28), .ZN(n376) );
  NAND2_X1 U447 ( .A1(H4[1]), .A2(n528), .ZN(n28) );
  OAI21_X1 U448 ( .B1(n206), .B2(n539), .A(n29), .ZN(n377) );
  NAND2_X1 U449 ( .A1(H4[2]), .A2(n528), .ZN(n29) );
  OAI21_X1 U450 ( .B1(n207), .B2(n539), .A(n30), .ZN(n378) );
  NAND2_X1 U451 ( .A1(H4[3]), .A2(n528), .ZN(n30) );
  OAI21_X1 U452 ( .B1(n208), .B2(n540), .A(n31), .ZN(n379) );
  NAND2_X1 U453 ( .A1(H4[4]), .A2(n528), .ZN(n31) );
  OAI21_X1 U454 ( .B1(n209), .B2(n540), .A(n32), .ZN(n380) );
  NAND2_X1 U455 ( .A1(H4[5]), .A2(n528), .ZN(n32) );
  OAI21_X1 U456 ( .B1(n210), .B2(n540), .A(n33), .ZN(n381) );
  NAND2_X1 U457 ( .A1(H4[6]), .A2(n528), .ZN(n33) );
  OAI21_X1 U458 ( .B1(n211), .B2(n541), .A(n34), .ZN(n382) );
  NAND2_X1 U459 ( .A1(H4[7]), .A2(n528), .ZN(n34) );
  OAI21_X1 U460 ( .B1(n212), .B2(n541), .A(n35), .ZN(n383) );
  NAND2_X1 U461 ( .A1(H4[8]), .A2(n529), .ZN(n35) );
  OAI21_X1 U462 ( .B1(n213), .B2(n541), .A(n36), .ZN(n384) );
  NAND2_X1 U463 ( .A1(H4[9]), .A2(n529), .ZN(n36) );
  OAI21_X1 U464 ( .B1(n214), .B2(n542), .A(n37), .ZN(n385) );
  NAND2_X1 U465 ( .A1(H4[10]), .A2(n529), .ZN(n37) );
  OAI21_X1 U466 ( .B1(n215), .B2(n542), .A(n38), .ZN(n386) );
  NAND2_X1 U467 ( .A1(H4[11]), .A2(n529), .ZN(n38) );
  OAI21_X1 U468 ( .B1(n216), .B2(n542), .A(n39), .ZN(n387) );
  NAND2_X1 U469 ( .A1(H4[12]), .A2(n529), .ZN(n39) );
  OAI21_X1 U470 ( .B1(n217), .B2(n543), .A(n40), .ZN(n388) );
  NAND2_X1 U471 ( .A1(H3[0]), .A2(n529), .ZN(n40) );
  OAI21_X1 U472 ( .B1(n218), .B2(n543), .A(n41), .ZN(n389) );
  NAND2_X1 U473 ( .A1(H3[1]), .A2(n529), .ZN(n41) );
  OAI21_X1 U474 ( .B1(n219), .B2(n543), .A(n42), .ZN(n390) );
  NAND2_X1 U475 ( .A1(H3[2]), .A2(n529), .ZN(n42) );
  OAI21_X1 U476 ( .B1(n220), .B2(n544), .A(n43), .ZN(n391) );
  NAND2_X1 U477 ( .A1(H3[3]), .A2(n529), .ZN(n43) );
  OAI21_X1 U478 ( .B1(n221), .B2(n544), .A(n44), .ZN(n392) );
  NAND2_X1 U479 ( .A1(H3[4]), .A2(n529), .ZN(n44) );
  OAI21_X1 U480 ( .B1(n222), .B2(n544), .A(n45), .ZN(n393) );
  NAND2_X1 U481 ( .A1(H3[5]), .A2(n529), .ZN(n45) );
  OAI21_X1 U482 ( .B1(n223), .B2(n544), .A(n46), .ZN(n394) );
  NAND2_X1 U483 ( .A1(H3[6]), .A2(n530), .ZN(n46) );
  OAI21_X1 U484 ( .B1(n224), .B2(n544), .A(n47), .ZN(n395) );
  NAND2_X1 U485 ( .A1(H3[7]), .A2(n530), .ZN(n47) );
  OAI21_X1 U486 ( .B1(n225), .B2(n542), .A(n48), .ZN(n396) );
  NAND2_X1 U487 ( .A1(H3[8]), .A2(n530), .ZN(n48) );
  OAI21_X1 U488 ( .B1(n226), .B2(n541), .A(n49), .ZN(n397) );
  NAND2_X1 U489 ( .A1(H3[9]), .A2(n530), .ZN(n49) );
  OAI21_X1 U490 ( .B1(n227), .B2(n540), .A(n50), .ZN(n398) );
  NAND2_X1 U491 ( .A1(H3[10]), .A2(n530), .ZN(n50) );
  OAI21_X1 U492 ( .B1(n228), .B2(n539), .A(n51), .ZN(n399) );
  NAND2_X1 U493 ( .A1(H3[11]), .A2(n530), .ZN(n51) );
  OAI21_X1 U494 ( .B1(n229), .B2(n537), .A(n52), .ZN(n400) );
  NAND2_X1 U495 ( .A1(H3[12]), .A2(n530), .ZN(n52) );
  OAI21_X1 U496 ( .B1(n230), .B2(n536), .A(n53), .ZN(n401) );
  NAND2_X1 U497 ( .A1(H2[0]), .A2(n530), .ZN(n53) );
  OAI21_X1 U498 ( .B1(n231), .B2(n535), .A(n54), .ZN(n402) );
  NAND2_X1 U499 ( .A1(H2[1]), .A2(n530), .ZN(n54) );
  OAI21_X1 U500 ( .B1(n232), .B2(n533), .A(n55), .ZN(n403) );
  NAND2_X1 U501 ( .A1(H2[2]), .A2(n530), .ZN(n55) );
  OAI21_X1 U502 ( .B1(n233), .B2(n532), .A(n56), .ZN(n404) );
  NAND2_X1 U503 ( .A1(H2[3]), .A2(n530), .ZN(n56) );
  OAI21_X1 U504 ( .B1(n234), .B2(n531), .A(n57), .ZN(n405) );
  NAND2_X1 U505 ( .A1(H2[4]), .A2(n521), .ZN(n57) );
  OAI21_X1 U506 ( .B1(n235), .B2(n537), .A(n58), .ZN(n406) );
  NAND2_X1 U507 ( .A1(H2[5]), .A2(n517), .ZN(n58) );
  OAI21_X1 U508 ( .B1(n236), .B2(n531), .A(n59), .ZN(n407) );
  NAND2_X1 U509 ( .A1(H2[6]), .A2(n517), .ZN(n59) );
  OAI21_X1 U510 ( .B1(n237), .B2(n532), .A(n60), .ZN(n408) );
  NAND2_X1 U511 ( .A1(H2[7]), .A2(n517), .ZN(n60) );
  OAI21_X1 U512 ( .B1(n238), .B2(n533), .A(n61), .ZN(n409) );
  NAND2_X1 U513 ( .A1(H2[8]), .A2(n517), .ZN(n61) );
  OAI21_X1 U514 ( .B1(n239), .B2(n533), .A(n62), .ZN(n410) );
  NAND2_X1 U515 ( .A1(H2[9]), .A2(n517), .ZN(n62) );
  OAI21_X1 U516 ( .B1(n240), .B2(n533), .A(n63), .ZN(n411) );
  NAND2_X1 U517 ( .A1(H2[10]), .A2(n517), .ZN(n63) );
  OAI21_X1 U518 ( .B1(n241), .B2(n534), .A(n64), .ZN(n412) );
  NAND2_X1 U519 ( .A1(H2[11]), .A2(n517), .ZN(n64) );
  OAI21_X1 U520 ( .B1(n242), .B2(n535), .A(n65), .ZN(n413) );
  NAND2_X1 U521 ( .A1(H2[12]), .A2(n517), .ZN(n65) );
  OAI21_X1 U522 ( .B1(n243), .B2(n536), .A(n66), .ZN(n414) );
  NAND2_X1 U523 ( .A1(H1[0]), .A2(n517), .ZN(n66) );
  OAI21_X1 U524 ( .B1(n244), .B2(n536), .A(n67), .ZN(n415) );
  NAND2_X1 U525 ( .A1(H1[1]), .A2(n517), .ZN(n67) );
  OAI21_X1 U526 ( .B1(n245), .B2(n537), .A(n68), .ZN(n416) );
  NAND2_X1 U527 ( .A1(H1[2]), .A2(n517), .ZN(n68) );
  OAI21_X1 U528 ( .B1(n246), .B2(n538), .A(n69), .ZN(n417) );
  NAND2_X1 U529 ( .A1(H1[3]), .A2(n518), .ZN(n69) );
  OAI21_X1 U530 ( .B1(n247), .B2(n538), .A(n70), .ZN(n418) );
  NAND2_X1 U531 ( .A1(H1[4]), .A2(n518), .ZN(n70) );
  OAI21_X1 U532 ( .B1(n248), .B2(n539), .A(n71), .ZN(n419) );
  NAND2_X1 U533 ( .A1(H1[5]), .A2(n518), .ZN(n71) );
  OAI21_X1 U534 ( .B1(n249), .B2(n540), .A(n72), .ZN(n420) );
  NAND2_X1 U535 ( .A1(H1[6]), .A2(n518), .ZN(n72) );
  OAI21_X1 U536 ( .B1(n250), .B2(n540), .A(n73), .ZN(n421) );
  NAND2_X1 U537 ( .A1(H1[7]), .A2(n518), .ZN(n73) );
  OAI21_X1 U538 ( .B1(n251), .B2(n541), .A(n74), .ZN(n422) );
  NAND2_X1 U539 ( .A1(H1[8]), .A2(n518), .ZN(n74) );
  OAI21_X1 U540 ( .B1(n252), .B2(n542), .A(n75), .ZN(n423) );
  NAND2_X1 U541 ( .A1(H1[9]), .A2(n518), .ZN(n75) );
  OAI21_X1 U542 ( .B1(n253), .B2(n542), .A(n76), .ZN(n424) );
  NAND2_X1 U543 ( .A1(H1[10]), .A2(n518), .ZN(n76) );
  OAI21_X1 U544 ( .B1(n254), .B2(n543), .A(n77), .ZN(n425) );
  NAND2_X1 U545 ( .A1(H1[11]), .A2(n518), .ZN(n77) );
  OAI21_X1 U546 ( .B1(n255), .B2(n543), .A(n78), .ZN(n426) );
  NAND2_X1 U547 ( .A1(H1[12]), .A2(n518), .ZN(n78) );
  OAI21_X1 U548 ( .B1(n256), .B2(n544), .A(n79), .ZN(n427) );
  NAND2_X1 U549 ( .A1(H0[0]), .A2(n518), .ZN(n79) );
  OAI21_X1 U550 ( .B1(n257), .B2(n530), .A(n80), .ZN(n428) );
  NAND2_X1 U551 ( .A1(H0[1]), .A2(n518), .ZN(n80) );
  OAI21_X1 U552 ( .B1(n258), .B2(n544), .A(n81), .ZN(n429) );
  NAND2_X1 U553 ( .A1(H0[2]), .A2(n519), .ZN(n81) );
  OAI21_X1 U554 ( .B1(n259), .B2(n544), .A(n82), .ZN(n430) );
  NAND2_X1 U555 ( .A1(H0[3]), .A2(n519), .ZN(n82) );
  OAI21_X1 U556 ( .B1(n260), .B2(n544), .A(n83), .ZN(n431) );
  NAND2_X1 U557 ( .A1(H0[4]), .A2(n519), .ZN(n83) );
  OAI21_X1 U558 ( .B1(n261), .B2(n544), .A(n84), .ZN(n432) );
  NAND2_X1 U559 ( .A1(H0[5]), .A2(n519), .ZN(n84) );
  OAI21_X1 U560 ( .B1(n262), .B2(n544), .A(n85), .ZN(n433) );
  NAND2_X1 U561 ( .A1(H0[6]), .A2(n526), .ZN(n85) );
  OAI21_X1 U562 ( .B1(n263), .B2(n544), .A(n86), .ZN(n434) );
  NAND2_X1 U563 ( .A1(H0[7]), .A2(n519), .ZN(n86) );
  OAI21_X1 U564 ( .B1(n264), .B2(n543), .A(n87), .ZN(n435) );
  NAND2_X1 U565 ( .A1(H0[8]), .A2(n519), .ZN(n87) );
  OAI21_X1 U566 ( .B1(n265), .B2(n543), .A(n88), .ZN(n436) );
  NAND2_X1 U567 ( .A1(H0[9]), .A2(n519), .ZN(n88) );
  OAI21_X1 U568 ( .B1(n266), .B2(n543), .A(n89), .ZN(n437) );
  NAND2_X1 U569 ( .A1(H0[10]), .A2(n519), .ZN(n89) );
  OAI21_X1 U570 ( .B1(n267), .B2(n543), .A(n90), .ZN(n438) );
  NAND2_X1 U571 ( .A1(H0[11]), .A2(n519), .ZN(n90) );
  OAI21_X1 U572 ( .B1(n268), .B2(n543), .A(n91), .ZN(n439) );
  NAND2_X1 U573 ( .A1(H0[12]), .A2(n519), .ZN(n91) );
  OAI21_X1 U574 ( .B1(n269), .B2(n543), .A(n92), .ZN(n440) );
  NAND2_X1 U575 ( .A1(DIN[0]), .A2(n519), .ZN(n92) );
  OAI21_X1 U576 ( .B1(n270), .B2(n543), .A(n93), .ZN(n441) );
  NAND2_X1 U577 ( .A1(DIN[1]), .A2(n520), .ZN(n93) );
  OAI21_X1 U578 ( .B1(n271), .B2(n542), .A(n94), .ZN(n442) );
  NAND2_X1 U579 ( .A1(DIN[2]), .A2(n520), .ZN(n94) );
  OAI21_X1 U580 ( .B1(n272), .B2(n542), .A(n95), .ZN(n443) );
  NAND2_X1 U581 ( .A1(DIN[3]), .A2(n520), .ZN(n95) );
  OAI21_X1 U582 ( .B1(n273), .B2(n542), .A(n96), .ZN(n444) );
  NAND2_X1 U583 ( .A1(DIN[4]), .A2(n520), .ZN(n96) );
  OAI21_X1 U584 ( .B1(n274), .B2(n542), .A(n97), .ZN(n445) );
  NAND2_X1 U585 ( .A1(DIN[5]), .A2(n520), .ZN(n97) );
  OAI21_X1 U586 ( .B1(n275), .B2(n542), .A(n98), .ZN(n446) );
  NAND2_X1 U587 ( .A1(DIN[6]), .A2(n520), .ZN(n98) );
  OAI21_X1 U588 ( .B1(n276), .B2(n542), .A(n99), .ZN(n447) );
  NAND2_X1 U589 ( .A1(DIN[7]), .A2(n520), .ZN(n99) );
  OAI21_X1 U590 ( .B1(n277), .B2(n541), .A(n100), .ZN(n448) );
  NAND2_X1 U591 ( .A1(DIN[8]), .A2(n520), .ZN(n100) );
  OAI21_X1 U592 ( .B1(n278), .B2(n541), .A(n101), .ZN(n449) );
  NAND2_X1 U593 ( .A1(DIN[9]), .A2(n520), .ZN(n101) );
  OAI21_X1 U594 ( .B1(n279), .B2(n541), .A(n102), .ZN(n450) );
  NAND2_X1 U595 ( .A1(DIN[10]), .A2(n520), .ZN(n102) );
  OAI21_X1 U596 ( .B1(n280), .B2(n541), .A(n103), .ZN(n451) );
  NAND2_X1 U597 ( .A1(DIN[11]), .A2(n520), .ZN(n103) );
  OAI21_X1 U598 ( .B1(n281), .B2(n541), .A(n104), .ZN(n452) );
  NAND2_X1 U599 ( .A1(DIN[12]), .A2(n520), .ZN(n104) );
  OAI21_X1 U600 ( .B1(n282), .B2(n541), .A(n105), .ZN(n453) );
  NAND2_X1 U601 ( .A1(H10[0]), .A2(n521), .ZN(n105) );
  OAI21_X1 U602 ( .B1(n283), .B2(n541), .A(n106), .ZN(n454) );
  NAND2_X1 U603 ( .A1(H10[2]), .A2(n521), .ZN(n106) );
  OAI21_X1 U604 ( .B1(n284), .B2(n540), .A(n107), .ZN(n455) );
  NAND2_X1 U605 ( .A1(H10[3]), .A2(n521), .ZN(n107) );
  OAI21_X1 U606 ( .B1(n285), .B2(n540), .A(n108), .ZN(n456) );
  NAND2_X1 U607 ( .A1(H10[4]), .A2(n521), .ZN(n108) );
  OAI21_X1 U608 ( .B1(n286), .B2(n540), .A(n109), .ZN(n457) );
  NAND2_X1 U609 ( .A1(H10[5]), .A2(n521), .ZN(n109) );
  OAI21_X1 U610 ( .B1(n287), .B2(n540), .A(n110), .ZN(n458) );
  NAND2_X1 U611 ( .A1(H10[6]), .A2(n521), .ZN(n110) );
  OAI21_X1 U612 ( .B1(n288), .B2(n540), .A(n111), .ZN(n459) );
  NAND2_X1 U613 ( .A1(H10[7]), .A2(n521), .ZN(n111) );
  OAI21_X1 U614 ( .B1(n289), .B2(n540), .A(n112), .ZN(n460) );
  NAND2_X1 U615 ( .A1(H10[8]), .A2(n521), .ZN(n112) );
  OAI21_X1 U616 ( .B1(n290), .B2(n539), .A(n113), .ZN(n461) );
  NAND2_X1 U617 ( .A1(H10[9]), .A2(n521), .ZN(n113) );
  OAI21_X1 U618 ( .B1(n291), .B2(n539), .A(n114), .ZN(n462) );
  NAND2_X1 U619 ( .A1(H10[10]), .A2(n521), .ZN(n114) );
  OAI21_X1 U620 ( .B1(n292), .B2(n539), .A(n115), .ZN(n463) );
  NAND2_X1 U621 ( .A1(H10[11]), .A2(n521), .ZN(n115) );
  OAI21_X1 U622 ( .B1(n293), .B2(n539), .A(n116), .ZN(n464) );
  NAND2_X1 U623 ( .A1(H10[12]), .A2(n522), .ZN(n116) );
  OAI21_X1 U624 ( .B1(n294), .B2(n539), .A(n117), .ZN(n465) );
  NAND2_X1 U625 ( .A1(H9[0]), .A2(n522), .ZN(n117) );
  OAI21_X1 U626 ( .B1(n295), .B2(n539), .A(n118), .ZN(n466) );
  NAND2_X1 U627 ( .A1(H9[1]), .A2(n522), .ZN(n118) );
  OAI21_X1 U628 ( .B1(n296), .B2(n538), .A(n119), .ZN(n467) );
  NAND2_X1 U629 ( .A1(H9[2]), .A2(n522), .ZN(n119) );
  OAI21_X1 U630 ( .B1(n297), .B2(n538), .A(n120), .ZN(n468) );
  NAND2_X1 U631 ( .A1(H9[3]), .A2(n522), .ZN(n120) );
  OAI21_X1 U632 ( .B1(n298), .B2(n538), .A(n121), .ZN(n469) );
  NAND2_X1 U633 ( .A1(H9[4]), .A2(n522), .ZN(n121) );
  OAI21_X1 U634 ( .B1(n299), .B2(n538), .A(n122), .ZN(n470) );
  NAND2_X1 U635 ( .A1(H9[5]), .A2(n522), .ZN(n122) );
  OAI21_X1 U636 ( .B1(n300), .B2(n538), .A(n123), .ZN(n471) );
  NAND2_X1 U637 ( .A1(H9[6]), .A2(n522), .ZN(n123) );
  OAI21_X1 U638 ( .B1(n301), .B2(n538), .A(n124), .ZN(n472) );
  NAND2_X1 U639 ( .A1(H9[7]), .A2(n522), .ZN(n124) );
  OAI21_X1 U640 ( .B1(n302), .B2(n538), .A(n125), .ZN(n473) );
  NAND2_X1 U641 ( .A1(H9[8]), .A2(n522), .ZN(n125) );
  OAI21_X1 U642 ( .B1(n303), .B2(n537), .A(n126), .ZN(n474) );
  NAND2_X1 U643 ( .A1(H9[9]), .A2(n522), .ZN(n126) );
  OAI21_X1 U644 ( .B1(n304), .B2(n537), .A(n127), .ZN(n475) );
  NAND2_X1 U645 ( .A1(H9[10]), .A2(n522), .ZN(n127) );
  OAI21_X1 U646 ( .B1(n305), .B2(n537), .A(n128), .ZN(n476) );
  NAND2_X1 U647 ( .A1(H9[11]), .A2(n523), .ZN(n128) );
  OAI21_X1 U648 ( .B1(n306), .B2(n537), .A(n129), .ZN(n477) );
  NAND2_X1 U649 ( .A1(H9[12]), .A2(n523), .ZN(n129) );
  OAI21_X1 U650 ( .B1(n307), .B2(n537), .A(n130), .ZN(n478) );
  NAND2_X1 U651 ( .A1(H8[0]), .A2(n523), .ZN(n130) );
  OAI21_X1 U652 ( .B1(n308), .B2(n536), .A(n131), .ZN(n479) );
  NAND2_X1 U653 ( .A1(H8[1]), .A2(n523), .ZN(n131) );
  OAI21_X1 U654 ( .B1(n309), .B2(n537), .A(n132), .ZN(n480) );
  NAND2_X1 U655 ( .A1(H8[2]), .A2(n523), .ZN(n132) );
  OAI21_X1 U656 ( .B1(n310), .B2(n536), .A(n133), .ZN(n481) );
  NAND2_X1 U657 ( .A1(H8[3]), .A2(n523), .ZN(n133) );
  OAI21_X1 U658 ( .B1(n311), .B2(n536), .A(n134), .ZN(n482) );
  NAND2_X1 U659 ( .A1(H8[4]), .A2(n523), .ZN(n134) );
  OAI21_X1 U660 ( .B1(n312), .B2(n536), .A(n135), .ZN(n483) );
  NAND2_X1 U661 ( .A1(H8[5]), .A2(n523), .ZN(n135) );
  OAI21_X1 U662 ( .B1(n313), .B2(n536), .A(n136), .ZN(n484) );
  NAND2_X1 U663 ( .A1(H8[6]), .A2(n523), .ZN(n136) );
  OAI21_X1 U664 ( .B1(n314), .B2(n535), .A(n137), .ZN(n485) );
  NAND2_X1 U665 ( .A1(H8[7]), .A2(n523), .ZN(n137) );
  OAI21_X1 U666 ( .B1(n315), .B2(n536), .A(n138), .ZN(n486) );
  NAND2_X1 U667 ( .A1(H8[8]), .A2(n523), .ZN(n138) );
  OAI21_X1 U668 ( .B1(n316), .B2(n535), .A(n139), .ZN(n487) );
  NAND2_X1 U669 ( .A1(H8[9]), .A2(n523), .ZN(n139) );
  OAI21_X1 U670 ( .B1(n317), .B2(n535), .A(n140), .ZN(n488) );
  NAND2_X1 U671 ( .A1(H8[10]), .A2(n524), .ZN(n140) );
  OAI21_X1 U672 ( .B1(n318), .B2(n535), .A(n141), .ZN(n489) );
  NAND2_X1 U673 ( .A1(H8[11]), .A2(n524), .ZN(n141) );
  OAI21_X1 U674 ( .B1(n319), .B2(n535), .A(n142), .ZN(n490) );
  NAND2_X1 U675 ( .A1(H8[12]), .A2(n524), .ZN(n142) );
  OAI21_X1 U676 ( .B1(n320), .B2(n534), .A(n143), .ZN(n491) );
  NAND2_X1 U677 ( .A1(H7[0]), .A2(n524), .ZN(n143) );
  OAI21_X1 U678 ( .B1(n321), .B2(n534), .A(n144), .ZN(n492) );
  NAND2_X1 U679 ( .A1(H7[1]), .A2(n524), .ZN(n144) );
  OAI21_X1 U680 ( .B1(n322), .B2(n535), .A(n145), .ZN(n493) );
  NAND2_X1 U681 ( .A1(H7[2]), .A2(n524), .ZN(n145) );
  OAI21_X1 U682 ( .B1(n323), .B2(n534), .A(n146), .ZN(n494) );
  NAND2_X1 U683 ( .A1(H7[3]), .A2(n524), .ZN(n146) );
  OAI21_X1 U684 ( .B1(n324), .B2(n534), .A(n147), .ZN(n495) );
  NAND2_X1 U685 ( .A1(H7[4]), .A2(n524), .ZN(n147) );
  OAI21_X1 U686 ( .B1(n325), .B2(n534), .A(n148), .ZN(n496) );
  NAND2_X1 U687 ( .A1(H7[5]), .A2(n524), .ZN(n148) );
  OAI21_X1 U688 ( .B1(n326), .B2(n534), .A(n149), .ZN(n497) );
  NAND2_X1 U689 ( .A1(H7[6]), .A2(n524), .ZN(n149) );
  OAI21_X1 U690 ( .B1(n327), .B2(n533), .A(n150), .ZN(n498) );
  NAND2_X1 U691 ( .A1(H7[7]), .A2(n524), .ZN(n150) );
  OAI21_X1 U692 ( .B1(n328), .B2(n533), .A(n151), .ZN(n499) );
  NAND2_X1 U693 ( .A1(H7[8]), .A2(n524), .ZN(n151) );
  OAI21_X1 U694 ( .B1(n329), .B2(n534), .A(n152), .ZN(n500) );
  NAND2_X1 U695 ( .A1(H7[9]), .A2(n525), .ZN(n152) );
  OAI21_X1 U696 ( .B1(n330), .B2(n533), .A(n153), .ZN(n501) );
  NAND2_X1 U697 ( .A1(H7[10]), .A2(n525), .ZN(n153) );
  OAI21_X1 U698 ( .B1(n331), .B2(n533), .A(n154), .ZN(n502) );
  NAND2_X1 U699 ( .A1(H7[11]), .A2(n525), .ZN(n154) );
  OAI21_X1 U700 ( .B1(n332), .B2(n532), .A(n155), .ZN(n503) );
  NAND2_X1 U701 ( .A1(H7[12]), .A2(n525), .ZN(n155) );
  OAI21_X1 U702 ( .B1(n333), .B2(n533), .A(n156), .ZN(n504) );
  NAND2_X1 U703 ( .A1(H6[0]), .A2(n525), .ZN(n156) );
  OAI21_X1 U704 ( .B1(n334), .B2(n532), .A(n157), .ZN(n505) );
  NAND2_X1 U705 ( .A1(H6[1]), .A2(n525), .ZN(n157) );
  OAI21_X1 U706 ( .B1(n335), .B2(n532), .A(n158), .ZN(n506) );
  NAND2_X1 U707 ( .A1(H6[2]), .A2(n525), .ZN(n158) );
  OAI21_X1 U708 ( .B1(n336), .B2(n532), .A(n159), .ZN(n507) );
  NAND2_X1 U709 ( .A1(H6[3]), .A2(n525), .ZN(n159) );
  OAI21_X1 U710 ( .B1(n337), .B2(n532), .A(n160), .ZN(n508) );
  NAND2_X1 U711 ( .A1(H6[4]), .A2(n525), .ZN(n160) );
  OAI21_X1 U712 ( .B1(n338), .B2(n531), .A(n161), .ZN(n509) );
  NAND2_X1 U713 ( .A1(H10[1]), .A2(n525), .ZN(n161) );
  NAND2_X1 U714 ( .A1(n182), .A2(n339), .ZN(n353) );
  BUF_X1 U715 ( .A(RST_N), .Z(n557) );
  BUF_X1 U716 ( .A(RST_N), .Z(n556) );
  CLKBUF_X1 U717 ( .A(n557), .Z(n547) );
  CLKBUF_X1 U718 ( .A(n557), .Z(n548) );
  CLKBUF_X1 U719 ( .A(n557), .Z(n549) );
  CLKBUF_X1 U720 ( .A(n556), .Z(n550) );
  CLKBUF_X1 U721 ( .A(n556), .Z(n551) );
  CLKBUF_X1 U722 ( .A(n556), .Z(n552) );
  CLKBUF_X1 U723 ( .A(n556), .Z(n553) );
  CLKBUF_X1 U724 ( .A(n556), .Z(n554) );
  CLKBUF_X1 U725 ( .A(n556), .Z(n555) );
  XOR2_X1 MUL0_mult_17_U660 ( .A(SAMPLES[132]), .B(SAMPLES[131]), .Z(
        MUL0_mult_17_n681) );
  NAND2_X1 MUL0_mult_17_U659 ( .A1(SAMPLES[131]), .A2(MUL0_mult_17_n544), .ZN(
        MUL0_mult_17_n571) );
  XNOR2_X1 MUL0_mult_17_U658 ( .A(A[132]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n570) );
  OAI22_X1 MUL0_mult_17_U657 ( .A1(A[131]), .A2(MUL0_mult_17_n571), .B1(
        MUL0_mult_17_n570), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n683) );
  XNOR2_X1 MUL0_mult_17_U656 ( .A(MUL0_mult_17_n541), .B(SAMPLES[132]), .ZN(
        MUL0_mult_17_n682) );
  NAND2_X1 MUL0_mult_17_U655 ( .A1(MUL0_mult_17_n542), .A2(MUL0_mult_17_n682), 
        .ZN(MUL0_mult_17_n552) );
  NAND3_X1 MUL0_mult_17_U654 ( .A1(MUL0_mult_17_n681), .A2(MUL0_mult_17_n546), 
        .A3(SAMPLES[133]), .ZN(MUL0_mult_17_n680) );
  OAI21_X1 MUL0_mult_17_U653 ( .B1(MUL0_mult_17_n541), .B2(MUL0_mult_17_n552), 
        .A(MUL0_mult_17_n680), .ZN(MUL0_mult_17_n679) );
  AOI222_X1 MUL0_mult_17_U652 ( .A1(MUL0_mult_17_n506), .A2(MUL0_mult_17_n171), 
        .B1(MUL0_mult_17_n679), .B2(MUL0_mult_17_n506), .C1(MUL0_mult_17_n679), 
        .C2(MUL0_mult_17_n171), .ZN(MUL0_mult_17_n678) );
  AOI222_X1 MUL0_mult_17_U651 ( .A1(MUL0_mult_17_n538), .A2(MUL0_mult_17_n169), 
        .B1(MUL0_mult_17_n538), .B2(MUL0_mult_17_n170), .C1(MUL0_mult_17_n170), 
        .C2(MUL0_mult_17_n169), .ZN(MUL0_mult_17_n677) );
  AOI222_X1 MUL0_mult_17_U650 ( .A1(MUL0_mult_17_n537), .A2(MUL0_mult_17_n165), 
        .B1(MUL0_mult_17_n537), .B2(MUL0_mult_17_n168), .C1(MUL0_mult_17_n168), 
        .C2(MUL0_mult_17_n165), .ZN(MUL0_mult_17_n676) );
  AOI222_X1 MUL0_mult_17_U649 ( .A1(MUL0_mult_17_n533), .A2(MUL0_mult_17_n161), 
        .B1(MUL0_mult_17_n533), .B2(MUL0_mult_17_n164), .C1(MUL0_mult_17_n164), 
        .C2(MUL0_mult_17_n161), .ZN(MUL0_mult_17_n675) );
  AOI222_X1 MUL0_mult_17_U648 ( .A1(MUL0_mult_17_n532), .A2(MUL0_mult_17_n155), 
        .B1(MUL0_mult_17_n532), .B2(MUL0_mult_17_n160), .C1(MUL0_mult_17_n160), 
        .C2(MUL0_mult_17_n155), .ZN(MUL0_mult_17_n674) );
  AOI222_X1 MUL0_mult_17_U647 ( .A1(MUL0_mult_17_n528), .A2(MUL0_mult_17_n149), 
        .B1(MUL0_mult_17_n528), .B2(MUL0_mult_17_n154), .C1(MUL0_mult_17_n154), 
        .C2(MUL0_mult_17_n149), .ZN(MUL0_mult_17_n673) );
  AOI222_X1 MUL0_mult_17_U646 ( .A1(MUL0_mult_17_n527), .A2(MUL0_mult_17_n141), 
        .B1(MUL0_mult_17_n527), .B2(MUL0_mult_17_n148), .C1(MUL0_mult_17_n148), 
        .C2(MUL0_mult_17_n141), .ZN(MUL0_mult_17_n672) );
  AOI222_X1 MUL0_mult_17_U645 ( .A1(MUL0_mult_17_n523), .A2(MUL0_mult_17_n133), 
        .B1(MUL0_mult_17_n523), .B2(MUL0_mult_17_n140), .C1(MUL0_mult_17_n140), 
        .C2(MUL0_mult_17_n133), .ZN(MUL0_mult_17_n671) );
  AOI222_X1 MUL0_mult_17_U644 ( .A1(MUL0_mult_17_n522), .A2(MUL0_mult_17_n123), 
        .B1(MUL0_mult_17_n522), .B2(MUL0_mult_17_n132), .C1(MUL0_mult_17_n132), 
        .C2(MUL0_mult_17_n123), .ZN(MUL0_mult_17_n670) );
  AOI222_X1 MUL0_mult_17_U643 ( .A1(MUL0_mult_17_n517), .A2(MUL0_mult_17_n113), 
        .B1(MUL0_mult_17_n517), .B2(MUL0_mult_17_n122), .C1(MUL0_mult_17_n122), 
        .C2(MUL0_mult_17_n113), .ZN(MUL0_mult_17_n669) );
  AOI222_X1 MUL0_mult_17_U642 ( .A1(MUL0_mult_17_n515), .A2(MUL0_mult_17_n101), 
        .B1(MUL0_mult_17_n515), .B2(MUL0_mult_17_n112), .C1(MUL0_mult_17_n112), 
        .C2(MUL0_mult_17_n101), .ZN(MUL0_mult_17_n668) );
  AOI222_X1 MUL0_mult_17_U641 ( .A1(MUL0_mult_17_n513), .A2(MUL0_mult_17_n89), 
        .B1(MUL0_mult_17_n513), .B2(MUL0_mult_17_n100), .C1(MUL0_mult_17_n100), 
        .C2(MUL0_mult_17_n89), .ZN(MUL0_mult_17_n667) );
  AOI222_X1 MUL0_mult_17_U640 ( .A1(MUL0_mult_17_n512), .A2(MUL0_mult_17_n79), 
        .B1(MUL0_mult_17_n512), .B2(MUL0_mult_17_n88), .C1(MUL0_mult_17_n88), 
        .C2(MUL0_mult_17_n79), .ZN(MUL0_mult_17_n666) );
  AOI222_X1 MUL0_mult_17_U639 ( .A1(MUL0_mult_17_n511), .A2(MUL0_mult_17_n69), 
        .B1(MUL0_mult_17_n511), .B2(MUL0_mult_17_n78), .C1(MUL0_mult_17_n78), 
        .C2(MUL0_mult_17_n69), .ZN(MUL0_mult_17_n665) );
  AOI222_X1 MUL0_mult_17_U638 ( .A1(MUL0_mult_17_n510), .A2(MUL0_mult_17_n61), 
        .B1(MUL0_mult_17_n510), .B2(MUL0_mult_17_n68), .C1(MUL0_mult_17_n68), 
        .C2(MUL0_mult_17_n61), .ZN(MUL0_mult_17_n664) );
  XNOR2_X1 MUL0_mult_17_U637 ( .A(A[132]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n633) );
  XNOR2_X1 MUL0_mult_17_U636 ( .A(MUL0_mult_17_n521), .B(SAMPLES[140]), .ZN(
        MUL0_mult_17_n663) );
  NAND2_X1 MUL0_mult_17_U635 ( .A1(MUL0_mult_17_n568), .A2(MUL0_mult_17_n663), 
        .ZN(MUL0_mult_17_n567) );
  XNOR2_X1 MUL0_mult_17_U634 ( .A(A[133]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n634) );
  OAI22_X1 MUL0_mult_17_U633 ( .A1(MUL0_mult_17_n633), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n634), .ZN(MUL0_mult_17_n662)
         );
  XNOR2_X1 MUL0_mult_17_U632 ( .A(MUL0_mult_17_n545), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n661) );
  XNOR2_X1 MUL0_mult_17_U631 ( .A(SAMPLES[142]), .B(MUL0_mult_17_n521), .ZN(
        MUL0_mult_17_n549) );
  NAND2_X1 MUL0_mult_17_U630 ( .A1(MUL0_mult_17_n661), .A2(MUL0_mult_17_n549), 
        .ZN(MUL0_mult_17_n660) );
  NAND2_X1 MUL0_mult_17_U629 ( .A1(MUL0_mult_17_n520), .A2(MUL0_mult_17_n660), 
        .ZN(MUL0_mult_17_n110) );
  XNOR2_X1 MUL0_mult_17_U628 ( .A(MUL0_mult_17_n660), .B(MUL0_mult_17_n520), 
        .ZN(MUL0_mult_17_n111) );
  NOR3_X1 MUL0_mult_17_U627 ( .A1(MUL0_mult_17_n514), .A2(A[130]), .A3(
        MUL0_mult_17_n516), .ZN(MUL0_mult_17_n193) );
  OR3_X1 MUL0_mult_17_U626 ( .A1(MUL0_mult_17_n568), .A2(A[130]), .A3(
        MUL0_mult_17_n521), .ZN(MUL0_mult_17_n659) );
  OAI21_X1 MUL0_mult_17_U625 ( .B1(MUL0_mult_17_n521), .B2(MUL0_mult_17_n567), 
        .A(MUL0_mult_17_n659), .ZN(MUL0_mult_17_n194) );
  XNOR2_X1 MUL0_mult_17_U624 ( .A(MUL0_mult_17_n526), .B(SAMPLES[138]), .ZN(
        MUL0_mult_17_n658) );
  NAND2_X1 MUL0_mult_17_U623 ( .A1(MUL0_mult_17_n564), .A2(MUL0_mult_17_n658), 
        .ZN(MUL0_mult_17_n563) );
  OR3_X1 MUL0_mult_17_U622 ( .A1(MUL0_mult_17_n564), .A2(A[130]), .A3(
        MUL0_mult_17_n526), .ZN(MUL0_mult_17_n657) );
  OAI21_X1 MUL0_mult_17_U621 ( .B1(MUL0_mult_17_n526), .B2(MUL0_mult_17_n563), 
        .A(MUL0_mult_17_n657), .ZN(MUL0_mult_17_n195) );
  XNOR2_X1 MUL0_mult_17_U620 ( .A(MUL0_mult_17_n531), .B(SAMPLES[136]), .ZN(
        MUL0_mult_17_n656) );
  NAND2_X1 MUL0_mult_17_U619 ( .A1(MUL0_mult_17_n560), .A2(MUL0_mult_17_n656), 
        .ZN(MUL0_mult_17_n559) );
  OR3_X1 MUL0_mult_17_U618 ( .A1(MUL0_mult_17_n560), .A2(A[130]), .A3(
        MUL0_mult_17_n531), .ZN(MUL0_mult_17_n655) );
  OAI21_X1 MUL0_mult_17_U617 ( .B1(MUL0_mult_17_n531), .B2(MUL0_mult_17_n559), 
        .A(MUL0_mult_17_n655), .ZN(MUL0_mult_17_n196) );
  XNOR2_X1 MUL0_mult_17_U616 ( .A(MUL0_mult_17_n536), .B(SAMPLES[134]), .ZN(
        MUL0_mult_17_n654) );
  NAND2_X1 MUL0_mult_17_U615 ( .A1(MUL0_mult_17_n556), .A2(MUL0_mult_17_n654), 
        .ZN(MUL0_mult_17_n555) );
  OR3_X1 MUL0_mult_17_U614 ( .A1(MUL0_mult_17_n556), .A2(A[130]), .A3(
        MUL0_mult_17_n536), .ZN(MUL0_mult_17_n653) );
  OAI21_X1 MUL0_mult_17_U613 ( .B1(MUL0_mult_17_n536), .B2(MUL0_mult_17_n555), 
        .A(MUL0_mult_17_n653), .ZN(MUL0_mult_17_n197) );
  XNOR2_X1 MUL0_mult_17_U612 ( .A(A[141]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n652) );
  NOR2_X1 MUL0_mult_17_U611 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n652), 
        .ZN(MUL0_mult_17_n201) );
  XNOR2_X1 MUL0_mult_17_U610 ( .A(A[140]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n651) );
  NOR2_X1 MUL0_mult_17_U609 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n651), 
        .ZN(MUL0_mult_17_n202) );
  XNOR2_X1 MUL0_mult_17_U608 ( .A(A[139]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n650) );
  NOR2_X1 MUL0_mult_17_U607 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n650), 
        .ZN(MUL0_mult_17_n203) );
  XNOR2_X1 MUL0_mult_17_U606 ( .A(A[138]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n649) );
  NOR2_X1 MUL0_mult_17_U605 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n649), 
        .ZN(MUL0_mult_17_n204) );
  XNOR2_X1 MUL0_mult_17_U604 ( .A(A[137]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n648) );
  NOR2_X1 MUL0_mult_17_U603 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n648), 
        .ZN(MUL0_mult_17_n205) );
  XNOR2_X1 MUL0_mult_17_U602 ( .A(A[136]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n647) );
  NOR2_X1 MUL0_mult_17_U601 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n647), 
        .ZN(MUL0_mult_17_n206) );
  XNOR2_X1 MUL0_mult_17_U600 ( .A(A[135]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n646) );
  NOR2_X1 MUL0_mult_17_U599 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n646), 
        .ZN(MUL0_mult_17_n207) );
  XNOR2_X1 MUL0_mult_17_U598 ( .A(A[134]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n645) );
  NOR2_X1 MUL0_mult_17_U597 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n645), 
        .ZN(MUL0_mult_17_n208) );
  XNOR2_X1 MUL0_mult_17_U596 ( .A(A[133]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n644) );
  NOR2_X1 MUL0_mult_17_U595 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n644), 
        .ZN(MUL0_mult_17_n209) );
  XNOR2_X1 MUL0_mult_17_U594 ( .A(A[132]), .B(SAMPLES[142]), .ZN(
        MUL0_mult_17_n643) );
  NOR2_X1 MUL0_mult_17_U593 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n643), 
        .ZN(MUL0_mult_17_n210) );
  NOR2_X1 MUL0_mult_17_U592 ( .A1(MUL0_mult_17_n516), .A2(MUL0_mult_17_n546), 
        .ZN(MUL0_mult_17_n212) );
  XNOR2_X1 MUL0_mult_17_U591 ( .A(A[142]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n569) );
  OAI22_X1 MUL0_mult_17_U590 ( .A1(MUL0_mult_17_n569), .A2(MUL0_mult_17_n568), 
        .B1(MUL0_mult_17_n567), .B2(MUL0_mult_17_n569), .ZN(MUL0_mult_17_n642)
         );
  XNOR2_X1 MUL0_mult_17_U589 ( .A(A[140]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n641) );
  XNOR2_X1 MUL0_mult_17_U588 ( .A(A[141]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n566) );
  OAI22_X1 MUL0_mult_17_U587 ( .A1(MUL0_mult_17_n641), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n566), .ZN(MUL0_mult_17_n214)
         );
  XNOR2_X1 MUL0_mult_17_U586 ( .A(A[139]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n640) );
  OAI22_X1 MUL0_mult_17_U585 ( .A1(MUL0_mult_17_n640), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n641), .ZN(MUL0_mult_17_n215)
         );
  XNOR2_X1 MUL0_mult_17_U584 ( .A(A[138]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n639) );
  OAI22_X1 MUL0_mult_17_U583 ( .A1(MUL0_mult_17_n639), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n640), .ZN(MUL0_mult_17_n216)
         );
  XNOR2_X1 MUL0_mult_17_U582 ( .A(A[137]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n638) );
  OAI22_X1 MUL0_mult_17_U581 ( .A1(MUL0_mult_17_n638), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n639), .ZN(MUL0_mult_17_n217)
         );
  XNOR2_X1 MUL0_mult_17_U580 ( .A(A[136]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n637) );
  OAI22_X1 MUL0_mult_17_U579 ( .A1(MUL0_mult_17_n637), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n638), .ZN(MUL0_mult_17_n218)
         );
  XNOR2_X1 MUL0_mult_17_U578 ( .A(A[135]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n636) );
  OAI22_X1 MUL0_mult_17_U577 ( .A1(MUL0_mult_17_n636), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n637), .ZN(MUL0_mult_17_n219)
         );
  XNOR2_X1 MUL0_mult_17_U576 ( .A(A[134]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n635) );
  OAI22_X1 MUL0_mult_17_U575 ( .A1(MUL0_mult_17_n635), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n636), .ZN(MUL0_mult_17_n220)
         );
  OAI22_X1 MUL0_mult_17_U574 ( .A1(MUL0_mult_17_n634), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n635), .ZN(MUL0_mult_17_n221)
         );
  XNOR2_X1 MUL0_mult_17_U573 ( .A(A[131]), .B(SAMPLES[141]), .ZN(
        MUL0_mult_17_n632) );
  OAI22_X1 MUL0_mult_17_U572 ( .A1(MUL0_mult_17_n632), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n633), .ZN(MUL0_mult_17_n223)
         );
  XNOR2_X1 MUL0_mult_17_U571 ( .A(SAMPLES[141]), .B(A[130]), .ZN(
        MUL0_mult_17_n631) );
  OAI22_X1 MUL0_mult_17_U570 ( .A1(MUL0_mult_17_n631), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n632), .ZN(MUL0_mult_17_n224)
         );
  NOR2_X1 MUL0_mult_17_U569 ( .A1(MUL0_mult_17_n568), .A2(MUL0_mult_17_n546), 
        .ZN(MUL0_mult_17_n225) );
  XNOR2_X1 MUL0_mult_17_U568 ( .A(A[142]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n565) );
  OAI22_X1 MUL0_mult_17_U567 ( .A1(MUL0_mult_17_n565), .A2(MUL0_mult_17_n564), 
        .B1(MUL0_mult_17_n563), .B2(MUL0_mult_17_n565), .ZN(MUL0_mult_17_n630)
         );
  XNOR2_X1 MUL0_mult_17_U566 ( .A(A[140]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n629) );
  XNOR2_X1 MUL0_mult_17_U565 ( .A(A[141]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n562) );
  OAI22_X1 MUL0_mult_17_U564 ( .A1(MUL0_mult_17_n629), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n562), .ZN(MUL0_mult_17_n227)
         );
  XNOR2_X1 MUL0_mult_17_U563 ( .A(A[139]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n628) );
  OAI22_X1 MUL0_mult_17_U562 ( .A1(MUL0_mult_17_n628), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n629), .ZN(MUL0_mult_17_n228)
         );
  XNOR2_X1 MUL0_mult_17_U561 ( .A(A[138]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n627) );
  OAI22_X1 MUL0_mult_17_U560 ( .A1(MUL0_mult_17_n627), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n628), .ZN(MUL0_mult_17_n229)
         );
  XNOR2_X1 MUL0_mult_17_U559 ( .A(A[137]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n626) );
  OAI22_X1 MUL0_mult_17_U558 ( .A1(MUL0_mult_17_n626), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n627), .ZN(MUL0_mult_17_n230)
         );
  XNOR2_X1 MUL0_mult_17_U557 ( .A(A[136]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n625) );
  OAI22_X1 MUL0_mult_17_U556 ( .A1(MUL0_mult_17_n625), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n626), .ZN(MUL0_mult_17_n231)
         );
  XNOR2_X1 MUL0_mult_17_U555 ( .A(A[135]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n624) );
  OAI22_X1 MUL0_mult_17_U554 ( .A1(MUL0_mult_17_n624), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n625), .ZN(MUL0_mult_17_n232)
         );
  XNOR2_X1 MUL0_mult_17_U553 ( .A(A[134]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n623) );
  OAI22_X1 MUL0_mult_17_U552 ( .A1(MUL0_mult_17_n623), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n624), .ZN(MUL0_mult_17_n233)
         );
  XNOR2_X1 MUL0_mult_17_U551 ( .A(A[133]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n622) );
  OAI22_X1 MUL0_mult_17_U550 ( .A1(MUL0_mult_17_n622), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n623), .ZN(MUL0_mult_17_n234)
         );
  XNOR2_X1 MUL0_mult_17_U549 ( .A(A[132]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n621) );
  OAI22_X1 MUL0_mult_17_U548 ( .A1(MUL0_mult_17_n621), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n622), .ZN(MUL0_mult_17_n235)
         );
  XNOR2_X1 MUL0_mult_17_U547 ( .A(A[131]), .B(SAMPLES[139]), .ZN(
        MUL0_mult_17_n620) );
  OAI22_X1 MUL0_mult_17_U546 ( .A1(MUL0_mult_17_n620), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n621), .ZN(MUL0_mult_17_n236)
         );
  XNOR2_X1 MUL0_mult_17_U545 ( .A(SAMPLES[139]), .B(A[130]), .ZN(
        MUL0_mult_17_n619) );
  OAI22_X1 MUL0_mult_17_U544 ( .A1(MUL0_mult_17_n619), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n620), .ZN(MUL0_mult_17_n237)
         );
  NOR2_X1 MUL0_mult_17_U543 ( .A1(MUL0_mult_17_n564), .A2(MUL0_mult_17_n546), 
        .ZN(MUL0_mult_17_n238) );
  XNOR2_X1 MUL0_mult_17_U542 ( .A(A[142]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n561) );
  OAI22_X1 MUL0_mult_17_U541 ( .A1(MUL0_mult_17_n561), .A2(MUL0_mult_17_n560), 
        .B1(MUL0_mult_17_n559), .B2(MUL0_mult_17_n561), .ZN(MUL0_mult_17_n618)
         );
  XNOR2_X1 MUL0_mult_17_U540 ( .A(A[140]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n617) );
  XNOR2_X1 MUL0_mult_17_U539 ( .A(A[141]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n558) );
  OAI22_X1 MUL0_mult_17_U538 ( .A1(MUL0_mult_17_n617), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n558), .ZN(MUL0_mult_17_n240)
         );
  XNOR2_X1 MUL0_mult_17_U537 ( .A(A[139]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n616) );
  OAI22_X1 MUL0_mult_17_U536 ( .A1(MUL0_mult_17_n616), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n617), .ZN(MUL0_mult_17_n241)
         );
  XNOR2_X1 MUL0_mult_17_U535 ( .A(A[138]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n615) );
  OAI22_X1 MUL0_mult_17_U534 ( .A1(MUL0_mult_17_n615), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n616), .ZN(MUL0_mult_17_n242)
         );
  XNOR2_X1 MUL0_mult_17_U533 ( .A(A[137]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n614) );
  OAI22_X1 MUL0_mult_17_U532 ( .A1(MUL0_mult_17_n614), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n615), .ZN(MUL0_mult_17_n243)
         );
  XNOR2_X1 MUL0_mult_17_U531 ( .A(A[136]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n613) );
  OAI22_X1 MUL0_mult_17_U530 ( .A1(MUL0_mult_17_n613), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n614), .ZN(MUL0_mult_17_n244)
         );
  XNOR2_X1 MUL0_mult_17_U529 ( .A(A[135]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n612) );
  OAI22_X1 MUL0_mult_17_U528 ( .A1(MUL0_mult_17_n612), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n613), .ZN(MUL0_mult_17_n245)
         );
  XNOR2_X1 MUL0_mult_17_U527 ( .A(A[134]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n611) );
  OAI22_X1 MUL0_mult_17_U526 ( .A1(MUL0_mult_17_n611), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n612), .ZN(MUL0_mult_17_n246)
         );
  XNOR2_X1 MUL0_mult_17_U525 ( .A(A[133]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n610) );
  OAI22_X1 MUL0_mult_17_U524 ( .A1(MUL0_mult_17_n610), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n611), .ZN(MUL0_mult_17_n247)
         );
  XNOR2_X1 MUL0_mult_17_U523 ( .A(A[132]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n609) );
  OAI22_X1 MUL0_mult_17_U522 ( .A1(MUL0_mult_17_n609), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n610), .ZN(MUL0_mult_17_n248)
         );
  XNOR2_X1 MUL0_mult_17_U521 ( .A(A[131]), .B(SAMPLES[137]), .ZN(
        MUL0_mult_17_n608) );
  OAI22_X1 MUL0_mult_17_U520 ( .A1(MUL0_mult_17_n608), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n609), .ZN(MUL0_mult_17_n249)
         );
  XNOR2_X1 MUL0_mult_17_U519 ( .A(SAMPLES[137]), .B(A[130]), .ZN(
        MUL0_mult_17_n607) );
  OAI22_X1 MUL0_mult_17_U518 ( .A1(MUL0_mult_17_n607), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n608), .ZN(MUL0_mult_17_n250)
         );
  NOR2_X1 MUL0_mult_17_U517 ( .A1(MUL0_mult_17_n560), .A2(MUL0_mult_17_n546), 
        .ZN(MUL0_mult_17_n251) );
  XNOR2_X1 MUL0_mult_17_U516 ( .A(A[142]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n557) );
  OAI22_X1 MUL0_mult_17_U515 ( .A1(MUL0_mult_17_n557), .A2(MUL0_mult_17_n556), 
        .B1(MUL0_mult_17_n555), .B2(MUL0_mult_17_n557), .ZN(MUL0_mult_17_n606)
         );
  XNOR2_X1 MUL0_mult_17_U514 ( .A(A[140]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n605) );
  XNOR2_X1 MUL0_mult_17_U513 ( .A(A[141]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n554) );
  OAI22_X1 MUL0_mult_17_U512 ( .A1(MUL0_mult_17_n605), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n554), .ZN(MUL0_mult_17_n253)
         );
  XNOR2_X1 MUL0_mult_17_U511 ( .A(A[139]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n604) );
  OAI22_X1 MUL0_mult_17_U510 ( .A1(MUL0_mult_17_n604), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n605), .ZN(MUL0_mult_17_n254)
         );
  XNOR2_X1 MUL0_mult_17_U509 ( .A(A[138]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n603) );
  OAI22_X1 MUL0_mult_17_U508 ( .A1(MUL0_mult_17_n603), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n604), .ZN(MUL0_mult_17_n255)
         );
  XNOR2_X1 MUL0_mult_17_U507 ( .A(A[137]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n602) );
  OAI22_X1 MUL0_mult_17_U506 ( .A1(MUL0_mult_17_n602), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n603), .ZN(MUL0_mult_17_n256)
         );
  XNOR2_X1 MUL0_mult_17_U505 ( .A(A[136]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n601) );
  OAI22_X1 MUL0_mult_17_U504 ( .A1(MUL0_mult_17_n601), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n602), .ZN(MUL0_mult_17_n257)
         );
  XNOR2_X1 MUL0_mult_17_U503 ( .A(A[135]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n600) );
  OAI22_X1 MUL0_mult_17_U502 ( .A1(MUL0_mult_17_n600), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n601), .ZN(MUL0_mult_17_n258)
         );
  XNOR2_X1 MUL0_mult_17_U501 ( .A(A[134]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n599) );
  OAI22_X1 MUL0_mult_17_U500 ( .A1(MUL0_mult_17_n599), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n600), .ZN(MUL0_mult_17_n259)
         );
  XNOR2_X1 MUL0_mult_17_U499 ( .A(A[133]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n598) );
  OAI22_X1 MUL0_mult_17_U498 ( .A1(MUL0_mult_17_n598), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n599), .ZN(MUL0_mult_17_n260)
         );
  XNOR2_X1 MUL0_mult_17_U497 ( .A(A[132]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n597) );
  OAI22_X1 MUL0_mult_17_U496 ( .A1(MUL0_mult_17_n597), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n598), .ZN(MUL0_mult_17_n261)
         );
  XNOR2_X1 MUL0_mult_17_U495 ( .A(A[131]), .B(SAMPLES[135]), .ZN(
        MUL0_mult_17_n596) );
  OAI22_X1 MUL0_mult_17_U494 ( .A1(MUL0_mult_17_n596), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n597), .ZN(MUL0_mult_17_n262)
         );
  XNOR2_X1 MUL0_mult_17_U493 ( .A(SAMPLES[135]), .B(A[130]), .ZN(
        MUL0_mult_17_n595) );
  OAI22_X1 MUL0_mult_17_U492 ( .A1(MUL0_mult_17_n595), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n596), .ZN(MUL0_mult_17_n263)
         );
  NOR2_X1 MUL0_mult_17_U491 ( .A1(MUL0_mult_17_n556), .A2(MUL0_mult_17_n546), 
        .ZN(MUL0_mult_17_n264) );
  XOR2_X1 MUL0_mult_17_U490 ( .A(A[142]), .B(MUL0_mult_17_n541), .Z(
        MUL0_mult_17_n553) );
  OAI22_X1 MUL0_mult_17_U489 ( .A1(MUL0_mult_17_n553), .A2(MUL0_mult_17_n542), 
        .B1(MUL0_mult_17_n552), .B2(MUL0_mult_17_n553), .ZN(MUL0_mult_17_n594)
         );
  XNOR2_X1 MUL0_mult_17_U488 ( .A(A[140]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n593) );
  XNOR2_X1 MUL0_mult_17_U487 ( .A(A[141]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n551) );
  OAI22_X1 MUL0_mult_17_U486 ( .A1(MUL0_mult_17_n593), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n551), .ZN(MUL0_mult_17_n266)
         );
  XNOR2_X1 MUL0_mult_17_U485 ( .A(A[139]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n592) );
  OAI22_X1 MUL0_mult_17_U484 ( .A1(MUL0_mult_17_n592), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n593), .ZN(MUL0_mult_17_n267)
         );
  XNOR2_X1 MUL0_mult_17_U483 ( .A(A[138]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n591) );
  OAI22_X1 MUL0_mult_17_U482 ( .A1(MUL0_mult_17_n591), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n592), .ZN(MUL0_mult_17_n268)
         );
  XNOR2_X1 MUL0_mult_17_U481 ( .A(A[137]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n590) );
  OAI22_X1 MUL0_mult_17_U480 ( .A1(MUL0_mult_17_n590), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n591), .ZN(MUL0_mult_17_n269)
         );
  XNOR2_X1 MUL0_mult_17_U479 ( .A(A[136]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n589) );
  OAI22_X1 MUL0_mult_17_U478 ( .A1(MUL0_mult_17_n589), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n590), .ZN(MUL0_mult_17_n270)
         );
  XNOR2_X1 MUL0_mult_17_U477 ( .A(A[135]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n588) );
  OAI22_X1 MUL0_mult_17_U476 ( .A1(MUL0_mult_17_n588), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n589), .ZN(MUL0_mult_17_n271)
         );
  XNOR2_X1 MUL0_mult_17_U475 ( .A(A[134]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n587) );
  OAI22_X1 MUL0_mult_17_U474 ( .A1(MUL0_mult_17_n587), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n588), .ZN(MUL0_mult_17_n272)
         );
  XNOR2_X1 MUL0_mult_17_U473 ( .A(A[133]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n586) );
  OAI22_X1 MUL0_mult_17_U472 ( .A1(MUL0_mult_17_n586), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n587), .ZN(MUL0_mult_17_n273)
         );
  XNOR2_X1 MUL0_mult_17_U471 ( .A(A[132]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n585) );
  OAI22_X1 MUL0_mult_17_U470 ( .A1(MUL0_mult_17_n585), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n586), .ZN(MUL0_mult_17_n274)
         );
  XNOR2_X1 MUL0_mult_17_U469 ( .A(A[131]), .B(SAMPLES[133]), .ZN(
        MUL0_mult_17_n584) );
  OAI22_X1 MUL0_mult_17_U468 ( .A1(MUL0_mult_17_n584), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n585), .ZN(MUL0_mult_17_n275)
         );
  XNOR2_X1 MUL0_mult_17_U467 ( .A(SAMPLES[133]), .B(A[130]), .ZN(
        MUL0_mult_17_n583) );
  OAI22_X1 MUL0_mult_17_U466 ( .A1(MUL0_mult_17_n583), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n584), .ZN(MUL0_mult_17_n276)
         );
  XNOR2_X1 MUL0_mult_17_U465 ( .A(A[142]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n581) );
  OAI22_X1 MUL0_mult_17_U464 ( .A1(MUL0_mult_17_n544), .A2(MUL0_mult_17_n581), 
        .B1(MUL0_mult_17_n571), .B2(MUL0_mult_17_n581), .ZN(MUL0_mult_17_n582)
         );
  XNOR2_X1 MUL0_mult_17_U463 ( .A(A[141]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n580) );
  OAI22_X1 MUL0_mult_17_U462 ( .A1(MUL0_mult_17_n580), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n581), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n279)
         );
  XNOR2_X1 MUL0_mult_17_U461 ( .A(A[140]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n579) );
  OAI22_X1 MUL0_mult_17_U460 ( .A1(MUL0_mult_17_n579), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n580), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n280)
         );
  XNOR2_X1 MUL0_mult_17_U459 ( .A(A[139]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n578) );
  OAI22_X1 MUL0_mult_17_U458 ( .A1(MUL0_mult_17_n578), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n579), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n281)
         );
  XNOR2_X1 MUL0_mult_17_U457 ( .A(A[138]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n577) );
  OAI22_X1 MUL0_mult_17_U456 ( .A1(MUL0_mult_17_n577), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n578), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n282)
         );
  XNOR2_X1 MUL0_mult_17_U455 ( .A(A[137]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n576) );
  OAI22_X1 MUL0_mult_17_U454 ( .A1(MUL0_mult_17_n576), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n577), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n283)
         );
  XNOR2_X1 MUL0_mult_17_U453 ( .A(A[136]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n575) );
  OAI22_X1 MUL0_mult_17_U452 ( .A1(MUL0_mult_17_n575), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n576), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n284)
         );
  XNOR2_X1 MUL0_mult_17_U451 ( .A(A[135]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n574) );
  OAI22_X1 MUL0_mult_17_U450 ( .A1(MUL0_mult_17_n574), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n575), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n285)
         );
  XNOR2_X1 MUL0_mult_17_U449 ( .A(A[134]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n573) );
  OAI22_X1 MUL0_mult_17_U448 ( .A1(MUL0_mult_17_n573), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n574), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n286)
         );
  XNOR2_X1 MUL0_mult_17_U447 ( .A(A[133]), .B(SAMPLES[131]), .ZN(
        MUL0_mult_17_n572) );
  OAI22_X1 MUL0_mult_17_U446 ( .A1(MUL0_mult_17_n572), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n573), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n287)
         );
  OAI22_X1 MUL0_mult_17_U445 ( .A1(MUL0_mult_17_n570), .A2(MUL0_mult_17_n571), 
        .B1(MUL0_mult_17_n572), .B2(MUL0_mult_17_n544), .ZN(MUL0_mult_17_n288)
         );
  XNOR2_X1 MUL0_mult_17_U444 ( .A(A[142]), .B(MUL0_mult_17_n514), .ZN(
        MUL0_mult_17_n550) );
  NAND2_X1 MUL0_mult_17_U443 ( .A1(MUL0_mult_17_n550), .A2(MUL0_mult_17_n549), 
        .ZN(MUL0_mult_17_n29) );
  OAI22_X1 MUL0_mult_17_U442 ( .A1(MUL0_mult_17_n566), .A2(MUL0_mult_17_n567), 
        .B1(MUL0_mult_17_n568), .B2(MUL0_mult_17_n569), .ZN(MUL0_mult_17_n34)
         );
  OAI22_X1 MUL0_mult_17_U441 ( .A1(MUL0_mult_17_n562), .A2(MUL0_mult_17_n563), 
        .B1(MUL0_mult_17_n564), .B2(MUL0_mult_17_n565), .ZN(MUL0_mult_17_n44)
         );
  OAI22_X1 MUL0_mult_17_U440 ( .A1(MUL0_mult_17_n558), .A2(MUL0_mult_17_n559), 
        .B1(MUL0_mult_17_n560), .B2(MUL0_mult_17_n561), .ZN(MUL0_mult_17_n58)
         );
  OAI22_X1 MUL0_mult_17_U439 ( .A1(MUL0_mult_17_n554), .A2(MUL0_mult_17_n555), 
        .B1(MUL0_mult_17_n556), .B2(MUL0_mult_17_n557), .ZN(MUL0_mult_17_n76)
         );
  OAI22_X1 MUL0_mult_17_U438 ( .A1(MUL0_mult_17_n551), .A2(MUL0_mult_17_n552), 
        .B1(MUL0_mult_17_n542), .B2(MUL0_mult_17_n553), .ZN(MUL0_mult_17_n98)
         );
  NOR2_X1 MUL0_mult_17_U437 ( .A1(MUL0_mult_17_n544), .A2(MUL0_mult_17_n546), 
        .ZN(MUL0_O_0_) );
  XOR2_X1 MUL0_mult_17_U436 ( .A(MUL0_mult_17_n29), .B(MUL0_mult_17_n4), .Z(
        MUL0_mult_17_n547) );
  AND2_X1 MUL0_mult_17_U435 ( .A1(MUL0_mult_17_n549), .A2(MUL0_mult_17_n550), 
        .ZN(MUL0_mult_17_n548) );
  XOR2_X1 MUL0_mult_17_U434 ( .A(MUL0_mult_17_n547), .B(MUL0_mult_17_n548), 
        .Z(MULT_RESULTS_0__25_) );
  XOR2_X2 MUL0_mult_17_U433 ( .A(SAMPLES[140]), .B(MUL0_mult_17_n526), .Z(
        MUL0_mult_17_n568) );
  XOR2_X2 MUL0_mult_17_U432 ( .A(SAMPLES[138]), .B(MUL0_mult_17_n531), .Z(
        MUL0_mult_17_n564) );
  XOR2_X2 MUL0_mult_17_U431 ( .A(SAMPLES[136]), .B(MUL0_mult_17_n536), .Z(
        MUL0_mult_17_n560) );
  XOR2_X2 MUL0_mult_17_U430 ( .A(SAMPLES[134]), .B(MUL0_mult_17_n541), .Z(
        MUL0_mult_17_n556) );
  INV_X1 MUL0_mult_17_U429 ( .A(MUL0_mult_17_n642), .ZN(MUL0_mult_17_n519) );
  INV_X1 MUL0_mult_17_U428 ( .A(MUL0_mult_17_n34), .ZN(MUL0_mult_17_n518) );
  INV_X1 MUL0_mult_17_U427 ( .A(MUL0_mult_17_n594), .ZN(MUL0_mult_17_n540) );
  INV_X1 MUL0_mult_17_U426 ( .A(SAMPLES[142]), .ZN(MUL0_mult_17_n514) );
  INV_X1 MUL0_mult_17_U425 ( .A(A[131]), .ZN(MUL0_mult_17_n545) );
  AND3_X1 MUL0_mult_17_U424 ( .A1(MUL0_mult_17_n683), .A2(MUL0_mult_17_n545), 
        .A3(SAMPLES[131]), .ZN(MUL0_mult_17_n508) );
  AND2_X1 MUL0_mult_17_U423 ( .A1(MUL0_mult_17_n681), .A2(MUL0_mult_17_n683), 
        .ZN(MUL0_mult_17_n507) );
  MUX2_X1 MUL0_mult_17_U422 ( .A(MUL0_mult_17_n507), .B(MUL0_mult_17_n508), 
        .S(MUL0_mult_17_n546), .Z(MUL0_mult_17_n506) );
  INV_X1 MUL0_mult_17_U421 ( .A(A[130]), .ZN(MUL0_mult_17_n546) );
  INV_X1 MUL0_mult_17_U420 ( .A(SAMPLES[141]), .ZN(MUL0_mult_17_n521) );
  INV_X1 MUL0_mult_17_U419 ( .A(SAMPLES[139]), .ZN(MUL0_mult_17_n526) );
  INV_X1 MUL0_mult_17_U418 ( .A(SAMPLES[137]), .ZN(MUL0_mult_17_n531) );
  INV_X1 MUL0_mult_17_U417 ( .A(SAMPLES[135]), .ZN(MUL0_mult_17_n536) );
  INV_X1 MUL0_mult_17_U416 ( .A(SAMPLES[133]), .ZN(MUL0_mult_17_n541) );
  INV_X1 MUL0_mult_17_U415 ( .A(SAMPLES[130]), .ZN(MUL0_mult_17_n544) );
  INV_X1 MUL0_mult_17_U414 ( .A(MUL0_mult_17_n630), .ZN(MUL0_mult_17_n525) );
  INV_X1 MUL0_mult_17_U413 ( .A(MUL0_mult_17_n662), .ZN(MUL0_mult_17_n520) );
  INV_X1 MUL0_mult_17_U412 ( .A(MUL0_mult_17_n606), .ZN(MUL0_mult_17_n535) );
  INV_X1 MUL0_mult_17_U411 ( .A(MUL0_mult_17_n76), .ZN(MUL0_mult_17_n534) );
  INV_X1 MUL0_mult_17_U410 ( .A(MUL0_mult_17_n618), .ZN(MUL0_mult_17_n530) );
  INV_X1 MUL0_mult_17_U409 ( .A(MUL0_mult_17_n98), .ZN(MUL0_mult_17_n539) );
  INV_X1 MUL0_mult_17_U408 ( .A(MUL0_mult_17_n44), .ZN(MUL0_mult_17_n524) );
  INV_X1 MUL0_mult_17_U407 ( .A(MUL0_mult_17_n582), .ZN(MUL0_mult_17_n543) );
  INV_X1 MUL0_mult_17_U406 ( .A(MUL0_mult_17_n549), .ZN(MUL0_mult_17_n516) );
  INV_X1 MUL0_mult_17_U405 ( .A(MUL0_mult_17_n681), .ZN(MUL0_mult_17_n542) );
  INV_X1 MUL0_mult_17_U404 ( .A(MUL0_mult_17_n678), .ZN(MUL0_mult_17_n538) );
  INV_X1 MUL0_mult_17_U403 ( .A(MUL0_mult_17_n677), .ZN(MUL0_mult_17_n537) );
  INV_X1 MUL0_mult_17_U402 ( .A(MUL0_mult_17_n58), .ZN(MUL0_mult_17_n529) );
  INV_X1 MUL0_mult_17_U401 ( .A(MUL0_mult_17_n676), .ZN(MUL0_mult_17_n533) );
  INV_X1 MUL0_mult_17_U400 ( .A(MUL0_mult_17_n675), .ZN(MUL0_mult_17_n532) );
  INV_X1 MUL0_mult_17_U399 ( .A(MUL0_mult_17_n664), .ZN(MUL0_mult_17_n509) );
  INV_X1 MUL0_mult_17_U398 ( .A(MUL0_mult_17_n674), .ZN(MUL0_mult_17_n528) );
  INV_X1 MUL0_mult_17_U397 ( .A(MUL0_mult_17_n673), .ZN(MUL0_mult_17_n527) );
  INV_X1 MUL0_mult_17_U396 ( .A(MUL0_mult_17_n668), .ZN(MUL0_mult_17_n513) );
  INV_X1 MUL0_mult_17_U395 ( .A(MUL0_mult_17_n667), .ZN(MUL0_mult_17_n512) );
  INV_X1 MUL0_mult_17_U394 ( .A(MUL0_mult_17_n670), .ZN(MUL0_mult_17_n517) );
  INV_X1 MUL0_mult_17_U393 ( .A(MUL0_mult_17_n669), .ZN(MUL0_mult_17_n515) );
  INV_X1 MUL0_mult_17_U392 ( .A(MUL0_mult_17_n672), .ZN(MUL0_mult_17_n523) );
  INV_X1 MUL0_mult_17_U391 ( .A(MUL0_mult_17_n671), .ZN(MUL0_mult_17_n522) );
  INV_X1 MUL0_mult_17_U390 ( .A(MUL0_mult_17_n666), .ZN(MUL0_mult_17_n511) );
  INV_X1 MUL0_mult_17_U389 ( .A(MUL0_mult_17_n665), .ZN(MUL0_mult_17_n510) );
  HA_X1 MUL0_mult_17_U101 ( .A(MUL0_mult_17_n276), .B(MUL0_mult_17_n288), .CO(
        MUL0_mult_17_n170), .S(MUL0_mult_17_n171) );
  FA_X1 MUL0_mult_17_U100 ( .A(MUL0_mult_17_n287), .B(MUL0_mult_17_n264), .CI(
        MUL0_mult_17_n275), .CO(MUL0_mult_17_n168), .S(MUL0_mult_17_n169) );
  HA_X1 MUL0_mult_17_U99 ( .A(MUL0_mult_17_n197), .B(MUL0_mult_17_n263), .CO(
        MUL0_mult_17_n166), .S(MUL0_mult_17_n167) );
  FA_X1 MUL0_mult_17_U98 ( .A(MUL0_mult_17_n274), .B(MUL0_mult_17_n286), .CI(
        MUL0_mult_17_n167), .CO(MUL0_mult_17_n164), .S(MUL0_mult_17_n165) );
  FA_X1 MUL0_mult_17_U97 ( .A(MUL0_mult_17_n285), .B(MUL0_mult_17_n251), .CI(
        MUL0_mult_17_n273), .CO(MUL0_mult_17_n162), .S(MUL0_mult_17_n163) );
  FA_X1 MUL0_mult_17_U96 ( .A(MUL0_mult_17_n166), .B(MUL0_mult_17_n262), .CI(
        MUL0_mult_17_n163), .CO(MUL0_mult_17_n160), .S(MUL0_mult_17_n161) );
  HA_X1 MUL0_mult_17_U95 ( .A(MUL0_mult_17_n196), .B(MUL0_mult_17_n250), .CO(
        MUL0_mult_17_n158), .S(MUL0_mult_17_n159) );
  FA_X1 MUL0_mult_17_U94 ( .A(MUL0_mult_17_n261), .B(MUL0_mult_17_n284), .CI(
        MUL0_mult_17_n272), .CO(MUL0_mult_17_n156), .S(MUL0_mult_17_n157) );
  FA_X1 MUL0_mult_17_U93 ( .A(MUL0_mult_17_n162), .B(MUL0_mult_17_n159), .CI(
        MUL0_mult_17_n157), .CO(MUL0_mult_17_n154), .S(MUL0_mult_17_n155) );
  FA_X1 MUL0_mult_17_U92 ( .A(MUL0_mult_17_n260), .B(MUL0_mult_17_n238), .CI(
        MUL0_mult_17_n283), .CO(MUL0_mult_17_n152), .S(MUL0_mult_17_n153) );
  FA_X1 MUL0_mult_17_U91 ( .A(MUL0_mult_17_n249), .B(MUL0_mult_17_n271), .CI(
        MUL0_mult_17_n158), .CO(MUL0_mult_17_n150), .S(MUL0_mult_17_n151) );
  FA_X1 MUL0_mult_17_U90 ( .A(MUL0_mult_17_n153), .B(MUL0_mult_17_n156), .CI(
        MUL0_mult_17_n151), .CO(MUL0_mult_17_n148), .S(MUL0_mult_17_n149) );
  HA_X1 MUL0_mult_17_U89 ( .A(MUL0_mult_17_n195), .B(MUL0_mult_17_n237), .CO(
        MUL0_mult_17_n146), .S(MUL0_mult_17_n147) );
  FA_X1 MUL0_mult_17_U88 ( .A(MUL0_mult_17_n248), .B(MUL0_mult_17_n259), .CI(
        MUL0_mult_17_n270), .CO(MUL0_mult_17_n144), .S(MUL0_mult_17_n145) );
  FA_X1 MUL0_mult_17_U87 ( .A(MUL0_mult_17_n147), .B(MUL0_mult_17_n282), .CI(
        MUL0_mult_17_n152), .CO(MUL0_mult_17_n142), .S(MUL0_mult_17_n143) );
  FA_X1 MUL0_mult_17_U86 ( .A(MUL0_mult_17_n145), .B(MUL0_mult_17_n150), .CI(
        MUL0_mult_17_n143), .CO(MUL0_mult_17_n140), .S(MUL0_mult_17_n141) );
  FA_X1 MUL0_mult_17_U85 ( .A(MUL0_mult_17_n247), .B(MUL0_mult_17_n225), .CI(
        MUL0_mult_17_n281), .CO(MUL0_mult_17_n138), .S(MUL0_mult_17_n139) );
  FA_X1 MUL0_mult_17_U84 ( .A(MUL0_mult_17_n236), .B(MUL0_mult_17_n269), .CI(
        MUL0_mult_17_n258), .CO(MUL0_mult_17_n136), .S(MUL0_mult_17_n137) );
  FA_X1 MUL0_mult_17_U83 ( .A(MUL0_mult_17_n144), .B(MUL0_mult_17_n146), .CI(
        MUL0_mult_17_n139), .CO(MUL0_mult_17_n134), .S(MUL0_mult_17_n135) );
  FA_X1 MUL0_mult_17_U82 ( .A(MUL0_mult_17_n142), .B(MUL0_mult_17_n137), .CI(
        MUL0_mult_17_n135), .CO(MUL0_mult_17_n132), .S(MUL0_mult_17_n133) );
  HA_X1 MUL0_mult_17_U81 ( .A(MUL0_mult_17_n194), .B(MUL0_mult_17_n224), .CO(
        MUL0_mult_17_n130), .S(MUL0_mult_17_n131) );
  FA_X1 MUL0_mult_17_U80 ( .A(MUL0_mult_17_n235), .B(MUL0_mult_17_n257), .CI(
        MUL0_mult_17_n280), .CO(MUL0_mult_17_n128), .S(MUL0_mult_17_n129) );
  FA_X1 MUL0_mult_17_U79 ( .A(MUL0_mult_17_n246), .B(MUL0_mult_17_n268), .CI(
        MUL0_mult_17_n131), .CO(MUL0_mult_17_n126), .S(MUL0_mult_17_n127) );
  FA_X1 MUL0_mult_17_U78 ( .A(MUL0_mult_17_n136), .B(MUL0_mult_17_n138), .CI(
        MUL0_mult_17_n129), .CO(MUL0_mult_17_n124), .S(MUL0_mult_17_n125) );
  FA_X1 MUL0_mult_17_U77 ( .A(MUL0_mult_17_n134), .B(MUL0_mult_17_n127), .CI(
        MUL0_mult_17_n125), .CO(MUL0_mult_17_n122), .S(MUL0_mult_17_n123) );
  FA_X1 MUL0_mult_17_U76 ( .A(MUL0_mult_17_n234), .B(MUL0_mult_17_n212), .CI(
        MUL0_mult_17_n279), .CO(MUL0_mult_17_n120), .S(MUL0_mult_17_n121) );
  FA_X1 MUL0_mult_17_U75 ( .A(MUL0_mult_17_n223), .B(MUL0_mult_17_n267), .CI(
        MUL0_mult_17_n245), .CO(MUL0_mult_17_n118), .S(MUL0_mult_17_n119) );
  FA_X1 MUL0_mult_17_U74 ( .A(MUL0_mult_17_n130), .B(MUL0_mult_17_n256), .CI(
        MUL0_mult_17_n128), .CO(MUL0_mult_17_n116), .S(MUL0_mult_17_n117) );
  FA_X1 MUL0_mult_17_U73 ( .A(MUL0_mult_17_n119), .B(MUL0_mult_17_n121), .CI(
        MUL0_mult_17_n126), .CO(MUL0_mult_17_n114), .S(MUL0_mult_17_n115) );
  FA_X1 MUL0_mult_17_U72 ( .A(MUL0_mult_17_n117), .B(MUL0_mult_17_n124), .CI(
        MUL0_mult_17_n115), .CO(MUL0_mult_17_n112), .S(MUL0_mult_17_n113) );
  FA_X1 MUL0_mult_17_U69 ( .A(MUL0_mult_17_n233), .B(MUL0_mult_17_n244), .CI(
        MUL0_mult_17_n543), .CO(MUL0_mult_17_n108), .S(MUL0_mult_17_n109) );
  FA_X1 MUL0_mult_17_U68 ( .A(MUL0_mult_17_n193), .B(MUL0_mult_17_n266), .CI(
        MUL0_mult_17_n255), .CO(MUL0_mult_17_n106), .S(MUL0_mult_17_n107) );
  FA_X1 MUL0_mult_17_U67 ( .A(MUL0_mult_17_n120), .B(MUL0_mult_17_n111), .CI(
        MUL0_mult_17_n118), .CO(MUL0_mult_17_n104), .S(MUL0_mult_17_n105) );
  FA_X1 MUL0_mult_17_U66 ( .A(MUL0_mult_17_n109), .B(MUL0_mult_17_n107), .CI(
        MUL0_mult_17_n116), .CO(MUL0_mult_17_n102), .S(MUL0_mult_17_n103) );
  FA_X1 MUL0_mult_17_U65 ( .A(MUL0_mult_17_n114), .B(MUL0_mult_17_n105), .CI(
        MUL0_mult_17_n103), .CO(MUL0_mult_17_n100), .S(MUL0_mult_17_n101) );
  FA_X1 MUL0_mult_17_U63 ( .A(MUL0_mult_17_n210), .B(MUL0_mult_17_n221), .CI(
        MUL0_mult_17_n254), .CO(MUL0_mult_17_n96), .S(MUL0_mult_17_n97) );
  FA_X1 MUL0_mult_17_U62 ( .A(MUL0_mult_17_n232), .B(MUL0_mult_17_n243), .CI(
        MUL0_mult_17_n539), .CO(MUL0_mult_17_n94), .S(MUL0_mult_17_n95) );
  FA_X1 MUL0_mult_17_U61 ( .A(MUL0_mult_17_n108), .B(MUL0_mult_17_n110), .CI(
        MUL0_mult_17_n106), .CO(MUL0_mult_17_n92), .S(MUL0_mult_17_n93) );
  FA_X1 MUL0_mult_17_U60 ( .A(MUL0_mult_17_n95), .B(MUL0_mult_17_n97), .CI(
        MUL0_mult_17_n104), .CO(MUL0_mult_17_n90), .S(MUL0_mult_17_n91) );
  FA_X1 MUL0_mult_17_U59 ( .A(MUL0_mult_17_n102), .B(MUL0_mult_17_n93), .CI(
        MUL0_mult_17_n91), .CO(MUL0_mult_17_n88), .S(MUL0_mult_17_n89) );
  FA_X1 MUL0_mult_17_U58 ( .A(MUL0_mult_17_n98), .B(MUL0_mult_17_n209), .CI(
        MUL0_mult_17_n540), .CO(MUL0_mult_17_n86), .S(MUL0_mult_17_n87) );
  FA_X1 MUL0_mult_17_U57 ( .A(MUL0_mult_17_n220), .B(MUL0_mult_17_n253), .CI(
        MUL0_mult_17_n231), .CO(MUL0_mult_17_n84), .S(MUL0_mult_17_n85) );
  FA_X1 MUL0_mult_17_U56 ( .A(MUL0_mult_17_n96), .B(MUL0_mult_17_n242), .CI(
        MUL0_mult_17_n94), .CO(MUL0_mult_17_n82), .S(MUL0_mult_17_n83) );
  FA_X1 MUL0_mult_17_U55 ( .A(MUL0_mult_17_n87), .B(MUL0_mult_17_n85), .CI(
        MUL0_mult_17_n92), .CO(MUL0_mult_17_n80), .S(MUL0_mult_17_n81) );
  FA_X1 MUL0_mult_17_U54 ( .A(MUL0_mult_17_n90), .B(MUL0_mult_17_n83), .CI(
        MUL0_mult_17_n81), .CO(MUL0_mult_17_n78), .S(MUL0_mult_17_n79) );
  FA_X1 MUL0_mult_17_U52 ( .A(MUL0_mult_17_n241), .B(MUL0_mult_17_n219), .CI(
        MUL0_mult_17_n208), .CO(MUL0_mult_17_n74), .S(MUL0_mult_17_n75) );
  FA_X1 MUL0_mult_17_U51 ( .A(MUL0_mult_17_n534), .B(MUL0_mult_17_n230), .CI(
        MUL0_mult_17_n86), .CO(MUL0_mult_17_n72), .S(MUL0_mult_17_n73) );
  FA_X1 MUL0_mult_17_U50 ( .A(MUL0_mult_17_n75), .B(MUL0_mult_17_n84), .CI(
        MUL0_mult_17_n82), .CO(MUL0_mult_17_n70), .S(MUL0_mult_17_n71) );
  FA_X1 MUL0_mult_17_U49 ( .A(MUL0_mult_17_n80), .B(MUL0_mult_17_n73), .CI(
        MUL0_mult_17_n71), .CO(MUL0_mult_17_n68), .S(MUL0_mult_17_n69) );
  FA_X1 MUL0_mult_17_U48 ( .A(MUL0_mult_17_n240), .B(MUL0_mult_17_n207), .CI(
        MUL0_mult_17_n535), .CO(MUL0_mult_17_n66), .S(MUL0_mult_17_n67) );
  FA_X1 MUL0_mult_17_U47 ( .A(MUL0_mult_17_n218), .B(MUL0_mult_17_n76), .CI(
        MUL0_mult_17_n229), .CO(MUL0_mult_17_n64), .S(MUL0_mult_17_n65) );
  FA_X1 MUL0_mult_17_U46 ( .A(MUL0_mult_17_n65), .B(MUL0_mult_17_n74), .CI(
        MUL0_mult_17_n67), .CO(MUL0_mult_17_n62), .S(MUL0_mult_17_n63) );
  FA_X1 MUL0_mult_17_U45 ( .A(MUL0_mult_17_n70), .B(MUL0_mult_17_n72), .CI(
        MUL0_mult_17_n63), .CO(MUL0_mult_17_n60), .S(MUL0_mult_17_n61) );
  FA_X1 MUL0_mult_17_U43 ( .A(MUL0_mult_17_n206), .B(MUL0_mult_17_n217), .CI(
        MUL0_mult_17_n228), .CO(MUL0_mult_17_n56), .S(MUL0_mult_17_n57) );
  FA_X1 MUL0_mult_17_U42 ( .A(MUL0_mult_17_n66), .B(MUL0_mult_17_n529), .CI(
        MUL0_mult_17_n64), .CO(MUL0_mult_17_n54), .S(MUL0_mult_17_n55) );
  FA_X1 MUL0_mult_17_U41 ( .A(MUL0_mult_17_n55), .B(MUL0_mult_17_n57), .CI(
        MUL0_mult_17_n62), .CO(MUL0_mult_17_n52), .S(MUL0_mult_17_n53) );
  FA_X1 MUL0_mult_17_U40 ( .A(MUL0_mult_17_n216), .B(MUL0_mult_17_n205), .CI(
        MUL0_mult_17_n530), .CO(MUL0_mult_17_n50), .S(MUL0_mult_17_n51) );
  FA_X1 MUL0_mult_17_U39 ( .A(MUL0_mult_17_n58), .B(MUL0_mult_17_n227), .CI(
        MUL0_mult_17_n56), .CO(MUL0_mult_17_n48), .S(MUL0_mult_17_n49) );
  FA_X1 MUL0_mult_17_U38 ( .A(MUL0_mult_17_n54), .B(MUL0_mult_17_n51), .CI(
        MUL0_mult_17_n49), .CO(MUL0_mult_17_n46), .S(MUL0_mult_17_n47) );
  FA_X1 MUL0_mult_17_U36 ( .A(MUL0_mult_17_n204), .B(MUL0_mult_17_n215), .CI(
        MUL0_mult_17_n524), .CO(MUL0_mult_17_n42), .S(MUL0_mult_17_n43) );
  FA_X1 MUL0_mult_17_U35 ( .A(MUL0_mult_17_n43), .B(MUL0_mult_17_n50), .CI(
        MUL0_mult_17_n48), .CO(MUL0_mult_17_n40), .S(MUL0_mult_17_n41) );
  FA_X1 MUL0_mult_17_U34 ( .A(MUL0_mult_17_n214), .B(MUL0_mult_17_n44), .CI(
        MUL0_mult_17_n525), .CO(MUL0_mult_17_n38), .S(MUL0_mult_17_n39) );
  FA_X1 MUL0_mult_17_U33 ( .A(MUL0_mult_17_n42), .B(MUL0_mult_17_n203), .CI(
        MUL0_mult_17_n39), .CO(MUL0_mult_17_n36), .S(MUL0_mult_17_n37) );
  FA_X1 MUL0_mult_17_U31 ( .A(MUL0_mult_17_n518), .B(MUL0_mult_17_n202), .CI(
        MUL0_mult_17_n38), .CO(MUL0_mult_17_n32), .S(MUL0_mult_17_n33) );
  FA_X1 MUL0_mult_17_U30 ( .A(MUL0_mult_17_n201), .B(MUL0_mult_17_n34), .CI(
        MUL0_mult_17_n519), .CO(MUL0_mult_17_n30), .S(MUL0_mult_17_n31) );
  FA_X1 MUL0_mult_17_U11 ( .A(MUL0_mult_17_n53), .B(MUL0_mult_17_n60), .CI(
        MUL0_mult_17_n509), .CO(MUL0_mult_17_n10), .S(MULT_RESULTS_0__18_) );
  FA_X1 MUL0_mult_17_U10 ( .A(MUL0_mult_17_n47), .B(MUL0_mult_17_n52), .CI(
        MUL0_mult_17_n10), .CO(MUL0_mult_17_n9), .S(MULT_RESULTS_0__19_) );
  FA_X1 MUL0_mult_17_U9 ( .A(MUL0_mult_17_n41), .B(MUL0_mult_17_n46), .CI(
        MUL0_mult_17_n9), .CO(MUL0_mult_17_n8), .S(MULT_RESULTS_0__20_) );
  FA_X1 MUL0_mult_17_U8 ( .A(MUL0_mult_17_n37), .B(MUL0_mult_17_n40), .CI(
        MUL0_mult_17_n8), .CO(MUL0_mult_17_n7), .S(MULT_RESULTS_0__21_) );
  FA_X1 MUL0_mult_17_U7 ( .A(MUL0_mult_17_n33), .B(MUL0_mult_17_n36), .CI(
        MUL0_mult_17_n7), .CO(MUL0_mult_17_n6), .S(MULT_RESULTS_0__22_) );
  FA_X1 MUL0_mult_17_U6 ( .A(MUL0_mult_17_n32), .B(MUL0_mult_17_n31), .CI(
        MUL0_mult_17_n6), .CO(MUL0_mult_17_n5), .S(MULT_RESULTS_0__23_) );
  FA_X1 MUL0_mult_17_U5 ( .A(MUL0_mult_17_n30), .B(MUL0_mult_17_n29), .CI(
        MUL0_mult_17_n5), .CO(MUL0_mult_17_n4), .S(MULT_RESULTS_0__24_) );
  BUF_X1 SAMPLE_REG_1_U31 ( .A(n545), .Z(SAMPLE_REG_1_n42) );
  NAND2_X1 SAMPLE_REG_1_U30 ( .A1(SAMPLE_REG_1_n42), .A2(SAMPLES[130]), .ZN(
        SAMPLE_REG_1_n1) );
  OAI21_X1 SAMPLE_REG_1_U29 ( .B1(SAMPLE_REG_1_n14), .B2(SAMPLE_REG_1_n42), 
        .A(SAMPLE_REG_1_n1), .ZN(SAMPLE_REG_1_n27) );
  NAND2_X1 SAMPLE_REG_1_U28 ( .A1(SAMPLES[132]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n3) );
  OAI21_X1 SAMPLE_REG_1_U27 ( .B1(SAMPLE_REG_1_n16), .B2(SAMPLE_REG_1_n41), 
        .A(SAMPLE_REG_1_n3), .ZN(SAMPLE_REG_1_n29) );
  NAND2_X1 SAMPLE_REG_1_U26 ( .A1(SAMPLES[142]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n13) );
  OAI21_X1 SAMPLE_REG_1_U25 ( .B1(SAMPLE_REG_1_n26), .B2(SAMPLE_REG_1_n41), 
        .A(SAMPLE_REG_1_n13), .ZN(SAMPLE_REG_1_n39) );
  NAND2_X1 SAMPLE_REG_1_U24 ( .A1(SAMPLES[141]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n12) );
  OAI21_X1 SAMPLE_REG_1_U23 ( .B1(SAMPLE_REG_1_n25), .B2(SAMPLE_REG_1_n41), 
        .A(SAMPLE_REG_1_n12), .ZN(SAMPLE_REG_1_n38) );
  NAND2_X1 SAMPLE_REG_1_U22 ( .A1(SAMPLES[140]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n11) );
  OAI21_X1 SAMPLE_REG_1_U21 ( .B1(SAMPLE_REG_1_n24), .B2(SAMPLE_REG_1_n41), 
        .A(SAMPLE_REG_1_n11), .ZN(SAMPLE_REG_1_n37) );
  NAND2_X1 SAMPLE_REG_1_U20 ( .A1(SAMPLES[139]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n10) );
  OAI21_X1 SAMPLE_REG_1_U19 ( .B1(SAMPLE_REG_1_n23), .B2(SAMPLE_REG_1_n41), 
        .A(SAMPLE_REG_1_n10), .ZN(SAMPLE_REG_1_n36) );
  NAND2_X1 SAMPLE_REG_1_U18 ( .A1(SAMPLES[138]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n9) );
  OAI21_X1 SAMPLE_REG_1_U17 ( .B1(SAMPLE_REG_1_n22), .B2(SAMPLE_REG_1_n41), 
        .A(SAMPLE_REG_1_n9), .ZN(SAMPLE_REG_1_n35) );
  NAND2_X1 SAMPLE_REG_1_U16 ( .A1(SAMPLES[137]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n8) );
  OAI21_X1 SAMPLE_REG_1_U15 ( .B1(SAMPLE_REG_1_n21), .B2(SAMPLE_REG_1_n41), 
        .A(SAMPLE_REG_1_n8), .ZN(SAMPLE_REG_1_n34) );
  NAND2_X1 SAMPLE_REG_1_U14 ( .A1(SAMPLES[136]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n7) );
  OAI21_X1 SAMPLE_REG_1_U13 ( .B1(SAMPLE_REG_1_n20), .B2(SAMPLE_REG_1_n41), 
        .A(SAMPLE_REG_1_n7), .ZN(SAMPLE_REG_1_n33) );
  NAND2_X1 SAMPLE_REG_1_U12 ( .A1(SAMPLES[135]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n6) );
  OAI21_X1 SAMPLE_REG_1_U11 ( .B1(SAMPLE_REG_1_n19), .B2(SAMPLE_REG_1_n41), 
        .A(SAMPLE_REG_1_n6), .ZN(SAMPLE_REG_1_n32) );
  NAND2_X1 SAMPLE_REG_1_U10 ( .A1(SAMPLES[134]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n5) );
  OAI21_X1 SAMPLE_REG_1_U9 ( .B1(SAMPLE_REG_1_n18), .B2(SAMPLE_REG_1_n41), .A(
        SAMPLE_REG_1_n5), .ZN(SAMPLE_REG_1_n31) );
  NAND2_X1 SAMPLE_REG_1_U8 ( .A1(SAMPLES[133]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n4) );
  OAI21_X1 SAMPLE_REG_1_U7 ( .B1(SAMPLE_REG_1_n17), .B2(SAMPLE_REG_1_n41), .A(
        SAMPLE_REG_1_n4), .ZN(SAMPLE_REG_1_n30) );
  NAND2_X1 SAMPLE_REG_1_U6 ( .A1(SAMPLES[131]), .A2(SAMPLE_REG_1_n40), .ZN(
        SAMPLE_REG_1_n2) );
  OAI21_X1 SAMPLE_REG_1_U5 ( .B1(SAMPLE_REG_1_n15), .B2(SAMPLE_REG_1_n41), .A(
        SAMPLE_REG_1_n2), .ZN(SAMPLE_REG_1_n28) );
  BUF_X1 SAMPLE_REG_1_U4 ( .A(n545), .Z(SAMPLE_REG_1_n41) );
  BUF_X1 SAMPLE_REG_1_U3 ( .A(n545), .Z(SAMPLE_REG_1_n40) );
  BUF_X1 SAMPLE_REG_1_U2 ( .A(n546), .Z(SAMPLE_REG_1_n43) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_0_ ( .D(SAMPLE_REG_1_n27), .CK(CLK), .RN(n546), 
        .Q(SAMPLES[117]), .QN(SAMPLE_REG_1_n14) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_1_ ( .D(SAMPLE_REG_1_n28), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[118]), .QN(SAMPLE_REG_1_n15) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_2_ ( .D(SAMPLE_REG_1_n29), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[119]), .QN(SAMPLE_REG_1_n16) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_3_ ( .D(SAMPLE_REG_1_n30), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[120]), .QN(SAMPLE_REG_1_n17) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_4_ ( .D(SAMPLE_REG_1_n31), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[121]), .QN(SAMPLE_REG_1_n18) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_5_ ( .D(SAMPLE_REG_1_n32), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[122]), .QN(SAMPLE_REG_1_n19) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_6_ ( .D(SAMPLE_REG_1_n33), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[123]), .QN(SAMPLE_REG_1_n20) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_7_ ( .D(SAMPLE_REG_1_n34), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[124]), .QN(SAMPLE_REG_1_n21) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_8_ ( .D(SAMPLE_REG_1_n35), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[125]), .QN(SAMPLE_REG_1_n22) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_9_ ( .D(SAMPLE_REG_1_n36), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[126]), .QN(SAMPLE_REG_1_n23) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_10_ ( .D(SAMPLE_REG_1_n37), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[127]), .QN(SAMPLE_REG_1_n24) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_11_ ( .D(SAMPLE_REG_1_n38), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[128]), .QN(SAMPLE_REG_1_n25) );
  DFFR_X1 SAMPLE_REG_1_DOUT_reg_12_ ( .D(SAMPLE_REG_1_n39), .CK(CLK), .RN(
        SAMPLE_REG_1_n43), .Q(SAMPLES[129]), .QN(SAMPLE_REG_1_n26) );
  XOR2_X1 MUL_1_mult_17_U660 ( .A(SAMPLES[119]), .B(SAMPLES[118]), .Z(
        MUL_1_mult_17_n681) );
  NAND2_X1 MUL_1_mult_17_U659 ( .A1(SAMPLES[118]), .A2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n571) );
  XNOR2_X1 MUL_1_mult_17_U658 ( .A(A[119]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n570) );
  OAI22_X1 MUL_1_mult_17_U657 ( .A1(A[118]), .A2(MUL_1_mult_17_n571), .B1(
        MUL_1_mult_17_n570), .B2(MUL_1_mult_17_n544), .ZN(MUL_1_mult_17_n683)
         );
  XNOR2_X1 MUL_1_mult_17_U656 ( .A(MUL_1_mult_17_n541), .B(SAMPLES[119]), .ZN(
        MUL_1_mult_17_n682) );
  NAND2_X1 MUL_1_mult_17_U655 ( .A1(MUL_1_mult_17_n542), .A2(
        MUL_1_mult_17_n682), .ZN(MUL_1_mult_17_n552) );
  NAND3_X1 MUL_1_mult_17_U654 ( .A1(MUL_1_mult_17_n681), .A2(
        MUL_1_mult_17_n546), .A3(SAMPLES[120]), .ZN(MUL_1_mult_17_n680) );
  OAI21_X1 MUL_1_mult_17_U653 ( .B1(MUL_1_mult_17_n541), .B2(
        MUL_1_mult_17_n552), .A(MUL_1_mult_17_n680), .ZN(MUL_1_mult_17_n679)
         );
  AOI222_X1 MUL_1_mult_17_U652 ( .A1(MUL_1_mult_17_n506), .A2(
        MUL_1_mult_17_n171), .B1(MUL_1_mult_17_n679), .B2(MUL_1_mult_17_n506), 
        .C1(MUL_1_mult_17_n679), .C2(MUL_1_mult_17_n171), .ZN(
        MUL_1_mult_17_n678) );
  AOI222_X1 MUL_1_mult_17_U651 ( .A1(MUL_1_mult_17_n538), .A2(
        MUL_1_mult_17_n169), .B1(MUL_1_mult_17_n538), .B2(MUL_1_mult_17_n170), 
        .C1(MUL_1_mult_17_n170), .C2(MUL_1_mult_17_n169), .ZN(
        MUL_1_mult_17_n677) );
  AOI222_X1 MUL_1_mult_17_U650 ( .A1(MUL_1_mult_17_n537), .A2(
        MUL_1_mult_17_n165), .B1(MUL_1_mult_17_n537), .B2(MUL_1_mult_17_n168), 
        .C1(MUL_1_mult_17_n168), .C2(MUL_1_mult_17_n165), .ZN(
        MUL_1_mult_17_n676) );
  AOI222_X1 MUL_1_mult_17_U649 ( .A1(MUL_1_mult_17_n533), .A2(
        MUL_1_mult_17_n161), .B1(MUL_1_mult_17_n533), .B2(MUL_1_mult_17_n164), 
        .C1(MUL_1_mult_17_n164), .C2(MUL_1_mult_17_n161), .ZN(
        MUL_1_mult_17_n675) );
  AOI222_X1 MUL_1_mult_17_U648 ( .A1(MUL_1_mult_17_n532), .A2(
        MUL_1_mult_17_n155), .B1(MUL_1_mult_17_n532), .B2(MUL_1_mult_17_n160), 
        .C1(MUL_1_mult_17_n160), .C2(MUL_1_mult_17_n155), .ZN(
        MUL_1_mult_17_n674) );
  AOI222_X1 MUL_1_mult_17_U647 ( .A1(MUL_1_mult_17_n528), .A2(
        MUL_1_mult_17_n149), .B1(MUL_1_mult_17_n528), .B2(MUL_1_mult_17_n154), 
        .C1(MUL_1_mult_17_n154), .C2(MUL_1_mult_17_n149), .ZN(
        MUL_1_mult_17_n673) );
  AOI222_X1 MUL_1_mult_17_U646 ( .A1(MUL_1_mult_17_n527), .A2(
        MUL_1_mult_17_n141), .B1(MUL_1_mult_17_n527), .B2(MUL_1_mult_17_n148), 
        .C1(MUL_1_mult_17_n148), .C2(MUL_1_mult_17_n141), .ZN(
        MUL_1_mult_17_n672) );
  AOI222_X1 MUL_1_mult_17_U645 ( .A1(MUL_1_mult_17_n523), .A2(
        MUL_1_mult_17_n133), .B1(MUL_1_mult_17_n523), .B2(MUL_1_mult_17_n140), 
        .C1(MUL_1_mult_17_n140), .C2(MUL_1_mult_17_n133), .ZN(
        MUL_1_mult_17_n671) );
  AOI222_X1 MUL_1_mult_17_U644 ( .A1(MUL_1_mult_17_n522), .A2(
        MUL_1_mult_17_n123), .B1(MUL_1_mult_17_n522), .B2(MUL_1_mult_17_n132), 
        .C1(MUL_1_mult_17_n132), .C2(MUL_1_mult_17_n123), .ZN(
        MUL_1_mult_17_n670) );
  AOI222_X1 MUL_1_mult_17_U643 ( .A1(MUL_1_mult_17_n517), .A2(
        MUL_1_mult_17_n113), .B1(MUL_1_mult_17_n517), .B2(MUL_1_mult_17_n122), 
        .C1(MUL_1_mult_17_n122), .C2(MUL_1_mult_17_n113), .ZN(
        MUL_1_mult_17_n669) );
  AOI222_X1 MUL_1_mult_17_U642 ( .A1(MUL_1_mult_17_n515), .A2(
        MUL_1_mult_17_n101), .B1(MUL_1_mult_17_n515), .B2(MUL_1_mult_17_n112), 
        .C1(MUL_1_mult_17_n112), .C2(MUL_1_mult_17_n101), .ZN(
        MUL_1_mult_17_n668) );
  AOI222_X1 MUL_1_mult_17_U641 ( .A1(MUL_1_mult_17_n513), .A2(
        MUL_1_mult_17_n89), .B1(MUL_1_mult_17_n513), .B2(MUL_1_mult_17_n100), 
        .C1(MUL_1_mult_17_n100), .C2(MUL_1_mult_17_n89), .ZN(
        MUL_1_mult_17_n667) );
  AOI222_X1 MUL_1_mult_17_U640 ( .A1(MUL_1_mult_17_n512), .A2(
        MUL_1_mult_17_n79), .B1(MUL_1_mult_17_n512), .B2(MUL_1_mult_17_n88), 
        .C1(MUL_1_mult_17_n88), .C2(MUL_1_mult_17_n79), .ZN(MUL_1_mult_17_n666) );
  AOI222_X1 MUL_1_mult_17_U639 ( .A1(MUL_1_mult_17_n511), .A2(
        MUL_1_mult_17_n69), .B1(MUL_1_mult_17_n511), .B2(MUL_1_mult_17_n78), 
        .C1(MUL_1_mult_17_n78), .C2(MUL_1_mult_17_n69), .ZN(MUL_1_mult_17_n665) );
  AOI222_X1 MUL_1_mult_17_U638 ( .A1(MUL_1_mult_17_n510), .A2(
        MUL_1_mult_17_n61), .B1(MUL_1_mult_17_n510), .B2(MUL_1_mult_17_n68), 
        .C1(MUL_1_mult_17_n68), .C2(MUL_1_mult_17_n61), .ZN(MUL_1_mult_17_n664) );
  XNOR2_X1 MUL_1_mult_17_U637 ( .A(A[119]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n633) );
  XNOR2_X1 MUL_1_mult_17_U636 ( .A(MUL_1_mult_17_n521), .B(SAMPLES[127]), .ZN(
        MUL_1_mult_17_n663) );
  NAND2_X1 MUL_1_mult_17_U635 ( .A1(MUL_1_mult_17_n568), .A2(
        MUL_1_mult_17_n663), .ZN(MUL_1_mult_17_n567) );
  XNOR2_X1 MUL_1_mult_17_U634 ( .A(A[120]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n634) );
  OAI22_X1 MUL_1_mult_17_U633 ( .A1(MUL_1_mult_17_n633), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n634), 
        .ZN(MUL_1_mult_17_n662) );
  XNOR2_X1 MUL_1_mult_17_U632 ( .A(MUL_1_mult_17_n545), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n661) );
  XNOR2_X1 MUL_1_mult_17_U631 ( .A(SAMPLES[129]), .B(MUL_1_mult_17_n521), .ZN(
        MUL_1_mult_17_n549) );
  NAND2_X1 MUL_1_mult_17_U630 ( .A1(MUL_1_mult_17_n661), .A2(
        MUL_1_mult_17_n549), .ZN(MUL_1_mult_17_n660) );
  NAND2_X1 MUL_1_mult_17_U629 ( .A1(MUL_1_mult_17_n520), .A2(
        MUL_1_mult_17_n660), .ZN(MUL_1_mult_17_n110) );
  XNOR2_X1 MUL_1_mult_17_U628 ( .A(MUL_1_mult_17_n660), .B(MUL_1_mult_17_n520), 
        .ZN(MUL_1_mult_17_n111) );
  NOR3_X1 MUL_1_mult_17_U627 ( .A1(MUL_1_mult_17_n514), .A2(A[117]), .A3(
        MUL_1_mult_17_n516), .ZN(MUL_1_mult_17_n193) );
  OR3_X1 MUL_1_mult_17_U626 ( .A1(MUL_1_mult_17_n568), .A2(A[117]), .A3(
        MUL_1_mult_17_n521), .ZN(MUL_1_mult_17_n659) );
  OAI21_X1 MUL_1_mult_17_U625 ( .B1(MUL_1_mult_17_n521), .B2(
        MUL_1_mult_17_n567), .A(MUL_1_mult_17_n659), .ZN(MUL_1_mult_17_n194)
         );
  XNOR2_X1 MUL_1_mult_17_U624 ( .A(MUL_1_mult_17_n526), .B(SAMPLES[125]), .ZN(
        MUL_1_mult_17_n658) );
  NAND2_X1 MUL_1_mult_17_U623 ( .A1(MUL_1_mult_17_n564), .A2(
        MUL_1_mult_17_n658), .ZN(MUL_1_mult_17_n563) );
  OR3_X1 MUL_1_mult_17_U622 ( .A1(MUL_1_mult_17_n564), .A2(A[117]), .A3(
        MUL_1_mult_17_n526), .ZN(MUL_1_mult_17_n657) );
  OAI21_X1 MUL_1_mult_17_U621 ( .B1(MUL_1_mult_17_n526), .B2(
        MUL_1_mult_17_n563), .A(MUL_1_mult_17_n657), .ZN(MUL_1_mult_17_n195)
         );
  XNOR2_X1 MUL_1_mult_17_U620 ( .A(MUL_1_mult_17_n531), .B(SAMPLES[123]), .ZN(
        MUL_1_mult_17_n656) );
  NAND2_X1 MUL_1_mult_17_U619 ( .A1(MUL_1_mult_17_n560), .A2(
        MUL_1_mult_17_n656), .ZN(MUL_1_mult_17_n559) );
  OR3_X1 MUL_1_mult_17_U618 ( .A1(MUL_1_mult_17_n560), .A2(A[117]), .A3(
        MUL_1_mult_17_n531), .ZN(MUL_1_mult_17_n655) );
  OAI21_X1 MUL_1_mult_17_U617 ( .B1(MUL_1_mult_17_n531), .B2(
        MUL_1_mult_17_n559), .A(MUL_1_mult_17_n655), .ZN(MUL_1_mult_17_n196)
         );
  XNOR2_X1 MUL_1_mult_17_U616 ( .A(MUL_1_mult_17_n536), .B(SAMPLES[121]), .ZN(
        MUL_1_mult_17_n654) );
  NAND2_X1 MUL_1_mult_17_U615 ( .A1(MUL_1_mult_17_n556), .A2(
        MUL_1_mult_17_n654), .ZN(MUL_1_mult_17_n555) );
  OR3_X1 MUL_1_mult_17_U614 ( .A1(MUL_1_mult_17_n556), .A2(A[117]), .A3(
        MUL_1_mult_17_n536), .ZN(MUL_1_mult_17_n653) );
  OAI21_X1 MUL_1_mult_17_U613 ( .B1(MUL_1_mult_17_n536), .B2(
        MUL_1_mult_17_n555), .A(MUL_1_mult_17_n653), .ZN(MUL_1_mult_17_n197)
         );
  XNOR2_X1 MUL_1_mult_17_U612 ( .A(A[128]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n652) );
  NOR2_X1 MUL_1_mult_17_U611 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n652), .ZN(MUL_1_mult_17_n201) );
  XNOR2_X1 MUL_1_mult_17_U610 ( .A(A[127]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n651) );
  NOR2_X1 MUL_1_mult_17_U609 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n651), .ZN(MUL_1_mult_17_n202) );
  XNOR2_X1 MUL_1_mult_17_U608 ( .A(A[126]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n650) );
  NOR2_X1 MUL_1_mult_17_U607 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n650), .ZN(MUL_1_mult_17_n203) );
  XNOR2_X1 MUL_1_mult_17_U606 ( .A(A[125]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n649) );
  NOR2_X1 MUL_1_mult_17_U605 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n649), .ZN(MUL_1_mult_17_n204) );
  XNOR2_X1 MUL_1_mult_17_U604 ( .A(A[124]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n648) );
  NOR2_X1 MUL_1_mult_17_U603 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n648), .ZN(MUL_1_mult_17_n205) );
  XNOR2_X1 MUL_1_mult_17_U602 ( .A(A[123]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n647) );
  NOR2_X1 MUL_1_mult_17_U601 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n647), .ZN(MUL_1_mult_17_n206) );
  XNOR2_X1 MUL_1_mult_17_U600 ( .A(A[122]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n646) );
  NOR2_X1 MUL_1_mult_17_U599 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n646), .ZN(MUL_1_mult_17_n207) );
  XNOR2_X1 MUL_1_mult_17_U598 ( .A(A[121]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n645) );
  NOR2_X1 MUL_1_mult_17_U597 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n645), .ZN(MUL_1_mult_17_n208) );
  XNOR2_X1 MUL_1_mult_17_U596 ( .A(A[120]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n644) );
  NOR2_X1 MUL_1_mult_17_U595 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n644), .ZN(MUL_1_mult_17_n209) );
  XNOR2_X1 MUL_1_mult_17_U594 ( .A(A[119]), .B(SAMPLES[129]), .ZN(
        MUL_1_mult_17_n643) );
  NOR2_X1 MUL_1_mult_17_U593 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n643), .ZN(MUL_1_mult_17_n210) );
  NOR2_X1 MUL_1_mult_17_U592 ( .A1(MUL_1_mult_17_n516), .A2(MUL_1_mult_17_n546), .ZN(MUL_1_mult_17_n212) );
  XNOR2_X1 MUL_1_mult_17_U591 ( .A(A[129]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n569) );
  OAI22_X1 MUL_1_mult_17_U590 ( .A1(MUL_1_mult_17_n569), .A2(
        MUL_1_mult_17_n568), .B1(MUL_1_mult_17_n567), .B2(MUL_1_mult_17_n569), 
        .ZN(MUL_1_mult_17_n642) );
  XNOR2_X1 MUL_1_mult_17_U589 ( .A(A[127]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n641) );
  XNOR2_X1 MUL_1_mult_17_U588 ( .A(A[128]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n566) );
  OAI22_X1 MUL_1_mult_17_U587 ( .A1(MUL_1_mult_17_n641), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n566), 
        .ZN(MUL_1_mult_17_n214) );
  XNOR2_X1 MUL_1_mult_17_U586 ( .A(A[126]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n640) );
  OAI22_X1 MUL_1_mult_17_U585 ( .A1(MUL_1_mult_17_n640), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n641), 
        .ZN(MUL_1_mult_17_n215) );
  XNOR2_X1 MUL_1_mult_17_U584 ( .A(A[125]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n639) );
  OAI22_X1 MUL_1_mult_17_U583 ( .A1(MUL_1_mult_17_n639), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n640), 
        .ZN(MUL_1_mult_17_n216) );
  XNOR2_X1 MUL_1_mult_17_U582 ( .A(A[124]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n638) );
  OAI22_X1 MUL_1_mult_17_U581 ( .A1(MUL_1_mult_17_n638), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n639), 
        .ZN(MUL_1_mult_17_n217) );
  XNOR2_X1 MUL_1_mult_17_U580 ( .A(A[123]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n637) );
  OAI22_X1 MUL_1_mult_17_U579 ( .A1(MUL_1_mult_17_n637), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n638), 
        .ZN(MUL_1_mult_17_n218) );
  XNOR2_X1 MUL_1_mult_17_U578 ( .A(A[122]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n636) );
  OAI22_X1 MUL_1_mult_17_U577 ( .A1(MUL_1_mult_17_n636), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n637), 
        .ZN(MUL_1_mult_17_n219) );
  XNOR2_X1 MUL_1_mult_17_U576 ( .A(A[121]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n635) );
  OAI22_X1 MUL_1_mult_17_U575 ( .A1(MUL_1_mult_17_n635), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n636), 
        .ZN(MUL_1_mult_17_n220) );
  OAI22_X1 MUL_1_mult_17_U574 ( .A1(MUL_1_mult_17_n634), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n635), 
        .ZN(MUL_1_mult_17_n221) );
  XNOR2_X1 MUL_1_mult_17_U573 ( .A(A[118]), .B(SAMPLES[128]), .ZN(
        MUL_1_mult_17_n632) );
  OAI22_X1 MUL_1_mult_17_U572 ( .A1(MUL_1_mult_17_n632), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n633), 
        .ZN(MUL_1_mult_17_n223) );
  XNOR2_X1 MUL_1_mult_17_U571 ( .A(SAMPLES[128]), .B(A[117]), .ZN(
        MUL_1_mult_17_n631) );
  OAI22_X1 MUL_1_mult_17_U570 ( .A1(MUL_1_mult_17_n631), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n632), 
        .ZN(MUL_1_mult_17_n224) );
  NOR2_X1 MUL_1_mult_17_U569 ( .A1(MUL_1_mult_17_n568), .A2(MUL_1_mult_17_n546), .ZN(MUL_1_mult_17_n225) );
  XNOR2_X1 MUL_1_mult_17_U568 ( .A(A[129]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n565) );
  OAI22_X1 MUL_1_mult_17_U567 ( .A1(MUL_1_mult_17_n565), .A2(
        MUL_1_mult_17_n564), .B1(MUL_1_mult_17_n563), .B2(MUL_1_mult_17_n565), 
        .ZN(MUL_1_mult_17_n630) );
  XNOR2_X1 MUL_1_mult_17_U566 ( .A(A[127]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n629) );
  XNOR2_X1 MUL_1_mult_17_U565 ( .A(A[128]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n562) );
  OAI22_X1 MUL_1_mult_17_U564 ( .A1(MUL_1_mult_17_n629), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n562), 
        .ZN(MUL_1_mult_17_n227) );
  XNOR2_X1 MUL_1_mult_17_U563 ( .A(A[126]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n628) );
  OAI22_X1 MUL_1_mult_17_U562 ( .A1(MUL_1_mult_17_n628), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n629), 
        .ZN(MUL_1_mult_17_n228) );
  XNOR2_X1 MUL_1_mult_17_U561 ( .A(A[125]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n627) );
  OAI22_X1 MUL_1_mult_17_U560 ( .A1(MUL_1_mult_17_n627), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n628), 
        .ZN(MUL_1_mult_17_n229) );
  XNOR2_X1 MUL_1_mult_17_U559 ( .A(A[124]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n626) );
  OAI22_X1 MUL_1_mult_17_U558 ( .A1(MUL_1_mult_17_n626), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n627), 
        .ZN(MUL_1_mult_17_n230) );
  XNOR2_X1 MUL_1_mult_17_U557 ( .A(A[123]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n625) );
  OAI22_X1 MUL_1_mult_17_U556 ( .A1(MUL_1_mult_17_n625), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n626), 
        .ZN(MUL_1_mult_17_n231) );
  XNOR2_X1 MUL_1_mult_17_U555 ( .A(A[122]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n624) );
  OAI22_X1 MUL_1_mult_17_U554 ( .A1(MUL_1_mult_17_n624), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n625), 
        .ZN(MUL_1_mult_17_n232) );
  XNOR2_X1 MUL_1_mult_17_U553 ( .A(A[121]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n623) );
  OAI22_X1 MUL_1_mult_17_U552 ( .A1(MUL_1_mult_17_n623), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n624), 
        .ZN(MUL_1_mult_17_n233) );
  XNOR2_X1 MUL_1_mult_17_U551 ( .A(A[120]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n622) );
  OAI22_X1 MUL_1_mult_17_U550 ( .A1(MUL_1_mult_17_n622), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n623), 
        .ZN(MUL_1_mult_17_n234) );
  XNOR2_X1 MUL_1_mult_17_U549 ( .A(A[119]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n621) );
  OAI22_X1 MUL_1_mult_17_U548 ( .A1(MUL_1_mult_17_n621), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n622), 
        .ZN(MUL_1_mult_17_n235) );
  XNOR2_X1 MUL_1_mult_17_U547 ( .A(A[118]), .B(SAMPLES[126]), .ZN(
        MUL_1_mult_17_n620) );
  OAI22_X1 MUL_1_mult_17_U546 ( .A1(MUL_1_mult_17_n620), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n621), 
        .ZN(MUL_1_mult_17_n236) );
  XNOR2_X1 MUL_1_mult_17_U545 ( .A(SAMPLES[126]), .B(A[117]), .ZN(
        MUL_1_mult_17_n619) );
  OAI22_X1 MUL_1_mult_17_U544 ( .A1(MUL_1_mult_17_n619), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n620), 
        .ZN(MUL_1_mult_17_n237) );
  NOR2_X1 MUL_1_mult_17_U543 ( .A1(MUL_1_mult_17_n564), .A2(MUL_1_mult_17_n546), .ZN(MUL_1_mult_17_n238) );
  XNOR2_X1 MUL_1_mult_17_U542 ( .A(A[129]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n561) );
  OAI22_X1 MUL_1_mult_17_U541 ( .A1(MUL_1_mult_17_n561), .A2(
        MUL_1_mult_17_n560), .B1(MUL_1_mult_17_n559), .B2(MUL_1_mult_17_n561), 
        .ZN(MUL_1_mult_17_n618) );
  XNOR2_X1 MUL_1_mult_17_U540 ( .A(A[127]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n617) );
  XNOR2_X1 MUL_1_mult_17_U539 ( .A(A[128]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n558) );
  OAI22_X1 MUL_1_mult_17_U538 ( .A1(MUL_1_mult_17_n617), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n558), 
        .ZN(MUL_1_mult_17_n240) );
  XNOR2_X1 MUL_1_mult_17_U537 ( .A(A[126]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n616) );
  OAI22_X1 MUL_1_mult_17_U536 ( .A1(MUL_1_mult_17_n616), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n617), 
        .ZN(MUL_1_mult_17_n241) );
  XNOR2_X1 MUL_1_mult_17_U535 ( .A(A[125]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n615) );
  OAI22_X1 MUL_1_mult_17_U534 ( .A1(MUL_1_mult_17_n615), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n616), 
        .ZN(MUL_1_mult_17_n242) );
  XNOR2_X1 MUL_1_mult_17_U533 ( .A(A[124]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n614) );
  OAI22_X1 MUL_1_mult_17_U532 ( .A1(MUL_1_mult_17_n614), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n615), 
        .ZN(MUL_1_mult_17_n243) );
  XNOR2_X1 MUL_1_mult_17_U531 ( .A(A[123]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n613) );
  OAI22_X1 MUL_1_mult_17_U530 ( .A1(MUL_1_mult_17_n613), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n614), 
        .ZN(MUL_1_mult_17_n244) );
  XNOR2_X1 MUL_1_mult_17_U529 ( .A(A[122]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n612) );
  OAI22_X1 MUL_1_mult_17_U528 ( .A1(MUL_1_mult_17_n612), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n613), 
        .ZN(MUL_1_mult_17_n245) );
  XNOR2_X1 MUL_1_mult_17_U527 ( .A(A[121]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n611) );
  OAI22_X1 MUL_1_mult_17_U526 ( .A1(MUL_1_mult_17_n611), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n612), 
        .ZN(MUL_1_mult_17_n246) );
  XNOR2_X1 MUL_1_mult_17_U525 ( .A(A[120]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n610) );
  OAI22_X1 MUL_1_mult_17_U524 ( .A1(MUL_1_mult_17_n610), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n611), 
        .ZN(MUL_1_mult_17_n247) );
  XNOR2_X1 MUL_1_mult_17_U523 ( .A(A[119]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n609) );
  OAI22_X1 MUL_1_mult_17_U522 ( .A1(MUL_1_mult_17_n609), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n610), 
        .ZN(MUL_1_mult_17_n248) );
  XNOR2_X1 MUL_1_mult_17_U521 ( .A(A[118]), .B(SAMPLES[124]), .ZN(
        MUL_1_mult_17_n608) );
  OAI22_X1 MUL_1_mult_17_U520 ( .A1(MUL_1_mult_17_n608), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n609), 
        .ZN(MUL_1_mult_17_n249) );
  XNOR2_X1 MUL_1_mult_17_U519 ( .A(SAMPLES[124]), .B(A[117]), .ZN(
        MUL_1_mult_17_n607) );
  OAI22_X1 MUL_1_mult_17_U518 ( .A1(MUL_1_mult_17_n607), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n608), 
        .ZN(MUL_1_mult_17_n250) );
  NOR2_X1 MUL_1_mult_17_U517 ( .A1(MUL_1_mult_17_n560), .A2(MUL_1_mult_17_n546), .ZN(MUL_1_mult_17_n251) );
  XNOR2_X1 MUL_1_mult_17_U516 ( .A(A[129]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n557) );
  OAI22_X1 MUL_1_mult_17_U515 ( .A1(MUL_1_mult_17_n557), .A2(
        MUL_1_mult_17_n556), .B1(MUL_1_mult_17_n555), .B2(MUL_1_mult_17_n557), 
        .ZN(MUL_1_mult_17_n606) );
  XNOR2_X1 MUL_1_mult_17_U514 ( .A(A[127]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n605) );
  XNOR2_X1 MUL_1_mult_17_U513 ( .A(A[128]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n554) );
  OAI22_X1 MUL_1_mult_17_U512 ( .A1(MUL_1_mult_17_n605), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n554), 
        .ZN(MUL_1_mult_17_n253) );
  XNOR2_X1 MUL_1_mult_17_U511 ( .A(A[126]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n604) );
  OAI22_X1 MUL_1_mult_17_U510 ( .A1(MUL_1_mult_17_n604), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n605), 
        .ZN(MUL_1_mult_17_n254) );
  XNOR2_X1 MUL_1_mult_17_U509 ( .A(A[125]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n603) );
  OAI22_X1 MUL_1_mult_17_U508 ( .A1(MUL_1_mult_17_n603), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n604), 
        .ZN(MUL_1_mult_17_n255) );
  XNOR2_X1 MUL_1_mult_17_U507 ( .A(A[124]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n602) );
  OAI22_X1 MUL_1_mult_17_U506 ( .A1(MUL_1_mult_17_n602), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n603), 
        .ZN(MUL_1_mult_17_n256) );
  XNOR2_X1 MUL_1_mult_17_U505 ( .A(A[123]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n601) );
  OAI22_X1 MUL_1_mult_17_U504 ( .A1(MUL_1_mult_17_n601), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n602), 
        .ZN(MUL_1_mult_17_n257) );
  XNOR2_X1 MUL_1_mult_17_U503 ( .A(A[122]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n600) );
  OAI22_X1 MUL_1_mult_17_U502 ( .A1(MUL_1_mult_17_n600), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n601), 
        .ZN(MUL_1_mult_17_n258) );
  XNOR2_X1 MUL_1_mult_17_U501 ( .A(A[121]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n599) );
  OAI22_X1 MUL_1_mult_17_U500 ( .A1(MUL_1_mult_17_n599), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n600), 
        .ZN(MUL_1_mult_17_n259) );
  XNOR2_X1 MUL_1_mult_17_U499 ( .A(A[120]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n598) );
  OAI22_X1 MUL_1_mult_17_U498 ( .A1(MUL_1_mult_17_n598), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n599), 
        .ZN(MUL_1_mult_17_n260) );
  XNOR2_X1 MUL_1_mult_17_U497 ( .A(A[119]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n597) );
  OAI22_X1 MUL_1_mult_17_U496 ( .A1(MUL_1_mult_17_n597), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n598), 
        .ZN(MUL_1_mult_17_n261) );
  XNOR2_X1 MUL_1_mult_17_U495 ( .A(A[118]), .B(SAMPLES[122]), .ZN(
        MUL_1_mult_17_n596) );
  OAI22_X1 MUL_1_mult_17_U494 ( .A1(MUL_1_mult_17_n596), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n597), 
        .ZN(MUL_1_mult_17_n262) );
  XNOR2_X1 MUL_1_mult_17_U493 ( .A(SAMPLES[122]), .B(A[117]), .ZN(
        MUL_1_mult_17_n595) );
  OAI22_X1 MUL_1_mult_17_U492 ( .A1(MUL_1_mult_17_n595), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n596), 
        .ZN(MUL_1_mult_17_n263) );
  NOR2_X1 MUL_1_mult_17_U491 ( .A1(MUL_1_mult_17_n556), .A2(MUL_1_mult_17_n546), .ZN(MUL_1_mult_17_n264) );
  XOR2_X1 MUL_1_mult_17_U490 ( .A(A[129]), .B(MUL_1_mult_17_n541), .Z(
        MUL_1_mult_17_n553) );
  OAI22_X1 MUL_1_mult_17_U489 ( .A1(MUL_1_mult_17_n553), .A2(
        MUL_1_mult_17_n542), .B1(MUL_1_mult_17_n552), .B2(MUL_1_mult_17_n553), 
        .ZN(MUL_1_mult_17_n594) );
  XNOR2_X1 MUL_1_mult_17_U488 ( .A(A[127]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n593) );
  XNOR2_X1 MUL_1_mult_17_U487 ( .A(A[128]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n551) );
  OAI22_X1 MUL_1_mult_17_U486 ( .A1(MUL_1_mult_17_n593), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n551), 
        .ZN(MUL_1_mult_17_n266) );
  XNOR2_X1 MUL_1_mult_17_U485 ( .A(A[126]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n592) );
  OAI22_X1 MUL_1_mult_17_U484 ( .A1(MUL_1_mult_17_n592), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n593), 
        .ZN(MUL_1_mult_17_n267) );
  XNOR2_X1 MUL_1_mult_17_U483 ( .A(A[125]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n591) );
  OAI22_X1 MUL_1_mult_17_U482 ( .A1(MUL_1_mult_17_n591), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n592), 
        .ZN(MUL_1_mult_17_n268) );
  XNOR2_X1 MUL_1_mult_17_U481 ( .A(A[124]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n590) );
  OAI22_X1 MUL_1_mult_17_U480 ( .A1(MUL_1_mult_17_n590), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n591), 
        .ZN(MUL_1_mult_17_n269) );
  XNOR2_X1 MUL_1_mult_17_U479 ( .A(A[123]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n589) );
  OAI22_X1 MUL_1_mult_17_U478 ( .A1(MUL_1_mult_17_n589), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n590), 
        .ZN(MUL_1_mult_17_n270) );
  XNOR2_X1 MUL_1_mult_17_U477 ( .A(A[122]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n588) );
  OAI22_X1 MUL_1_mult_17_U476 ( .A1(MUL_1_mult_17_n588), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n589), 
        .ZN(MUL_1_mult_17_n271) );
  XNOR2_X1 MUL_1_mult_17_U475 ( .A(A[121]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n587) );
  OAI22_X1 MUL_1_mult_17_U474 ( .A1(MUL_1_mult_17_n587), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n588), 
        .ZN(MUL_1_mult_17_n272) );
  XNOR2_X1 MUL_1_mult_17_U473 ( .A(A[120]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n586) );
  OAI22_X1 MUL_1_mult_17_U472 ( .A1(MUL_1_mult_17_n586), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n587), 
        .ZN(MUL_1_mult_17_n273) );
  XNOR2_X1 MUL_1_mult_17_U471 ( .A(A[119]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n585) );
  OAI22_X1 MUL_1_mult_17_U470 ( .A1(MUL_1_mult_17_n585), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n586), 
        .ZN(MUL_1_mult_17_n274) );
  XNOR2_X1 MUL_1_mult_17_U469 ( .A(A[118]), .B(SAMPLES[120]), .ZN(
        MUL_1_mult_17_n584) );
  OAI22_X1 MUL_1_mult_17_U468 ( .A1(MUL_1_mult_17_n584), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n585), 
        .ZN(MUL_1_mult_17_n275) );
  XNOR2_X1 MUL_1_mult_17_U467 ( .A(SAMPLES[120]), .B(A[117]), .ZN(
        MUL_1_mult_17_n583) );
  OAI22_X1 MUL_1_mult_17_U466 ( .A1(MUL_1_mult_17_n583), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n584), 
        .ZN(MUL_1_mult_17_n276) );
  XNOR2_X1 MUL_1_mult_17_U465 ( .A(A[129]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n581) );
  OAI22_X1 MUL_1_mult_17_U464 ( .A1(MUL_1_mult_17_n544), .A2(
        MUL_1_mult_17_n581), .B1(MUL_1_mult_17_n571), .B2(MUL_1_mult_17_n581), 
        .ZN(MUL_1_mult_17_n582) );
  XNOR2_X1 MUL_1_mult_17_U463 ( .A(A[128]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n580) );
  OAI22_X1 MUL_1_mult_17_U462 ( .A1(MUL_1_mult_17_n580), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n581), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n279) );
  XNOR2_X1 MUL_1_mult_17_U461 ( .A(A[127]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n579) );
  OAI22_X1 MUL_1_mult_17_U460 ( .A1(MUL_1_mult_17_n579), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n580), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n280) );
  XNOR2_X1 MUL_1_mult_17_U459 ( .A(A[126]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n578) );
  OAI22_X1 MUL_1_mult_17_U458 ( .A1(MUL_1_mult_17_n578), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n579), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n281) );
  XNOR2_X1 MUL_1_mult_17_U457 ( .A(A[125]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n577) );
  OAI22_X1 MUL_1_mult_17_U456 ( .A1(MUL_1_mult_17_n577), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n578), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n282) );
  XNOR2_X1 MUL_1_mult_17_U455 ( .A(A[124]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n576) );
  OAI22_X1 MUL_1_mult_17_U454 ( .A1(MUL_1_mult_17_n576), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n577), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n283) );
  XNOR2_X1 MUL_1_mult_17_U453 ( .A(A[123]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n575) );
  OAI22_X1 MUL_1_mult_17_U452 ( .A1(MUL_1_mult_17_n575), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n576), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n284) );
  XNOR2_X1 MUL_1_mult_17_U451 ( .A(A[122]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n574) );
  OAI22_X1 MUL_1_mult_17_U450 ( .A1(MUL_1_mult_17_n574), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n575), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n285) );
  XNOR2_X1 MUL_1_mult_17_U449 ( .A(A[121]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n573) );
  OAI22_X1 MUL_1_mult_17_U448 ( .A1(MUL_1_mult_17_n573), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n574), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n286) );
  XNOR2_X1 MUL_1_mult_17_U447 ( .A(A[120]), .B(SAMPLES[118]), .ZN(
        MUL_1_mult_17_n572) );
  OAI22_X1 MUL_1_mult_17_U446 ( .A1(MUL_1_mult_17_n572), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n573), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n287) );
  OAI22_X1 MUL_1_mult_17_U445 ( .A1(MUL_1_mult_17_n570), .A2(
        MUL_1_mult_17_n571), .B1(MUL_1_mult_17_n572), .B2(MUL_1_mult_17_n544), 
        .ZN(MUL_1_mult_17_n288) );
  XNOR2_X1 MUL_1_mult_17_U444 ( .A(A[129]), .B(MUL_1_mult_17_n514), .ZN(
        MUL_1_mult_17_n550) );
  NAND2_X1 MUL_1_mult_17_U443 ( .A1(MUL_1_mult_17_n550), .A2(
        MUL_1_mult_17_n549), .ZN(MUL_1_mult_17_n29) );
  OAI22_X1 MUL_1_mult_17_U442 ( .A1(MUL_1_mult_17_n566), .A2(
        MUL_1_mult_17_n567), .B1(MUL_1_mult_17_n568), .B2(MUL_1_mult_17_n569), 
        .ZN(MUL_1_mult_17_n34) );
  OAI22_X1 MUL_1_mult_17_U441 ( .A1(MUL_1_mult_17_n562), .A2(
        MUL_1_mult_17_n563), .B1(MUL_1_mult_17_n564), .B2(MUL_1_mult_17_n565), 
        .ZN(MUL_1_mult_17_n44) );
  OAI22_X1 MUL_1_mult_17_U440 ( .A1(MUL_1_mult_17_n558), .A2(
        MUL_1_mult_17_n559), .B1(MUL_1_mult_17_n560), .B2(MUL_1_mult_17_n561), 
        .ZN(MUL_1_mult_17_n58) );
  OAI22_X1 MUL_1_mult_17_U439 ( .A1(MUL_1_mult_17_n554), .A2(
        MUL_1_mult_17_n555), .B1(MUL_1_mult_17_n556), .B2(MUL_1_mult_17_n557), 
        .ZN(MUL_1_mult_17_n76) );
  OAI22_X1 MUL_1_mult_17_U438 ( .A1(MUL_1_mult_17_n551), .A2(
        MUL_1_mult_17_n552), .B1(MUL_1_mult_17_n542), .B2(MUL_1_mult_17_n553), 
        .ZN(MUL_1_mult_17_n98) );
  NOR2_X1 MUL_1_mult_17_U437 ( .A1(MUL_1_mult_17_n544), .A2(MUL_1_mult_17_n546), .ZN(MUL_1_O_0_) );
  XOR2_X1 MUL_1_mult_17_U436 ( .A(MUL_1_mult_17_n29), .B(MUL_1_mult_17_n4), 
        .Z(MUL_1_mult_17_n547) );
  AND2_X1 MUL_1_mult_17_U435 ( .A1(MUL_1_mult_17_n549), .A2(MUL_1_mult_17_n550), .ZN(MUL_1_mult_17_n548) );
  XOR2_X1 MUL_1_mult_17_U434 ( .A(MUL_1_mult_17_n547), .B(MUL_1_mult_17_n548), 
        .Z(TRUNCATED_MULT_RES_1__7_) );
  XOR2_X2 MUL_1_mult_17_U433 ( .A(SAMPLES[127]), .B(MUL_1_mult_17_n526), .Z(
        MUL_1_mult_17_n568) );
  XOR2_X2 MUL_1_mult_17_U432 ( .A(SAMPLES[125]), .B(MUL_1_mult_17_n531), .Z(
        MUL_1_mult_17_n564) );
  XOR2_X2 MUL_1_mult_17_U431 ( .A(SAMPLES[123]), .B(MUL_1_mult_17_n536), .Z(
        MUL_1_mult_17_n560) );
  XOR2_X2 MUL_1_mult_17_U430 ( .A(SAMPLES[121]), .B(MUL_1_mult_17_n541), .Z(
        MUL_1_mult_17_n556) );
  INV_X1 MUL_1_mult_17_U429 ( .A(MUL_1_mult_17_n642), .ZN(MUL_1_mult_17_n519)
         );
  INV_X1 MUL_1_mult_17_U428 ( .A(MUL_1_mult_17_n34), .ZN(MUL_1_mult_17_n518)
         );
  INV_X1 MUL_1_mult_17_U427 ( .A(MUL_1_mult_17_n594), .ZN(MUL_1_mult_17_n540)
         );
  INV_X1 MUL_1_mult_17_U426 ( .A(SAMPLES[129]), .ZN(MUL_1_mult_17_n514) );
  INV_X1 MUL_1_mult_17_U425 ( .A(A[118]), .ZN(MUL_1_mult_17_n545) );
  AND3_X1 MUL_1_mult_17_U424 ( .A1(MUL_1_mult_17_n683), .A2(MUL_1_mult_17_n545), .A3(SAMPLES[118]), .ZN(MUL_1_mult_17_n508) );
  AND2_X1 MUL_1_mult_17_U423 ( .A1(MUL_1_mult_17_n681), .A2(MUL_1_mult_17_n683), .ZN(MUL_1_mult_17_n507) );
  MUX2_X1 MUL_1_mult_17_U422 ( .A(MUL_1_mult_17_n507), .B(MUL_1_mult_17_n508), 
        .S(MUL_1_mult_17_n546), .Z(MUL_1_mult_17_n506) );
  INV_X1 MUL_1_mult_17_U421 ( .A(A[117]), .ZN(MUL_1_mult_17_n546) );
  INV_X1 MUL_1_mult_17_U420 ( .A(SAMPLES[128]), .ZN(MUL_1_mult_17_n521) );
  INV_X1 MUL_1_mult_17_U419 ( .A(SAMPLES[126]), .ZN(MUL_1_mult_17_n526) );
  INV_X1 MUL_1_mult_17_U418 ( .A(SAMPLES[124]), .ZN(MUL_1_mult_17_n531) );
  INV_X1 MUL_1_mult_17_U417 ( .A(SAMPLES[122]), .ZN(MUL_1_mult_17_n536) );
  INV_X1 MUL_1_mult_17_U416 ( .A(SAMPLES[120]), .ZN(MUL_1_mult_17_n541) );
  INV_X1 MUL_1_mult_17_U415 ( .A(SAMPLES[117]), .ZN(MUL_1_mult_17_n544) );
  INV_X1 MUL_1_mult_17_U414 ( .A(MUL_1_mult_17_n630), .ZN(MUL_1_mult_17_n525)
         );
  INV_X1 MUL_1_mult_17_U413 ( .A(MUL_1_mult_17_n662), .ZN(MUL_1_mult_17_n520)
         );
  INV_X1 MUL_1_mult_17_U412 ( .A(MUL_1_mult_17_n76), .ZN(MUL_1_mult_17_n534)
         );
  INV_X1 MUL_1_mult_17_U411 ( .A(MUL_1_mult_17_n606), .ZN(MUL_1_mult_17_n535)
         );
  INV_X1 MUL_1_mult_17_U410 ( .A(MUL_1_mult_17_n618), .ZN(MUL_1_mult_17_n530)
         );
  INV_X1 MUL_1_mult_17_U409 ( .A(MUL_1_mult_17_n98), .ZN(MUL_1_mult_17_n539)
         );
  INV_X1 MUL_1_mult_17_U408 ( .A(MUL_1_mult_17_n44), .ZN(MUL_1_mult_17_n524)
         );
  INV_X1 MUL_1_mult_17_U407 ( .A(MUL_1_mult_17_n582), .ZN(MUL_1_mult_17_n543)
         );
  INV_X1 MUL_1_mult_17_U406 ( .A(MUL_1_mult_17_n549), .ZN(MUL_1_mult_17_n516)
         );
  INV_X1 MUL_1_mult_17_U405 ( .A(MUL_1_mult_17_n681), .ZN(MUL_1_mult_17_n542)
         );
  INV_X1 MUL_1_mult_17_U404 ( .A(MUL_1_mult_17_n678), .ZN(MUL_1_mult_17_n538)
         );
  INV_X1 MUL_1_mult_17_U403 ( .A(MUL_1_mult_17_n677), .ZN(MUL_1_mult_17_n537)
         );
  INV_X1 MUL_1_mult_17_U402 ( .A(MUL_1_mult_17_n58), .ZN(MUL_1_mult_17_n529)
         );
  INV_X1 MUL_1_mult_17_U401 ( .A(MUL_1_mult_17_n674), .ZN(MUL_1_mult_17_n528)
         );
  INV_X1 MUL_1_mult_17_U400 ( .A(MUL_1_mult_17_n673), .ZN(MUL_1_mult_17_n527)
         );
  INV_X1 MUL_1_mult_17_U399 ( .A(MUL_1_mult_17_n676), .ZN(MUL_1_mult_17_n533)
         );
  INV_X1 MUL_1_mult_17_U398 ( .A(MUL_1_mult_17_n675), .ZN(MUL_1_mult_17_n532)
         );
  INV_X1 MUL_1_mult_17_U397 ( .A(MUL_1_mult_17_n664), .ZN(MUL_1_mult_17_n509)
         );
  INV_X1 MUL_1_mult_17_U396 ( .A(MUL_1_mult_17_n666), .ZN(MUL_1_mult_17_n511)
         );
  INV_X1 MUL_1_mult_17_U395 ( .A(MUL_1_mult_17_n665), .ZN(MUL_1_mult_17_n510)
         );
  INV_X1 MUL_1_mult_17_U394 ( .A(MUL_1_mult_17_n670), .ZN(MUL_1_mult_17_n517)
         );
  INV_X1 MUL_1_mult_17_U393 ( .A(MUL_1_mult_17_n669), .ZN(MUL_1_mult_17_n515)
         );
  INV_X1 MUL_1_mult_17_U392 ( .A(MUL_1_mult_17_n668), .ZN(MUL_1_mult_17_n513)
         );
  INV_X1 MUL_1_mult_17_U391 ( .A(MUL_1_mult_17_n667), .ZN(MUL_1_mult_17_n512)
         );
  INV_X1 MUL_1_mult_17_U390 ( .A(MUL_1_mult_17_n672), .ZN(MUL_1_mult_17_n523)
         );
  INV_X1 MUL_1_mult_17_U389 ( .A(MUL_1_mult_17_n671), .ZN(MUL_1_mult_17_n522)
         );
  HA_X1 MUL_1_mult_17_U101 ( .A(MUL_1_mult_17_n276), .B(MUL_1_mult_17_n288), 
        .CO(MUL_1_mult_17_n170), .S(MUL_1_mult_17_n171) );
  FA_X1 MUL_1_mult_17_U100 ( .A(MUL_1_mult_17_n287), .B(MUL_1_mult_17_n264), 
        .CI(MUL_1_mult_17_n275), .CO(MUL_1_mult_17_n168), .S(
        MUL_1_mult_17_n169) );
  HA_X1 MUL_1_mult_17_U99 ( .A(MUL_1_mult_17_n197), .B(MUL_1_mult_17_n263), 
        .CO(MUL_1_mult_17_n166), .S(MUL_1_mult_17_n167) );
  FA_X1 MUL_1_mult_17_U98 ( .A(MUL_1_mult_17_n274), .B(MUL_1_mult_17_n286), 
        .CI(MUL_1_mult_17_n167), .CO(MUL_1_mult_17_n164), .S(
        MUL_1_mult_17_n165) );
  FA_X1 MUL_1_mult_17_U97 ( .A(MUL_1_mult_17_n285), .B(MUL_1_mult_17_n251), 
        .CI(MUL_1_mult_17_n273), .CO(MUL_1_mult_17_n162), .S(
        MUL_1_mult_17_n163) );
  FA_X1 MUL_1_mult_17_U96 ( .A(MUL_1_mult_17_n166), .B(MUL_1_mult_17_n262), 
        .CI(MUL_1_mult_17_n163), .CO(MUL_1_mult_17_n160), .S(
        MUL_1_mult_17_n161) );
  HA_X1 MUL_1_mult_17_U95 ( .A(MUL_1_mult_17_n196), .B(MUL_1_mult_17_n250), 
        .CO(MUL_1_mult_17_n158), .S(MUL_1_mult_17_n159) );
  FA_X1 MUL_1_mult_17_U94 ( .A(MUL_1_mult_17_n261), .B(MUL_1_mult_17_n284), 
        .CI(MUL_1_mult_17_n272), .CO(MUL_1_mult_17_n156), .S(
        MUL_1_mult_17_n157) );
  FA_X1 MUL_1_mult_17_U93 ( .A(MUL_1_mult_17_n162), .B(MUL_1_mult_17_n159), 
        .CI(MUL_1_mult_17_n157), .CO(MUL_1_mult_17_n154), .S(
        MUL_1_mult_17_n155) );
  FA_X1 MUL_1_mult_17_U92 ( .A(MUL_1_mult_17_n260), .B(MUL_1_mult_17_n238), 
        .CI(MUL_1_mult_17_n283), .CO(MUL_1_mult_17_n152), .S(
        MUL_1_mult_17_n153) );
  FA_X1 MUL_1_mult_17_U91 ( .A(MUL_1_mult_17_n249), .B(MUL_1_mult_17_n271), 
        .CI(MUL_1_mult_17_n158), .CO(MUL_1_mult_17_n150), .S(
        MUL_1_mult_17_n151) );
  FA_X1 MUL_1_mult_17_U90 ( .A(MUL_1_mult_17_n153), .B(MUL_1_mult_17_n156), 
        .CI(MUL_1_mult_17_n151), .CO(MUL_1_mult_17_n148), .S(
        MUL_1_mult_17_n149) );
  HA_X1 MUL_1_mult_17_U89 ( .A(MUL_1_mult_17_n195), .B(MUL_1_mult_17_n237), 
        .CO(MUL_1_mult_17_n146), .S(MUL_1_mult_17_n147) );
  FA_X1 MUL_1_mult_17_U88 ( .A(MUL_1_mult_17_n248), .B(MUL_1_mult_17_n259), 
        .CI(MUL_1_mult_17_n270), .CO(MUL_1_mult_17_n144), .S(
        MUL_1_mult_17_n145) );
  FA_X1 MUL_1_mult_17_U87 ( .A(MUL_1_mult_17_n147), .B(MUL_1_mult_17_n282), 
        .CI(MUL_1_mult_17_n152), .CO(MUL_1_mult_17_n142), .S(
        MUL_1_mult_17_n143) );
  FA_X1 MUL_1_mult_17_U86 ( .A(MUL_1_mult_17_n145), .B(MUL_1_mult_17_n150), 
        .CI(MUL_1_mult_17_n143), .CO(MUL_1_mult_17_n140), .S(
        MUL_1_mult_17_n141) );
  FA_X1 MUL_1_mult_17_U85 ( .A(MUL_1_mult_17_n247), .B(MUL_1_mult_17_n225), 
        .CI(MUL_1_mult_17_n281), .CO(MUL_1_mult_17_n138), .S(
        MUL_1_mult_17_n139) );
  FA_X1 MUL_1_mult_17_U84 ( .A(MUL_1_mult_17_n236), .B(MUL_1_mult_17_n269), 
        .CI(MUL_1_mult_17_n258), .CO(MUL_1_mult_17_n136), .S(
        MUL_1_mult_17_n137) );
  FA_X1 MUL_1_mult_17_U83 ( .A(MUL_1_mult_17_n144), .B(MUL_1_mult_17_n146), 
        .CI(MUL_1_mult_17_n139), .CO(MUL_1_mult_17_n134), .S(
        MUL_1_mult_17_n135) );
  FA_X1 MUL_1_mult_17_U82 ( .A(MUL_1_mult_17_n142), .B(MUL_1_mult_17_n137), 
        .CI(MUL_1_mult_17_n135), .CO(MUL_1_mult_17_n132), .S(
        MUL_1_mult_17_n133) );
  HA_X1 MUL_1_mult_17_U81 ( .A(MUL_1_mult_17_n194), .B(MUL_1_mult_17_n224), 
        .CO(MUL_1_mult_17_n130), .S(MUL_1_mult_17_n131) );
  FA_X1 MUL_1_mult_17_U80 ( .A(MUL_1_mult_17_n235), .B(MUL_1_mult_17_n257), 
        .CI(MUL_1_mult_17_n280), .CO(MUL_1_mult_17_n128), .S(
        MUL_1_mult_17_n129) );
  FA_X1 MUL_1_mult_17_U79 ( .A(MUL_1_mult_17_n246), .B(MUL_1_mult_17_n268), 
        .CI(MUL_1_mult_17_n131), .CO(MUL_1_mult_17_n126), .S(
        MUL_1_mult_17_n127) );
  FA_X1 MUL_1_mult_17_U78 ( .A(MUL_1_mult_17_n136), .B(MUL_1_mult_17_n138), 
        .CI(MUL_1_mult_17_n129), .CO(MUL_1_mult_17_n124), .S(
        MUL_1_mult_17_n125) );
  FA_X1 MUL_1_mult_17_U77 ( .A(MUL_1_mult_17_n134), .B(MUL_1_mult_17_n127), 
        .CI(MUL_1_mult_17_n125), .CO(MUL_1_mult_17_n122), .S(
        MUL_1_mult_17_n123) );
  FA_X1 MUL_1_mult_17_U76 ( .A(MUL_1_mult_17_n234), .B(MUL_1_mult_17_n212), 
        .CI(MUL_1_mult_17_n279), .CO(MUL_1_mult_17_n120), .S(
        MUL_1_mult_17_n121) );
  FA_X1 MUL_1_mult_17_U75 ( .A(MUL_1_mult_17_n223), .B(MUL_1_mult_17_n267), 
        .CI(MUL_1_mult_17_n245), .CO(MUL_1_mult_17_n118), .S(
        MUL_1_mult_17_n119) );
  FA_X1 MUL_1_mult_17_U74 ( .A(MUL_1_mult_17_n130), .B(MUL_1_mult_17_n256), 
        .CI(MUL_1_mult_17_n128), .CO(MUL_1_mult_17_n116), .S(
        MUL_1_mult_17_n117) );
  FA_X1 MUL_1_mult_17_U73 ( .A(MUL_1_mult_17_n119), .B(MUL_1_mult_17_n121), 
        .CI(MUL_1_mult_17_n126), .CO(MUL_1_mult_17_n114), .S(
        MUL_1_mult_17_n115) );
  FA_X1 MUL_1_mult_17_U72 ( .A(MUL_1_mult_17_n117), .B(MUL_1_mult_17_n124), 
        .CI(MUL_1_mult_17_n115), .CO(MUL_1_mult_17_n112), .S(
        MUL_1_mult_17_n113) );
  FA_X1 MUL_1_mult_17_U69 ( .A(MUL_1_mult_17_n233), .B(MUL_1_mult_17_n244), 
        .CI(MUL_1_mult_17_n543), .CO(MUL_1_mult_17_n108), .S(
        MUL_1_mult_17_n109) );
  FA_X1 MUL_1_mult_17_U68 ( .A(MUL_1_mult_17_n193), .B(MUL_1_mult_17_n266), 
        .CI(MUL_1_mult_17_n255), .CO(MUL_1_mult_17_n106), .S(
        MUL_1_mult_17_n107) );
  FA_X1 MUL_1_mult_17_U67 ( .A(MUL_1_mult_17_n120), .B(MUL_1_mult_17_n111), 
        .CI(MUL_1_mult_17_n118), .CO(MUL_1_mult_17_n104), .S(
        MUL_1_mult_17_n105) );
  FA_X1 MUL_1_mult_17_U66 ( .A(MUL_1_mult_17_n109), .B(MUL_1_mult_17_n107), 
        .CI(MUL_1_mult_17_n116), .CO(MUL_1_mult_17_n102), .S(
        MUL_1_mult_17_n103) );
  FA_X1 MUL_1_mult_17_U65 ( .A(MUL_1_mult_17_n114), .B(MUL_1_mult_17_n105), 
        .CI(MUL_1_mult_17_n103), .CO(MUL_1_mult_17_n100), .S(
        MUL_1_mult_17_n101) );
  FA_X1 MUL_1_mult_17_U63 ( .A(MUL_1_mult_17_n210), .B(MUL_1_mult_17_n221), 
        .CI(MUL_1_mult_17_n254), .CO(MUL_1_mult_17_n96), .S(MUL_1_mult_17_n97)
         );
  FA_X1 MUL_1_mult_17_U62 ( .A(MUL_1_mult_17_n232), .B(MUL_1_mult_17_n243), 
        .CI(MUL_1_mult_17_n539), .CO(MUL_1_mult_17_n94), .S(MUL_1_mult_17_n95)
         );
  FA_X1 MUL_1_mult_17_U61 ( .A(MUL_1_mult_17_n108), .B(MUL_1_mult_17_n110), 
        .CI(MUL_1_mult_17_n106), .CO(MUL_1_mult_17_n92), .S(MUL_1_mult_17_n93)
         );
  FA_X1 MUL_1_mult_17_U60 ( .A(MUL_1_mult_17_n95), .B(MUL_1_mult_17_n97), .CI(
        MUL_1_mult_17_n104), .CO(MUL_1_mult_17_n90), .S(MUL_1_mult_17_n91) );
  FA_X1 MUL_1_mult_17_U59 ( .A(MUL_1_mult_17_n102), .B(MUL_1_mult_17_n93), 
        .CI(MUL_1_mult_17_n91), .CO(MUL_1_mult_17_n88), .S(MUL_1_mult_17_n89)
         );
  FA_X1 MUL_1_mult_17_U58 ( .A(MUL_1_mult_17_n98), .B(MUL_1_mult_17_n209), 
        .CI(MUL_1_mult_17_n540), .CO(MUL_1_mult_17_n86), .S(MUL_1_mult_17_n87)
         );
  FA_X1 MUL_1_mult_17_U57 ( .A(MUL_1_mult_17_n220), .B(MUL_1_mult_17_n253), 
        .CI(MUL_1_mult_17_n231), .CO(MUL_1_mult_17_n84), .S(MUL_1_mult_17_n85)
         );
  FA_X1 MUL_1_mult_17_U56 ( .A(MUL_1_mult_17_n96), .B(MUL_1_mult_17_n242), 
        .CI(MUL_1_mult_17_n94), .CO(MUL_1_mult_17_n82), .S(MUL_1_mult_17_n83)
         );
  FA_X1 MUL_1_mult_17_U55 ( .A(MUL_1_mult_17_n87), .B(MUL_1_mult_17_n85), .CI(
        MUL_1_mult_17_n92), .CO(MUL_1_mult_17_n80), .S(MUL_1_mult_17_n81) );
  FA_X1 MUL_1_mult_17_U54 ( .A(MUL_1_mult_17_n90), .B(MUL_1_mult_17_n83), .CI(
        MUL_1_mult_17_n81), .CO(MUL_1_mult_17_n78), .S(MUL_1_mult_17_n79) );
  FA_X1 MUL_1_mult_17_U52 ( .A(MUL_1_mult_17_n241), .B(MUL_1_mult_17_n219), 
        .CI(MUL_1_mult_17_n208), .CO(MUL_1_mult_17_n74), .S(MUL_1_mult_17_n75)
         );
  FA_X1 MUL_1_mult_17_U51 ( .A(MUL_1_mult_17_n534), .B(MUL_1_mult_17_n230), 
        .CI(MUL_1_mult_17_n86), .CO(MUL_1_mult_17_n72), .S(MUL_1_mult_17_n73)
         );
  FA_X1 MUL_1_mult_17_U50 ( .A(MUL_1_mult_17_n75), .B(MUL_1_mult_17_n84), .CI(
        MUL_1_mult_17_n82), .CO(MUL_1_mult_17_n70), .S(MUL_1_mult_17_n71) );
  FA_X1 MUL_1_mult_17_U49 ( .A(MUL_1_mult_17_n80), .B(MUL_1_mult_17_n73), .CI(
        MUL_1_mult_17_n71), .CO(MUL_1_mult_17_n68), .S(MUL_1_mult_17_n69) );
  FA_X1 MUL_1_mult_17_U48 ( .A(MUL_1_mult_17_n240), .B(MUL_1_mult_17_n207), 
        .CI(MUL_1_mult_17_n535), .CO(MUL_1_mult_17_n66), .S(MUL_1_mult_17_n67)
         );
  FA_X1 MUL_1_mult_17_U47 ( .A(MUL_1_mult_17_n218), .B(MUL_1_mult_17_n76), 
        .CI(MUL_1_mult_17_n229), .CO(MUL_1_mult_17_n64), .S(MUL_1_mult_17_n65)
         );
  FA_X1 MUL_1_mult_17_U46 ( .A(MUL_1_mult_17_n65), .B(MUL_1_mult_17_n74), .CI(
        MUL_1_mult_17_n67), .CO(MUL_1_mult_17_n62), .S(MUL_1_mult_17_n63) );
  FA_X1 MUL_1_mult_17_U45 ( .A(MUL_1_mult_17_n70), .B(MUL_1_mult_17_n72), .CI(
        MUL_1_mult_17_n63), .CO(MUL_1_mult_17_n60), .S(MUL_1_mult_17_n61) );
  FA_X1 MUL_1_mult_17_U43 ( .A(MUL_1_mult_17_n206), .B(MUL_1_mult_17_n217), 
        .CI(MUL_1_mult_17_n228), .CO(MUL_1_mult_17_n56), .S(MUL_1_mult_17_n57)
         );
  FA_X1 MUL_1_mult_17_U42 ( .A(MUL_1_mult_17_n66), .B(MUL_1_mult_17_n529), 
        .CI(MUL_1_mult_17_n64), .CO(MUL_1_mult_17_n54), .S(MUL_1_mult_17_n55)
         );
  FA_X1 MUL_1_mult_17_U41 ( .A(MUL_1_mult_17_n55), .B(MUL_1_mult_17_n57), .CI(
        MUL_1_mult_17_n62), .CO(MUL_1_mult_17_n52), .S(MUL_1_mult_17_n53) );
  FA_X1 MUL_1_mult_17_U40 ( .A(MUL_1_mult_17_n216), .B(MUL_1_mult_17_n205), 
        .CI(MUL_1_mult_17_n530), .CO(MUL_1_mult_17_n50), .S(MUL_1_mult_17_n51)
         );
  FA_X1 MUL_1_mult_17_U39 ( .A(MUL_1_mult_17_n58), .B(MUL_1_mult_17_n227), 
        .CI(MUL_1_mult_17_n56), .CO(MUL_1_mult_17_n48), .S(MUL_1_mult_17_n49)
         );
  FA_X1 MUL_1_mult_17_U38 ( .A(MUL_1_mult_17_n54), .B(MUL_1_mult_17_n51), .CI(
        MUL_1_mult_17_n49), .CO(MUL_1_mult_17_n46), .S(MUL_1_mult_17_n47) );
  FA_X1 MUL_1_mult_17_U36 ( .A(MUL_1_mult_17_n204), .B(MUL_1_mult_17_n215), 
        .CI(MUL_1_mult_17_n524), .CO(MUL_1_mult_17_n42), .S(MUL_1_mult_17_n43)
         );
  FA_X1 MUL_1_mult_17_U35 ( .A(MUL_1_mult_17_n43), .B(MUL_1_mult_17_n50), .CI(
        MUL_1_mult_17_n48), .CO(MUL_1_mult_17_n40), .S(MUL_1_mult_17_n41) );
  FA_X1 MUL_1_mult_17_U34 ( .A(MUL_1_mult_17_n214), .B(MUL_1_mult_17_n44), 
        .CI(MUL_1_mult_17_n525), .CO(MUL_1_mult_17_n38), .S(MUL_1_mult_17_n39)
         );
  FA_X1 MUL_1_mult_17_U33 ( .A(MUL_1_mult_17_n42), .B(MUL_1_mult_17_n203), 
        .CI(MUL_1_mult_17_n39), .CO(MUL_1_mult_17_n36), .S(MUL_1_mult_17_n37)
         );
  FA_X1 MUL_1_mult_17_U31 ( .A(MUL_1_mult_17_n518), .B(MUL_1_mult_17_n202), 
        .CI(MUL_1_mult_17_n38), .CO(MUL_1_mult_17_n32), .S(MUL_1_mult_17_n33)
         );
  FA_X1 MUL_1_mult_17_U30 ( .A(MUL_1_mult_17_n201), .B(MUL_1_mult_17_n34), 
        .CI(MUL_1_mult_17_n519), .CO(MUL_1_mult_17_n30), .S(MUL_1_mult_17_n31)
         );
  FA_X1 MUL_1_mult_17_U11 ( .A(MUL_1_mult_17_n53), .B(MUL_1_mult_17_n60), .CI(
        MUL_1_mult_17_n509), .CO(MUL_1_mult_17_n10), .S(
        TRUNCATED_MULT_RES_1__0_) );
  FA_X1 MUL_1_mult_17_U10 ( .A(MUL_1_mult_17_n47), .B(MUL_1_mult_17_n52), .CI(
        MUL_1_mult_17_n10), .CO(MUL_1_mult_17_n9), .S(TRUNCATED_MULT_RES_1__1_) );
  FA_X1 MUL_1_mult_17_U9 ( .A(MUL_1_mult_17_n41), .B(MUL_1_mult_17_n46), .CI(
        MUL_1_mult_17_n9), .CO(MUL_1_mult_17_n8), .S(TRUNCATED_MULT_RES_1__2_)
         );
  FA_X1 MUL_1_mult_17_U8 ( .A(MUL_1_mult_17_n37), .B(MUL_1_mult_17_n40), .CI(
        MUL_1_mult_17_n8), .CO(MUL_1_mult_17_n7), .S(TRUNCATED_MULT_RES_1__3_)
         );
  FA_X1 MUL_1_mult_17_U7 ( .A(MUL_1_mult_17_n33), .B(MUL_1_mult_17_n36), .CI(
        MUL_1_mult_17_n7), .CO(MUL_1_mult_17_n6), .S(TRUNCATED_MULT_RES_1__4_)
         );
  FA_X1 MUL_1_mult_17_U6 ( .A(MUL_1_mult_17_n32), .B(MUL_1_mult_17_n31), .CI(
        MUL_1_mult_17_n6), .CO(MUL_1_mult_17_n5), .S(TRUNCATED_MULT_RES_1__5_)
         );
  FA_X1 MUL_1_mult_17_U5 ( .A(MUL_1_mult_17_n30), .B(MUL_1_mult_17_n29), .CI(
        MUL_1_mult_17_n5), .CO(MUL_1_mult_17_n4), .S(TRUNCATED_MULT_RES_1__6_)
         );
  XOR2_X1 ADD_1_add_18_U2 ( .A(MULT_RESULTS_0__18_), .B(
        TRUNCATED_MULT_RES_1__0_), .Z(SUM_RESULTS_1__0_) );
  AND2_X1 ADD_1_add_18_U1 ( .A1(MULT_RESULTS_0__18_), .A2(
        TRUNCATED_MULT_RES_1__0_), .ZN(ADD_1_add_18_n1) );
  FA_X1 ADD_1_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_1__1_), .B(
        MULT_RESULTS_0__19_), .CI(ADD_1_add_18_n1), .CO(ADD_1_add_18_carry[2]), 
        .S(SUM_RESULTS_1__1_) );
  FA_X1 ADD_1_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_1__2_), .B(
        MULT_RESULTS_0__20_), .CI(ADD_1_add_18_carry[2]), .CO(
        ADD_1_add_18_carry[3]), .S(SUM_RESULTS_1__2_) );
  FA_X1 ADD_1_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_1__3_), .B(
        MULT_RESULTS_0__21_), .CI(ADD_1_add_18_carry[3]), .CO(
        ADD_1_add_18_carry[4]), .S(SUM_RESULTS_1__3_) );
  FA_X1 ADD_1_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_1__4_), .B(
        MULT_RESULTS_0__22_), .CI(ADD_1_add_18_carry[4]), .CO(
        ADD_1_add_18_carry[5]), .S(SUM_RESULTS_1__4_) );
  FA_X1 ADD_1_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_1__5_), .B(
        MULT_RESULTS_0__23_), .CI(ADD_1_add_18_carry[5]), .CO(
        ADD_1_add_18_carry[6]), .S(SUM_RESULTS_1__5_) );
  FA_X1 ADD_1_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_1__6_), .B(
        MULT_RESULTS_0__24_), .CI(ADD_1_add_18_carry[6]), .CO(
        ADD_1_add_18_carry[7]), .S(SUM_RESULTS_1__6_) );
  FA_X1 ADD_1_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_1__7_), .B(
        MULT_RESULTS_0__25_), .CI(ADD_1_add_18_carry[7]), .S(
        SUM_RESULTS_1__12_) );
  BUF_X1 SAMPLE_REG_2_U31 ( .A(n545), .Z(SAMPLE_REG_2_n42) );
  NAND2_X1 SAMPLE_REG_2_U30 ( .A1(SAMPLE_REG_2_n42), .A2(SAMPLES[117]), .ZN(
        SAMPLE_REG_2_n82) );
  OAI21_X1 SAMPLE_REG_2_U29 ( .B1(SAMPLE_REG_2_n69), .B2(SAMPLE_REG_2_n42), 
        .A(SAMPLE_REG_2_n82), .ZN(SAMPLE_REG_2_n56) );
  NAND2_X1 SAMPLE_REG_2_U28 ( .A1(SAMPLES[119]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n80) );
  OAI21_X1 SAMPLE_REG_2_U27 ( .B1(SAMPLE_REG_2_n67), .B2(SAMPLE_REG_2_n41), 
        .A(SAMPLE_REG_2_n80), .ZN(SAMPLE_REG_2_n54) );
  NAND2_X1 SAMPLE_REG_2_U26 ( .A1(SAMPLES[129]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n70) );
  OAI21_X1 SAMPLE_REG_2_U25 ( .B1(SAMPLE_REG_2_n57), .B2(SAMPLE_REG_2_n41), 
        .A(SAMPLE_REG_2_n70), .ZN(SAMPLE_REG_2_n44) );
  NAND2_X1 SAMPLE_REG_2_U24 ( .A1(SAMPLES[128]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n71) );
  OAI21_X1 SAMPLE_REG_2_U23 ( .B1(SAMPLE_REG_2_n58), .B2(SAMPLE_REG_2_n41), 
        .A(SAMPLE_REG_2_n71), .ZN(SAMPLE_REG_2_n45) );
  NAND2_X1 SAMPLE_REG_2_U22 ( .A1(SAMPLES[127]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n72) );
  OAI21_X1 SAMPLE_REG_2_U21 ( .B1(SAMPLE_REG_2_n59), .B2(SAMPLE_REG_2_n41), 
        .A(SAMPLE_REG_2_n72), .ZN(SAMPLE_REG_2_n46) );
  NAND2_X1 SAMPLE_REG_2_U20 ( .A1(SAMPLES[126]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n73) );
  OAI21_X1 SAMPLE_REG_2_U19 ( .B1(SAMPLE_REG_2_n60), .B2(SAMPLE_REG_2_n41), 
        .A(SAMPLE_REG_2_n73), .ZN(SAMPLE_REG_2_n47) );
  NAND2_X1 SAMPLE_REG_2_U18 ( .A1(SAMPLES[125]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n74) );
  OAI21_X1 SAMPLE_REG_2_U17 ( .B1(SAMPLE_REG_2_n61), .B2(SAMPLE_REG_2_n41), 
        .A(SAMPLE_REG_2_n74), .ZN(SAMPLE_REG_2_n48) );
  NAND2_X1 SAMPLE_REG_2_U16 ( .A1(SAMPLES[124]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n75) );
  OAI21_X1 SAMPLE_REG_2_U15 ( .B1(SAMPLE_REG_2_n62), .B2(SAMPLE_REG_2_n41), 
        .A(SAMPLE_REG_2_n75), .ZN(SAMPLE_REG_2_n49) );
  NAND2_X1 SAMPLE_REG_2_U14 ( .A1(SAMPLES[123]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n76) );
  OAI21_X1 SAMPLE_REG_2_U13 ( .B1(SAMPLE_REG_2_n63), .B2(SAMPLE_REG_2_n41), 
        .A(SAMPLE_REG_2_n76), .ZN(SAMPLE_REG_2_n50) );
  NAND2_X1 SAMPLE_REG_2_U12 ( .A1(SAMPLES[122]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n77) );
  OAI21_X1 SAMPLE_REG_2_U11 ( .B1(SAMPLE_REG_2_n64), .B2(SAMPLE_REG_2_n41), 
        .A(SAMPLE_REG_2_n77), .ZN(SAMPLE_REG_2_n51) );
  NAND2_X1 SAMPLE_REG_2_U10 ( .A1(SAMPLES[121]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n78) );
  OAI21_X1 SAMPLE_REG_2_U9 ( .B1(SAMPLE_REG_2_n65), .B2(SAMPLE_REG_2_n41), .A(
        SAMPLE_REG_2_n78), .ZN(SAMPLE_REG_2_n52) );
  NAND2_X1 SAMPLE_REG_2_U8 ( .A1(SAMPLES[120]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n79) );
  OAI21_X1 SAMPLE_REG_2_U7 ( .B1(SAMPLE_REG_2_n66), .B2(SAMPLE_REG_2_n41), .A(
        SAMPLE_REG_2_n79), .ZN(SAMPLE_REG_2_n53) );
  NAND2_X1 SAMPLE_REG_2_U6 ( .A1(SAMPLES[118]), .A2(SAMPLE_REG_2_n40), .ZN(
        SAMPLE_REG_2_n81) );
  OAI21_X1 SAMPLE_REG_2_U5 ( .B1(SAMPLE_REG_2_n68), .B2(SAMPLE_REG_2_n41), .A(
        SAMPLE_REG_2_n81), .ZN(SAMPLE_REG_2_n55) );
  BUF_X1 SAMPLE_REG_2_U4 ( .A(n545), .Z(SAMPLE_REG_2_n41) );
  BUF_X1 SAMPLE_REG_2_U3 ( .A(n545), .Z(SAMPLE_REG_2_n40) );
  BUF_X1 SAMPLE_REG_2_U2 ( .A(n546), .Z(SAMPLE_REG_2_n43) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_12_ ( .D(SAMPLE_REG_2_n44), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[116]), .QN(SAMPLE_REG_2_n57) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_2_ ( .D(SAMPLE_REG_2_n54), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[106]), .QN(SAMPLE_REG_2_n67) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_4_ ( .D(SAMPLE_REG_2_n52), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[108]), .QN(SAMPLE_REG_2_n65) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_6_ ( .D(SAMPLE_REG_2_n50), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[110]), .QN(SAMPLE_REG_2_n63) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_8_ ( .D(SAMPLE_REG_2_n48), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[112]), .QN(SAMPLE_REG_2_n61) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_10_ ( .D(SAMPLE_REG_2_n46), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[114]), .QN(SAMPLE_REG_2_n59) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_0_ ( .D(SAMPLE_REG_2_n56), .CK(CLK), .RN(n546), 
        .Q(SAMPLES[104]), .QN(SAMPLE_REG_2_n69) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_1_ ( .D(SAMPLE_REG_2_n55), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[105]), .QN(SAMPLE_REG_2_n68) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_3_ ( .D(SAMPLE_REG_2_n53), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[107]), .QN(SAMPLE_REG_2_n66) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_5_ ( .D(SAMPLE_REG_2_n51), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[109]), .QN(SAMPLE_REG_2_n64) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_7_ ( .D(SAMPLE_REG_2_n49), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[111]), .QN(SAMPLE_REG_2_n62) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_9_ ( .D(SAMPLE_REG_2_n47), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[113]), .QN(SAMPLE_REG_2_n60) );
  DFFR_X1 SAMPLE_REG_2_DOUT_reg_11_ ( .D(SAMPLE_REG_2_n45), .CK(CLK), .RN(
        SAMPLE_REG_2_n43), .Q(SAMPLES[115]), .QN(SAMPLE_REG_2_n58) );
  XOR2_X1 MUL_2_mult_17_U660 ( .A(SAMPLES[106]), .B(SAMPLES[105]), .Z(
        MUL_2_mult_17_n681) );
  NAND2_X1 MUL_2_mult_17_U659 ( .A1(SAMPLES[105]), .A2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n571) );
  XNOR2_X1 MUL_2_mult_17_U658 ( .A(A[106]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n570) );
  OAI22_X1 MUL_2_mult_17_U657 ( .A1(A[105]), .A2(MUL_2_mult_17_n571), .B1(
        MUL_2_mult_17_n570), .B2(MUL_2_mult_17_n544), .ZN(MUL_2_mult_17_n683)
         );
  XNOR2_X1 MUL_2_mult_17_U656 ( .A(MUL_2_mult_17_n541), .B(SAMPLES[106]), .ZN(
        MUL_2_mult_17_n682) );
  NAND2_X1 MUL_2_mult_17_U655 ( .A1(MUL_2_mult_17_n542), .A2(
        MUL_2_mult_17_n682), .ZN(MUL_2_mult_17_n552) );
  NAND3_X1 MUL_2_mult_17_U654 ( .A1(MUL_2_mult_17_n681), .A2(
        MUL_2_mult_17_n546), .A3(SAMPLES[107]), .ZN(MUL_2_mult_17_n680) );
  OAI21_X1 MUL_2_mult_17_U653 ( .B1(MUL_2_mult_17_n541), .B2(
        MUL_2_mult_17_n552), .A(MUL_2_mult_17_n680), .ZN(MUL_2_mult_17_n679)
         );
  AOI222_X1 MUL_2_mult_17_U652 ( .A1(MUL_2_mult_17_n506), .A2(
        MUL_2_mult_17_n171), .B1(MUL_2_mult_17_n679), .B2(MUL_2_mult_17_n506), 
        .C1(MUL_2_mult_17_n679), .C2(MUL_2_mult_17_n171), .ZN(
        MUL_2_mult_17_n678) );
  AOI222_X1 MUL_2_mult_17_U651 ( .A1(MUL_2_mult_17_n538), .A2(
        MUL_2_mult_17_n169), .B1(MUL_2_mult_17_n538), .B2(MUL_2_mult_17_n170), 
        .C1(MUL_2_mult_17_n170), .C2(MUL_2_mult_17_n169), .ZN(
        MUL_2_mult_17_n677) );
  AOI222_X1 MUL_2_mult_17_U650 ( .A1(MUL_2_mult_17_n537), .A2(
        MUL_2_mult_17_n165), .B1(MUL_2_mult_17_n537), .B2(MUL_2_mult_17_n168), 
        .C1(MUL_2_mult_17_n168), .C2(MUL_2_mult_17_n165), .ZN(
        MUL_2_mult_17_n676) );
  AOI222_X1 MUL_2_mult_17_U649 ( .A1(MUL_2_mult_17_n533), .A2(
        MUL_2_mult_17_n161), .B1(MUL_2_mult_17_n533), .B2(MUL_2_mult_17_n164), 
        .C1(MUL_2_mult_17_n164), .C2(MUL_2_mult_17_n161), .ZN(
        MUL_2_mult_17_n675) );
  AOI222_X1 MUL_2_mult_17_U648 ( .A1(MUL_2_mult_17_n532), .A2(
        MUL_2_mult_17_n155), .B1(MUL_2_mult_17_n532), .B2(MUL_2_mult_17_n160), 
        .C1(MUL_2_mult_17_n160), .C2(MUL_2_mult_17_n155), .ZN(
        MUL_2_mult_17_n674) );
  AOI222_X1 MUL_2_mult_17_U647 ( .A1(MUL_2_mult_17_n528), .A2(
        MUL_2_mult_17_n149), .B1(MUL_2_mult_17_n528), .B2(MUL_2_mult_17_n154), 
        .C1(MUL_2_mult_17_n154), .C2(MUL_2_mult_17_n149), .ZN(
        MUL_2_mult_17_n673) );
  AOI222_X1 MUL_2_mult_17_U646 ( .A1(MUL_2_mult_17_n527), .A2(
        MUL_2_mult_17_n141), .B1(MUL_2_mult_17_n527), .B2(MUL_2_mult_17_n148), 
        .C1(MUL_2_mult_17_n148), .C2(MUL_2_mult_17_n141), .ZN(
        MUL_2_mult_17_n672) );
  AOI222_X1 MUL_2_mult_17_U645 ( .A1(MUL_2_mult_17_n523), .A2(
        MUL_2_mult_17_n133), .B1(MUL_2_mult_17_n523), .B2(MUL_2_mult_17_n140), 
        .C1(MUL_2_mult_17_n140), .C2(MUL_2_mult_17_n133), .ZN(
        MUL_2_mult_17_n671) );
  AOI222_X1 MUL_2_mult_17_U644 ( .A1(MUL_2_mult_17_n522), .A2(
        MUL_2_mult_17_n123), .B1(MUL_2_mult_17_n522), .B2(MUL_2_mult_17_n132), 
        .C1(MUL_2_mult_17_n132), .C2(MUL_2_mult_17_n123), .ZN(
        MUL_2_mult_17_n670) );
  AOI222_X1 MUL_2_mult_17_U643 ( .A1(MUL_2_mult_17_n517), .A2(
        MUL_2_mult_17_n113), .B1(MUL_2_mult_17_n517), .B2(MUL_2_mult_17_n122), 
        .C1(MUL_2_mult_17_n122), .C2(MUL_2_mult_17_n113), .ZN(
        MUL_2_mult_17_n669) );
  AOI222_X1 MUL_2_mult_17_U642 ( .A1(MUL_2_mult_17_n515), .A2(
        MUL_2_mult_17_n101), .B1(MUL_2_mult_17_n515), .B2(MUL_2_mult_17_n112), 
        .C1(MUL_2_mult_17_n112), .C2(MUL_2_mult_17_n101), .ZN(
        MUL_2_mult_17_n668) );
  AOI222_X1 MUL_2_mult_17_U641 ( .A1(MUL_2_mult_17_n513), .A2(
        MUL_2_mult_17_n89), .B1(MUL_2_mult_17_n513), .B2(MUL_2_mult_17_n100), 
        .C1(MUL_2_mult_17_n100), .C2(MUL_2_mult_17_n89), .ZN(
        MUL_2_mult_17_n667) );
  AOI222_X1 MUL_2_mult_17_U640 ( .A1(MUL_2_mult_17_n512), .A2(
        MUL_2_mult_17_n79), .B1(MUL_2_mult_17_n512), .B2(MUL_2_mult_17_n88), 
        .C1(MUL_2_mult_17_n88), .C2(MUL_2_mult_17_n79), .ZN(MUL_2_mult_17_n666) );
  AOI222_X1 MUL_2_mult_17_U639 ( .A1(MUL_2_mult_17_n511), .A2(
        MUL_2_mult_17_n69), .B1(MUL_2_mult_17_n511), .B2(MUL_2_mult_17_n78), 
        .C1(MUL_2_mult_17_n78), .C2(MUL_2_mult_17_n69), .ZN(MUL_2_mult_17_n665) );
  AOI222_X1 MUL_2_mult_17_U638 ( .A1(MUL_2_mult_17_n510), .A2(
        MUL_2_mult_17_n61), .B1(MUL_2_mult_17_n510), .B2(MUL_2_mult_17_n68), 
        .C1(MUL_2_mult_17_n68), .C2(MUL_2_mult_17_n61), .ZN(MUL_2_mult_17_n664) );
  XNOR2_X1 MUL_2_mult_17_U637 ( .A(A[106]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n633) );
  XNOR2_X1 MUL_2_mult_17_U636 ( .A(MUL_2_mult_17_n521), .B(SAMPLES[114]), .ZN(
        MUL_2_mult_17_n663) );
  NAND2_X1 MUL_2_mult_17_U635 ( .A1(MUL_2_mult_17_n568), .A2(
        MUL_2_mult_17_n663), .ZN(MUL_2_mult_17_n567) );
  XNOR2_X1 MUL_2_mult_17_U634 ( .A(A[107]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n634) );
  OAI22_X1 MUL_2_mult_17_U633 ( .A1(MUL_2_mult_17_n633), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n634), 
        .ZN(MUL_2_mult_17_n662) );
  XNOR2_X1 MUL_2_mult_17_U632 ( .A(MUL_2_mult_17_n545), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n661) );
  XNOR2_X1 MUL_2_mult_17_U631 ( .A(SAMPLES[116]), .B(MUL_2_mult_17_n521), .ZN(
        MUL_2_mult_17_n549) );
  NAND2_X1 MUL_2_mult_17_U630 ( .A1(MUL_2_mult_17_n661), .A2(
        MUL_2_mult_17_n549), .ZN(MUL_2_mult_17_n660) );
  NAND2_X1 MUL_2_mult_17_U629 ( .A1(MUL_2_mult_17_n520), .A2(
        MUL_2_mult_17_n660), .ZN(MUL_2_mult_17_n110) );
  XNOR2_X1 MUL_2_mult_17_U628 ( .A(MUL_2_mult_17_n660), .B(MUL_2_mult_17_n520), 
        .ZN(MUL_2_mult_17_n111) );
  NOR3_X1 MUL_2_mult_17_U627 ( .A1(MUL_2_mult_17_n514), .A2(A[104]), .A3(
        MUL_2_mult_17_n516), .ZN(MUL_2_mult_17_n193) );
  OR3_X1 MUL_2_mult_17_U626 ( .A1(MUL_2_mult_17_n568), .A2(A[104]), .A3(
        MUL_2_mult_17_n521), .ZN(MUL_2_mult_17_n659) );
  OAI21_X1 MUL_2_mult_17_U625 ( .B1(MUL_2_mult_17_n521), .B2(
        MUL_2_mult_17_n567), .A(MUL_2_mult_17_n659), .ZN(MUL_2_mult_17_n194)
         );
  XNOR2_X1 MUL_2_mult_17_U624 ( .A(MUL_2_mult_17_n526), .B(SAMPLES[112]), .ZN(
        MUL_2_mult_17_n658) );
  NAND2_X1 MUL_2_mult_17_U623 ( .A1(MUL_2_mult_17_n564), .A2(
        MUL_2_mult_17_n658), .ZN(MUL_2_mult_17_n563) );
  OR3_X1 MUL_2_mult_17_U622 ( .A1(MUL_2_mult_17_n564), .A2(A[104]), .A3(
        MUL_2_mult_17_n526), .ZN(MUL_2_mult_17_n657) );
  OAI21_X1 MUL_2_mult_17_U621 ( .B1(MUL_2_mult_17_n526), .B2(
        MUL_2_mult_17_n563), .A(MUL_2_mult_17_n657), .ZN(MUL_2_mult_17_n195)
         );
  XNOR2_X1 MUL_2_mult_17_U620 ( .A(MUL_2_mult_17_n531), .B(SAMPLES[110]), .ZN(
        MUL_2_mult_17_n656) );
  NAND2_X1 MUL_2_mult_17_U619 ( .A1(MUL_2_mult_17_n560), .A2(
        MUL_2_mult_17_n656), .ZN(MUL_2_mult_17_n559) );
  OR3_X1 MUL_2_mult_17_U618 ( .A1(MUL_2_mult_17_n560), .A2(A[104]), .A3(
        MUL_2_mult_17_n531), .ZN(MUL_2_mult_17_n655) );
  OAI21_X1 MUL_2_mult_17_U617 ( .B1(MUL_2_mult_17_n531), .B2(
        MUL_2_mult_17_n559), .A(MUL_2_mult_17_n655), .ZN(MUL_2_mult_17_n196)
         );
  XNOR2_X1 MUL_2_mult_17_U616 ( .A(MUL_2_mult_17_n536), .B(SAMPLES[108]), .ZN(
        MUL_2_mult_17_n654) );
  NAND2_X1 MUL_2_mult_17_U615 ( .A1(MUL_2_mult_17_n556), .A2(
        MUL_2_mult_17_n654), .ZN(MUL_2_mult_17_n555) );
  OR3_X1 MUL_2_mult_17_U614 ( .A1(MUL_2_mult_17_n556), .A2(A[104]), .A3(
        MUL_2_mult_17_n536), .ZN(MUL_2_mult_17_n653) );
  OAI21_X1 MUL_2_mult_17_U613 ( .B1(MUL_2_mult_17_n536), .B2(
        MUL_2_mult_17_n555), .A(MUL_2_mult_17_n653), .ZN(MUL_2_mult_17_n197)
         );
  XNOR2_X1 MUL_2_mult_17_U612 ( .A(A[115]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n652) );
  NOR2_X1 MUL_2_mult_17_U611 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n652), .ZN(MUL_2_mult_17_n201) );
  XNOR2_X1 MUL_2_mult_17_U610 ( .A(A[114]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n651) );
  NOR2_X1 MUL_2_mult_17_U609 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n651), .ZN(MUL_2_mult_17_n202) );
  XNOR2_X1 MUL_2_mult_17_U608 ( .A(A[113]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n650) );
  NOR2_X1 MUL_2_mult_17_U607 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n650), .ZN(MUL_2_mult_17_n203) );
  XNOR2_X1 MUL_2_mult_17_U606 ( .A(A[112]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n649) );
  NOR2_X1 MUL_2_mult_17_U605 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n649), .ZN(MUL_2_mult_17_n204) );
  XNOR2_X1 MUL_2_mult_17_U604 ( .A(A[111]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n648) );
  NOR2_X1 MUL_2_mult_17_U603 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n648), .ZN(MUL_2_mult_17_n205) );
  XNOR2_X1 MUL_2_mult_17_U602 ( .A(A[110]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n647) );
  NOR2_X1 MUL_2_mult_17_U601 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n647), .ZN(MUL_2_mult_17_n206) );
  XNOR2_X1 MUL_2_mult_17_U600 ( .A(A[109]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n646) );
  NOR2_X1 MUL_2_mult_17_U599 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n646), .ZN(MUL_2_mult_17_n207) );
  XNOR2_X1 MUL_2_mult_17_U598 ( .A(A[108]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n645) );
  NOR2_X1 MUL_2_mult_17_U597 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n645), .ZN(MUL_2_mult_17_n208) );
  XNOR2_X1 MUL_2_mult_17_U596 ( .A(A[107]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n644) );
  NOR2_X1 MUL_2_mult_17_U595 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n644), .ZN(MUL_2_mult_17_n209) );
  XNOR2_X1 MUL_2_mult_17_U594 ( .A(A[106]), .B(SAMPLES[116]), .ZN(
        MUL_2_mult_17_n643) );
  NOR2_X1 MUL_2_mult_17_U593 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n643), .ZN(MUL_2_mult_17_n210) );
  NOR2_X1 MUL_2_mult_17_U592 ( .A1(MUL_2_mult_17_n516), .A2(MUL_2_mult_17_n546), .ZN(MUL_2_mult_17_n212) );
  XNOR2_X1 MUL_2_mult_17_U591 ( .A(A[116]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n569) );
  OAI22_X1 MUL_2_mult_17_U590 ( .A1(MUL_2_mult_17_n569), .A2(
        MUL_2_mult_17_n568), .B1(MUL_2_mult_17_n567), .B2(MUL_2_mult_17_n569), 
        .ZN(MUL_2_mult_17_n642) );
  XNOR2_X1 MUL_2_mult_17_U589 ( .A(A[114]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n641) );
  XNOR2_X1 MUL_2_mult_17_U588 ( .A(A[115]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n566) );
  OAI22_X1 MUL_2_mult_17_U587 ( .A1(MUL_2_mult_17_n641), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n566), 
        .ZN(MUL_2_mult_17_n214) );
  XNOR2_X1 MUL_2_mult_17_U586 ( .A(A[113]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n640) );
  OAI22_X1 MUL_2_mult_17_U585 ( .A1(MUL_2_mult_17_n640), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n641), 
        .ZN(MUL_2_mult_17_n215) );
  XNOR2_X1 MUL_2_mult_17_U584 ( .A(A[112]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n639) );
  OAI22_X1 MUL_2_mult_17_U583 ( .A1(MUL_2_mult_17_n639), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n640), 
        .ZN(MUL_2_mult_17_n216) );
  XNOR2_X1 MUL_2_mult_17_U582 ( .A(A[111]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n638) );
  OAI22_X1 MUL_2_mult_17_U581 ( .A1(MUL_2_mult_17_n638), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n639), 
        .ZN(MUL_2_mult_17_n217) );
  XNOR2_X1 MUL_2_mult_17_U580 ( .A(A[110]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n637) );
  OAI22_X1 MUL_2_mult_17_U579 ( .A1(MUL_2_mult_17_n637), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n638), 
        .ZN(MUL_2_mult_17_n218) );
  XNOR2_X1 MUL_2_mult_17_U578 ( .A(A[109]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n636) );
  OAI22_X1 MUL_2_mult_17_U577 ( .A1(MUL_2_mult_17_n636), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n637), 
        .ZN(MUL_2_mult_17_n219) );
  XNOR2_X1 MUL_2_mult_17_U576 ( .A(A[108]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n635) );
  OAI22_X1 MUL_2_mult_17_U575 ( .A1(MUL_2_mult_17_n635), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n636), 
        .ZN(MUL_2_mult_17_n220) );
  OAI22_X1 MUL_2_mult_17_U574 ( .A1(MUL_2_mult_17_n634), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n635), 
        .ZN(MUL_2_mult_17_n221) );
  XNOR2_X1 MUL_2_mult_17_U573 ( .A(A[105]), .B(SAMPLES[115]), .ZN(
        MUL_2_mult_17_n632) );
  OAI22_X1 MUL_2_mult_17_U572 ( .A1(MUL_2_mult_17_n632), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n633), 
        .ZN(MUL_2_mult_17_n223) );
  XNOR2_X1 MUL_2_mult_17_U571 ( .A(SAMPLES[115]), .B(A[104]), .ZN(
        MUL_2_mult_17_n631) );
  OAI22_X1 MUL_2_mult_17_U570 ( .A1(MUL_2_mult_17_n631), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n632), 
        .ZN(MUL_2_mult_17_n224) );
  NOR2_X1 MUL_2_mult_17_U569 ( .A1(MUL_2_mult_17_n568), .A2(MUL_2_mult_17_n546), .ZN(MUL_2_mult_17_n225) );
  XNOR2_X1 MUL_2_mult_17_U568 ( .A(A[116]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n565) );
  OAI22_X1 MUL_2_mult_17_U567 ( .A1(MUL_2_mult_17_n565), .A2(
        MUL_2_mult_17_n564), .B1(MUL_2_mult_17_n563), .B2(MUL_2_mult_17_n565), 
        .ZN(MUL_2_mult_17_n630) );
  XNOR2_X1 MUL_2_mult_17_U566 ( .A(A[114]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n629) );
  XNOR2_X1 MUL_2_mult_17_U565 ( .A(A[115]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n562) );
  OAI22_X1 MUL_2_mult_17_U564 ( .A1(MUL_2_mult_17_n629), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n562), 
        .ZN(MUL_2_mult_17_n227) );
  XNOR2_X1 MUL_2_mult_17_U563 ( .A(A[113]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n628) );
  OAI22_X1 MUL_2_mult_17_U562 ( .A1(MUL_2_mult_17_n628), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n629), 
        .ZN(MUL_2_mult_17_n228) );
  XNOR2_X1 MUL_2_mult_17_U561 ( .A(A[112]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n627) );
  OAI22_X1 MUL_2_mult_17_U560 ( .A1(MUL_2_mult_17_n627), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n628), 
        .ZN(MUL_2_mult_17_n229) );
  XNOR2_X1 MUL_2_mult_17_U559 ( .A(A[111]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n626) );
  OAI22_X1 MUL_2_mult_17_U558 ( .A1(MUL_2_mult_17_n626), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n627), 
        .ZN(MUL_2_mult_17_n230) );
  XNOR2_X1 MUL_2_mult_17_U557 ( .A(A[110]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n625) );
  OAI22_X1 MUL_2_mult_17_U556 ( .A1(MUL_2_mult_17_n625), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n626), 
        .ZN(MUL_2_mult_17_n231) );
  XNOR2_X1 MUL_2_mult_17_U555 ( .A(A[109]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n624) );
  OAI22_X1 MUL_2_mult_17_U554 ( .A1(MUL_2_mult_17_n624), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n625), 
        .ZN(MUL_2_mult_17_n232) );
  XNOR2_X1 MUL_2_mult_17_U553 ( .A(A[108]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n623) );
  OAI22_X1 MUL_2_mult_17_U552 ( .A1(MUL_2_mult_17_n623), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n624), 
        .ZN(MUL_2_mult_17_n233) );
  XNOR2_X1 MUL_2_mult_17_U551 ( .A(A[107]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n622) );
  OAI22_X1 MUL_2_mult_17_U550 ( .A1(MUL_2_mult_17_n622), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n623), 
        .ZN(MUL_2_mult_17_n234) );
  XNOR2_X1 MUL_2_mult_17_U549 ( .A(A[106]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n621) );
  OAI22_X1 MUL_2_mult_17_U548 ( .A1(MUL_2_mult_17_n621), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n622), 
        .ZN(MUL_2_mult_17_n235) );
  XNOR2_X1 MUL_2_mult_17_U547 ( .A(A[105]), .B(SAMPLES[113]), .ZN(
        MUL_2_mult_17_n620) );
  OAI22_X1 MUL_2_mult_17_U546 ( .A1(MUL_2_mult_17_n620), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n621), 
        .ZN(MUL_2_mult_17_n236) );
  XNOR2_X1 MUL_2_mult_17_U545 ( .A(SAMPLES[113]), .B(A[104]), .ZN(
        MUL_2_mult_17_n619) );
  OAI22_X1 MUL_2_mult_17_U544 ( .A1(MUL_2_mult_17_n619), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n620), 
        .ZN(MUL_2_mult_17_n237) );
  NOR2_X1 MUL_2_mult_17_U543 ( .A1(MUL_2_mult_17_n564), .A2(MUL_2_mult_17_n546), .ZN(MUL_2_mult_17_n238) );
  XNOR2_X1 MUL_2_mult_17_U542 ( .A(A[116]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n561) );
  OAI22_X1 MUL_2_mult_17_U541 ( .A1(MUL_2_mult_17_n561), .A2(
        MUL_2_mult_17_n560), .B1(MUL_2_mult_17_n559), .B2(MUL_2_mult_17_n561), 
        .ZN(MUL_2_mult_17_n618) );
  XNOR2_X1 MUL_2_mult_17_U540 ( .A(A[114]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n617) );
  XNOR2_X1 MUL_2_mult_17_U539 ( .A(A[115]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n558) );
  OAI22_X1 MUL_2_mult_17_U538 ( .A1(MUL_2_mult_17_n617), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n558), 
        .ZN(MUL_2_mult_17_n240) );
  XNOR2_X1 MUL_2_mult_17_U537 ( .A(A[113]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n616) );
  OAI22_X1 MUL_2_mult_17_U536 ( .A1(MUL_2_mult_17_n616), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n617), 
        .ZN(MUL_2_mult_17_n241) );
  XNOR2_X1 MUL_2_mult_17_U535 ( .A(A[112]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n615) );
  OAI22_X1 MUL_2_mult_17_U534 ( .A1(MUL_2_mult_17_n615), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n616), 
        .ZN(MUL_2_mult_17_n242) );
  XNOR2_X1 MUL_2_mult_17_U533 ( .A(A[111]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n614) );
  OAI22_X1 MUL_2_mult_17_U532 ( .A1(MUL_2_mult_17_n614), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n615), 
        .ZN(MUL_2_mult_17_n243) );
  XNOR2_X1 MUL_2_mult_17_U531 ( .A(A[110]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n613) );
  OAI22_X1 MUL_2_mult_17_U530 ( .A1(MUL_2_mult_17_n613), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n614), 
        .ZN(MUL_2_mult_17_n244) );
  XNOR2_X1 MUL_2_mult_17_U529 ( .A(A[109]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n612) );
  OAI22_X1 MUL_2_mult_17_U528 ( .A1(MUL_2_mult_17_n612), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n613), 
        .ZN(MUL_2_mult_17_n245) );
  XNOR2_X1 MUL_2_mult_17_U527 ( .A(A[108]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n611) );
  OAI22_X1 MUL_2_mult_17_U526 ( .A1(MUL_2_mult_17_n611), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n612), 
        .ZN(MUL_2_mult_17_n246) );
  XNOR2_X1 MUL_2_mult_17_U525 ( .A(A[107]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n610) );
  OAI22_X1 MUL_2_mult_17_U524 ( .A1(MUL_2_mult_17_n610), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n611), 
        .ZN(MUL_2_mult_17_n247) );
  XNOR2_X1 MUL_2_mult_17_U523 ( .A(A[106]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n609) );
  OAI22_X1 MUL_2_mult_17_U522 ( .A1(MUL_2_mult_17_n609), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n610), 
        .ZN(MUL_2_mult_17_n248) );
  XNOR2_X1 MUL_2_mult_17_U521 ( .A(A[105]), .B(SAMPLES[111]), .ZN(
        MUL_2_mult_17_n608) );
  OAI22_X1 MUL_2_mult_17_U520 ( .A1(MUL_2_mult_17_n608), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n609), 
        .ZN(MUL_2_mult_17_n249) );
  XNOR2_X1 MUL_2_mult_17_U519 ( .A(SAMPLES[111]), .B(A[104]), .ZN(
        MUL_2_mult_17_n607) );
  OAI22_X1 MUL_2_mult_17_U518 ( .A1(MUL_2_mult_17_n607), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n608), 
        .ZN(MUL_2_mult_17_n250) );
  NOR2_X1 MUL_2_mult_17_U517 ( .A1(MUL_2_mult_17_n560), .A2(MUL_2_mult_17_n546), .ZN(MUL_2_mult_17_n251) );
  XNOR2_X1 MUL_2_mult_17_U516 ( .A(A[116]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n557) );
  OAI22_X1 MUL_2_mult_17_U515 ( .A1(MUL_2_mult_17_n557), .A2(
        MUL_2_mult_17_n556), .B1(MUL_2_mult_17_n555), .B2(MUL_2_mult_17_n557), 
        .ZN(MUL_2_mult_17_n606) );
  XNOR2_X1 MUL_2_mult_17_U514 ( .A(A[114]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n605) );
  XNOR2_X1 MUL_2_mult_17_U513 ( .A(A[115]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n554) );
  OAI22_X1 MUL_2_mult_17_U512 ( .A1(MUL_2_mult_17_n605), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n554), 
        .ZN(MUL_2_mult_17_n253) );
  XNOR2_X1 MUL_2_mult_17_U511 ( .A(A[113]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n604) );
  OAI22_X1 MUL_2_mult_17_U510 ( .A1(MUL_2_mult_17_n604), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n605), 
        .ZN(MUL_2_mult_17_n254) );
  XNOR2_X1 MUL_2_mult_17_U509 ( .A(A[112]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n603) );
  OAI22_X1 MUL_2_mult_17_U508 ( .A1(MUL_2_mult_17_n603), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n604), 
        .ZN(MUL_2_mult_17_n255) );
  XNOR2_X1 MUL_2_mult_17_U507 ( .A(A[111]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n602) );
  OAI22_X1 MUL_2_mult_17_U506 ( .A1(MUL_2_mult_17_n602), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n603), 
        .ZN(MUL_2_mult_17_n256) );
  XNOR2_X1 MUL_2_mult_17_U505 ( .A(A[110]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n601) );
  OAI22_X1 MUL_2_mult_17_U504 ( .A1(MUL_2_mult_17_n601), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n602), 
        .ZN(MUL_2_mult_17_n257) );
  XNOR2_X1 MUL_2_mult_17_U503 ( .A(A[109]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n600) );
  OAI22_X1 MUL_2_mult_17_U502 ( .A1(MUL_2_mult_17_n600), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n601), 
        .ZN(MUL_2_mult_17_n258) );
  XNOR2_X1 MUL_2_mult_17_U501 ( .A(A[108]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n599) );
  OAI22_X1 MUL_2_mult_17_U500 ( .A1(MUL_2_mult_17_n599), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n600), 
        .ZN(MUL_2_mult_17_n259) );
  XNOR2_X1 MUL_2_mult_17_U499 ( .A(A[107]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n598) );
  OAI22_X1 MUL_2_mult_17_U498 ( .A1(MUL_2_mult_17_n598), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n599), 
        .ZN(MUL_2_mult_17_n260) );
  XNOR2_X1 MUL_2_mult_17_U497 ( .A(A[106]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n597) );
  OAI22_X1 MUL_2_mult_17_U496 ( .A1(MUL_2_mult_17_n597), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n598), 
        .ZN(MUL_2_mult_17_n261) );
  XNOR2_X1 MUL_2_mult_17_U495 ( .A(A[105]), .B(SAMPLES[109]), .ZN(
        MUL_2_mult_17_n596) );
  OAI22_X1 MUL_2_mult_17_U494 ( .A1(MUL_2_mult_17_n596), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n597), 
        .ZN(MUL_2_mult_17_n262) );
  XNOR2_X1 MUL_2_mult_17_U493 ( .A(SAMPLES[109]), .B(A[104]), .ZN(
        MUL_2_mult_17_n595) );
  OAI22_X1 MUL_2_mult_17_U492 ( .A1(MUL_2_mult_17_n595), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n596), 
        .ZN(MUL_2_mult_17_n263) );
  NOR2_X1 MUL_2_mult_17_U491 ( .A1(MUL_2_mult_17_n556), .A2(MUL_2_mult_17_n546), .ZN(MUL_2_mult_17_n264) );
  XOR2_X1 MUL_2_mult_17_U490 ( .A(A[116]), .B(MUL_2_mult_17_n541), .Z(
        MUL_2_mult_17_n553) );
  OAI22_X1 MUL_2_mult_17_U489 ( .A1(MUL_2_mult_17_n553), .A2(
        MUL_2_mult_17_n542), .B1(MUL_2_mult_17_n552), .B2(MUL_2_mult_17_n553), 
        .ZN(MUL_2_mult_17_n594) );
  XNOR2_X1 MUL_2_mult_17_U488 ( .A(A[114]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n593) );
  XNOR2_X1 MUL_2_mult_17_U487 ( .A(A[115]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n551) );
  OAI22_X1 MUL_2_mult_17_U486 ( .A1(MUL_2_mult_17_n593), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n551), 
        .ZN(MUL_2_mult_17_n266) );
  XNOR2_X1 MUL_2_mult_17_U485 ( .A(A[113]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n592) );
  OAI22_X1 MUL_2_mult_17_U484 ( .A1(MUL_2_mult_17_n592), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n593), 
        .ZN(MUL_2_mult_17_n267) );
  XNOR2_X1 MUL_2_mult_17_U483 ( .A(A[112]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n591) );
  OAI22_X1 MUL_2_mult_17_U482 ( .A1(MUL_2_mult_17_n591), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n592), 
        .ZN(MUL_2_mult_17_n268) );
  XNOR2_X1 MUL_2_mult_17_U481 ( .A(A[111]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n590) );
  OAI22_X1 MUL_2_mult_17_U480 ( .A1(MUL_2_mult_17_n590), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n591), 
        .ZN(MUL_2_mult_17_n269) );
  XNOR2_X1 MUL_2_mult_17_U479 ( .A(A[110]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n589) );
  OAI22_X1 MUL_2_mult_17_U478 ( .A1(MUL_2_mult_17_n589), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n590), 
        .ZN(MUL_2_mult_17_n270) );
  XNOR2_X1 MUL_2_mult_17_U477 ( .A(A[109]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n588) );
  OAI22_X1 MUL_2_mult_17_U476 ( .A1(MUL_2_mult_17_n588), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n589), 
        .ZN(MUL_2_mult_17_n271) );
  XNOR2_X1 MUL_2_mult_17_U475 ( .A(A[108]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n587) );
  OAI22_X1 MUL_2_mult_17_U474 ( .A1(MUL_2_mult_17_n587), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n588), 
        .ZN(MUL_2_mult_17_n272) );
  XNOR2_X1 MUL_2_mult_17_U473 ( .A(A[107]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n586) );
  OAI22_X1 MUL_2_mult_17_U472 ( .A1(MUL_2_mult_17_n586), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n587), 
        .ZN(MUL_2_mult_17_n273) );
  XNOR2_X1 MUL_2_mult_17_U471 ( .A(A[106]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n585) );
  OAI22_X1 MUL_2_mult_17_U470 ( .A1(MUL_2_mult_17_n585), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n586), 
        .ZN(MUL_2_mult_17_n274) );
  XNOR2_X1 MUL_2_mult_17_U469 ( .A(A[105]), .B(SAMPLES[107]), .ZN(
        MUL_2_mult_17_n584) );
  OAI22_X1 MUL_2_mult_17_U468 ( .A1(MUL_2_mult_17_n584), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n585), 
        .ZN(MUL_2_mult_17_n275) );
  XNOR2_X1 MUL_2_mult_17_U467 ( .A(SAMPLES[107]), .B(A[104]), .ZN(
        MUL_2_mult_17_n583) );
  OAI22_X1 MUL_2_mult_17_U466 ( .A1(MUL_2_mult_17_n583), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n584), 
        .ZN(MUL_2_mult_17_n276) );
  XNOR2_X1 MUL_2_mult_17_U465 ( .A(A[116]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n581) );
  OAI22_X1 MUL_2_mult_17_U464 ( .A1(MUL_2_mult_17_n544), .A2(
        MUL_2_mult_17_n581), .B1(MUL_2_mult_17_n571), .B2(MUL_2_mult_17_n581), 
        .ZN(MUL_2_mult_17_n582) );
  XNOR2_X1 MUL_2_mult_17_U463 ( .A(A[115]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n580) );
  OAI22_X1 MUL_2_mult_17_U462 ( .A1(MUL_2_mult_17_n580), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n581), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n279) );
  XNOR2_X1 MUL_2_mult_17_U461 ( .A(A[114]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n579) );
  OAI22_X1 MUL_2_mult_17_U460 ( .A1(MUL_2_mult_17_n579), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n580), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n280) );
  XNOR2_X1 MUL_2_mult_17_U459 ( .A(A[113]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n578) );
  OAI22_X1 MUL_2_mult_17_U458 ( .A1(MUL_2_mult_17_n578), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n579), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n281) );
  XNOR2_X1 MUL_2_mult_17_U457 ( .A(A[112]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n577) );
  OAI22_X1 MUL_2_mult_17_U456 ( .A1(MUL_2_mult_17_n577), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n578), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n282) );
  XNOR2_X1 MUL_2_mult_17_U455 ( .A(A[111]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n576) );
  OAI22_X1 MUL_2_mult_17_U454 ( .A1(MUL_2_mult_17_n576), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n577), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n283) );
  XNOR2_X1 MUL_2_mult_17_U453 ( .A(A[110]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n575) );
  OAI22_X1 MUL_2_mult_17_U452 ( .A1(MUL_2_mult_17_n575), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n576), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n284) );
  XNOR2_X1 MUL_2_mult_17_U451 ( .A(A[109]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n574) );
  OAI22_X1 MUL_2_mult_17_U450 ( .A1(MUL_2_mult_17_n574), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n575), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n285) );
  XNOR2_X1 MUL_2_mult_17_U449 ( .A(A[108]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n573) );
  OAI22_X1 MUL_2_mult_17_U448 ( .A1(MUL_2_mult_17_n573), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n574), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n286) );
  XNOR2_X1 MUL_2_mult_17_U447 ( .A(A[107]), .B(SAMPLES[105]), .ZN(
        MUL_2_mult_17_n572) );
  OAI22_X1 MUL_2_mult_17_U446 ( .A1(MUL_2_mult_17_n572), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n573), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n287) );
  OAI22_X1 MUL_2_mult_17_U445 ( .A1(MUL_2_mult_17_n570), .A2(
        MUL_2_mult_17_n571), .B1(MUL_2_mult_17_n572), .B2(MUL_2_mult_17_n544), 
        .ZN(MUL_2_mult_17_n288) );
  XNOR2_X1 MUL_2_mult_17_U444 ( .A(A[116]), .B(MUL_2_mult_17_n514), .ZN(
        MUL_2_mult_17_n550) );
  NAND2_X1 MUL_2_mult_17_U443 ( .A1(MUL_2_mult_17_n550), .A2(
        MUL_2_mult_17_n549), .ZN(MUL_2_mult_17_n29) );
  OAI22_X1 MUL_2_mult_17_U442 ( .A1(MUL_2_mult_17_n566), .A2(
        MUL_2_mult_17_n567), .B1(MUL_2_mult_17_n568), .B2(MUL_2_mult_17_n569), 
        .ZN(MUL_2_mult_17_n34) );
  OAI22_X1 MUL_2_mult_17_U441 ( .A1(MUL_2_mult_17_n562), .A2(
        MUL_2_mult_17_n563), .B1(MUL_2_mult_17_n564), .B2(MUL_2_mult_17_n565), 
        .ZN(MUL_2_mult_17_n44) );
  OAI22_X1 MUL_2_mult_17_U440 ( .A1(MUL_2_mult_17_n558), .A2(
        MUL_2_mult_17_n559), .B1(MUL_2_mult_17_n560), .B2(MUL_2_mult_17_n561), 
        .ZN(MUL_2_mult_17_n58) );
  OAI22_X1 MUL_2_mult_17_U439 ( .A1(MUL_2_mult_17_n554), .A2(
        MUL_2_mult_17_n555), .B1(MUL_2_mult_17_n556), .B2(MUL_2_mult_17_n557), 
        .ZN(MUL_2_mult_17_n76) );
  OAI22_X1 MUL_2_mult_17_U438 ( .A1(MUL_2_mult_17_n551), .A2(
        MUL_2_mult_17_n552), .B1(MUL_2_mult_17_n542), .B2(MUL_2_mult_17_n553), 
        .ZN(MUL_2_mult_17_n98) );
  NOR2_X1 MUL_2_mult_17_U437 ( .A1(MUL_2_mult_17_n544), .A2(MUL_2_mult_17_n546), .ZN(MUL_2_O_0_) );
  XOR2_X1 MUL_2_mult_17_U436 ( .A(MUL_2_mult_17_n29), .B(MUL_2_mult_17_n4), 
        .Z(MUL_2_mult_17_n547) );
  AND2_X1 MUL_2_mult_17_U435 ( .A1(MUL_2_mult_17_n549), .A2(MUL_2_mult_17_n550), .ZN(MUL_2_mult_17_n548) );
  XOR2_X1 MUL_2_mult_17_U434 ( .A(MUL_2_mult_17_n547), .B(MUL_2_mult_17_n548), 
        .Z(TRUNCATED_MULT_RES_2__7_) );
  XOR2_X2 MUL_2_mult_17_U433 ( .A(SAMPLES[114]), .B(MUL_2_mult_17_n526), .Z(
        MUL_2_mult_17_n568) );
  XOR2_X2 MUL_2_mult_17_U432 ( .A(SAMPLES[112]), .B(MUL_2_mult_17_n531), .Z(
        MUL_2_mult_17_n564) );
  XOR2_X2 MUL_2_mult_17_U431 ( .A(SAMPLES[110]), .B(MUL_2_mult_17_n536), .Z(
        MUL_2_mult_17_n560) );
  XOR2_X2 MUL_2_mult_17_U430 ( .A(SAMPLES[108]), .B(MUL_2_mult_17_n541), .Z(
        MUL_2_mult_17_n556) );
  INV_X1 MUL_2_mult_17_U429 ( .A(MUL_2_mult_17_n642), .ZN(MUL_2_mult_17_n519)
         );
  INV_X1 MUL_2_mult_17_U428 ( .A(MUL_2_mult_17_n34), .ZN(MUL_2_mult_17_n518)
         );
  INV_X1 MUL_2_mult_17_U427 ( .A(MUL_2_mult_17_n594), .ZN(MUL_2_mult_17_n540)
         );
  INV_X1 MUL_2_mult_17_U426 ( .A(SAMPLES[116]), .ZN(MUL_2_mult_17_n514) );
  INV_X1 MUL_2_mult_17_U425 ( .A(SAMPLES[115]), .ZN(MUL_2_mult_17_n521) );
  INV_X1 MUL_2_mult_17_U424 ( .A(A[105]), .ZN(MUL_2_mult_17_n545) );
  AND3_X1 MUL_2_mult_17_U423 ( .A1(MUL_2_mult_17_n683), .A2(MUL_2_mult_17_n545), .A3(SAMPLES[105]), .ZN(MUL_2_mult_17_n508) );
  AND2_X1 MUL_2_mult_17_U422 ( .A1(MUL_2_mult_17_n681), .A2(MUL_2_mult_17_n683), .ZN(MUL_2_mult_17_n507) );
  MUX2_X1 MUL_2_mult_17_U421 ( .A(MUL_2_mult_17_n507), .B(MUL_2_mult_17_n508), 
        .S(MUL_2_mult_17_n546), .Z(MUL_2_mult_17_n506) );
  INV_X1 MUL_2_mult_17_U420 ( .A(A[104]), .ZN(MUL_2_mult_17_n546) );
  INV_X1 MUL_2_mult_17_U419 ( .A(SAMPLES[113]), .ZN(MUL_2_mult_17_n526) );
  INV_X1 MUL_2_mult_17_U418 ( .A(SAMPLES[111]), .ZN(MUL_2_mult_17_n531) );
  INV_X1 MUL_2_mult_17_U417 ( .A(SAMPLES[109]), .ZN(MUL_2_mult_17_n536) );
  INV_X1 MUL_2_mult_17_U416 ( .A(SAMPLES[107]), .ZN(MUL_2_mult_17_n541) );
  INV_X1 MUL_2_mult_17_U415 ( .A(SAMPLES[104]), .ZN(MUL_2_mult_17_n544) );
  INV_X1 MUL_2_mult_17_U414 ( .A(MUL_2_mult_17_n630), .ZN(MUL_2_mult_17_n525)
         );
  INV_X1 MUL_2_mult_17_U413 ( .A(MUL_2_mult_17_n618), .ZN(MUL_2_mult_17_n530)
         );
  INV_X1 MUL_2_mult_17_U412 ( .A(MUL_2_mult_17_n44), .ZN(MUL_2_mult_17_n524)
         );
  INV_X1 MUL_2_mult_17_U411 ( .A(MUL_2_mult_17_n662), .ZN(MUL_2_mult_17_n520)
         );
  INV_X1 MUL_2_mult_17_U410 ( .A(MUL_2_mult_17_n606), .ZN(MUL_2_mult_17_n535)
         );
  INV_X1 MUL_2_mult_17_U409 ( .A(MUL_2_mult_17_n76), .ZN(MUL_2_mult_17_n534)
         );
  INV_X1 MUL_2_mult_17_U408 ( .A(MUL_2_mult_17_n98), .ZN(MUL_2_mult_17_n539)
         );
  INV_X1 MUL_2_mult_17_U407 ( .A(MUL_2_mult_17_n582), .ZN(MUL_2_mult_17_n543)
         );
  INV_X1 MUL_2_mult_17_U406 ( .A(MUL_2_mult_17_n549), .ZN(MUL_2_mult_17_n516)
         );
  INV_X1 MUL_2_mult_17_U405 ( .A(MUL_2_mult_17_n681), .ZN(MUL_2_mult_17_n542)
         );
  INV_X1 MUL_2_mult_17_U404 ( .A(MUL_2_mult_17_n678), .ZN(MUL_2_mult_17_n538)
         );
  INV_X1 MUL_2_mult_17_U403 ( .A(MUL_2_mult_17_n677), .ZN(MUL_2_mult_17_n537)
         );
  INV_X1 MUL_2_mult_17_U402 ( .A(MUL_2_mult_17_n58), .ZN(MUL_2_mult_17_n529)
         );
  INV_X1 MUL_2_mult_17_U401 ( .A(MUL_2_mult_17_n676), .ZN(MUL_2_mult_17_n533)
         );
  INV_X1 MUL_2_mult_17_U400 ( .A(MUL_2_mult_17_n675), .ZN(MUL_2_mult_17_n532)
         );
  INV_X1 MUL_2_mult_17_U399 ( .A(MUL_2_mult_17_n664), .ZN(MUL_2_mult_17_n509)
         );
  INV_X1 MUL_2_mult_17_U398 ( .A(MUL_2_mult_17_n674), .ZN(MUL_2_mult_17_n528)
         );
  INV_X1 MUL_2_mult_17_U397 ( .A(MUL_2_mult_17_n673), .ZN(MUL_2_mult_17_n527)
         );
  INV_X1 MUL_2_mult_17_U396 ( .A(MUL_2_mult_17_n668), .ZN(MUL_2_mult_17_n513)
         );
  INV_X1 MUL_2_mult_17_U395 ( .A(MUL_2_mult_17_n667), .ZN(MUL_2_mult_17_n512)
         );
  INV_X1 MUL_2_mult_17_U394 ( .A(MUL_2_mult_17_n670), .ZN(MUL_2_mult_17_n517)
         );
  INV_X1 MUL_2_mult_17_U393 ( .A(MUL_2_mult_17_n669), .ZN(MUL_2_mult_17_n515)
         );
  INV_X1 MUL_2_mult_17_U392 ( .A(MUL_2_mult_17_n672), .ZN(MUL_2_mult_17_n523)
         );
  INV_X1 MUL_2_mult_17_U391 ( .A(MUL_2_mult_17_n671), .ZN(MUL_2_mult_17_n522)
         );
  INV_X1 MUL_2_mult_17_U390 ( .A(MUL_2_mult_17_n666), .ZN(MUL_2_mult_17_n511)
         );
  INV_X1 MUL_2_mult_17_U389 ( .A(MUL_2_mult_17_n665), .ZN(MUL_2_mult_17_n510)
         );
  HA_X1 MUL_2_mult_17_U101 ( .A(MUL_2_mult_17_n276), .B(MUL_2_mult_17_n288), 
        .CO(MUL_2_mult_17_n170), .S(MUL_2_mult_17_n171) );
  FA_X1 MUL_2_mult_17_U100 ( .A(MUL_2_mult_17_n287), .B(MUL_2_mult_17_n264), 
        .CI(MUL_2_mult_17_n275), .CO(MUL_2_mult_17_n168), .S(
        MUL_2_mult_17_n169) );
  HA_X1 MUL_2_mult_17_U99 ( .A(MUL_2_mult_17_n197), .B(MUL_2_mult_17_n263), 
        .CO(MUL_2_mult_17_n166), .S(MUL_2_mult_17_n167) );
  FA_X1 MUL_2_mult_17_U98 ( .A(MUL_2_mult_17_n274), .B(MUL_2_mult_17_n286), 
        .CI(MUL_2_mult_17_n167), .CO(MUL_2_mult_17_n164), .S(
        MUL_2_mult_17_n165) );
  FA_X1 MUL_2_mult_17_U97 ( .A(MUL_2_mult_17_n285), .B(MUL_2_mult_17_n251), 
        .CI(MUL_2_mult_17_n273), .CO(MUL_2_mult_17_n162), .S(
        MUL_2_mult_17_n163) );
  FA_X1 MUL_2_mult_17_U96 ( .A(MUL_2_mult_17_n166), .B(MUL_2_mult_17_n262), 
        .CI(MUL_2_mult_17_n163), .CO(MUL_2_mult_17_n160), .S(
        MUL_2_mult_17_n161) );
  HA_X1 MUL_2_mult_17_U95 ( .A(MUL_2_mult_17_n196), .B(MUL_2_mult_17_n250), 
        .CO(MUL_2_mult_17_n158), .S(MUL_2_mult_17_n159) );
  FA_X1 MUL_2_mult_17_U94 ( .A(MUL_2_mult_17_n261), .B(MUL_2_mult_17_n284), 
        .CI(MUL_2_mult_17_n272), .CO(MUL_2_mult_17_n156), .S(
        MUL_2_mult_17_n157) );
  FA_X1 MUL_2_mult_17_U93 ( .A(MUL_2_mult_17_n162), .B(MUL_2_mult_17_n159), 
        .CI(MUL_2_mult_17_n157), .CO(MUL_2_mult_17_n154), .S(
        MUL_2_mult_17_n155) );
  FA_X1 MUL_2_mult_17_U92 ( .A(MUL_2_mult_17_n260), .B(MUL_2_mult_17_n238), 
        .CI(MUL_2_mult_17_n283), .CO(MUL_2_mult_17_n152), .S(
        MUL_2_mult_17_n153) );
  FA_X1 MUL_2_mult_17_U91 ( .A(MUL_2_mult_17_n249), .B(MUL_2_mult_17_n271), 
        .CI(MUL_2_mult_17_n158), .CO(MUL_2_mult_17_n150), .S(
        MUL_2_mult_17_n151) );
  FA_X1 MUL_2_mult_17_U90 ( .A(MUL_2_mult_17_n153), .B(MUL_2_mult_17_n156), 
        .CI(MUL_2_mult_17_n151), .CO(MUL_2_mult_17_n148), .S(
        MUL_2_mult_17_n149) );
  HA_X1 MUL_2_mult_17_U89 ( .A(MUL_2_mult_17_n195), .B(MUL_2_mult_17_n237), 
        .CO(MUL_2_mult_17_n146), .S(MUL_2_mult_17_n147) );
  FA_X1 MUL_2_mult_17_U88 ( .A(MUL_2_mult_17_n248), .B(MUL_2_mult_17_n259), 
        .CI(MUL_2_mult_17_n270), .CO(MUL_2_mult_17_n144), .S(
        MUL_2_mult_17_n145) );
  FA_X1 MUL_2_mult_17_U87 ( .A(MUL_2_mult_17_n147), .B(MUL_2_mult_17_n282), 
        .CI(MUL_2_mult_17_n152), .CO(MUL_2_mult_17_n142), .S(
        MUL_2_mult_17_n143) );
  FA_X1 MUL_2_mult_17_U86 ( .A(MUL_2_mult_17_n145), .B(MUL_2_mult_17_n150), 
        .CI(MUL_2_mult_17_n143), .CO(MUL_2_mult_17_n140), .S(
        MUL_2_mult_17_n141) );
  FA_X1 MUL_2_mult_17_U85 ( .A(MUL_2_mult_17_n247), .B(MUL_2_mult_17_n225), 
        .CI(MUL_2_mult_17_n281), .CO(MUL_2_mult_17_n138), .S(
        MUL_2_mult_17_n139) );
  FA_X1 MUL_2_mult_17_U84 ( .A(MUL_2_mult_17_n236), .B(MUL_2_mult_17_n269), 
        .CI(MUL_2_mult_17_n258), .CO(MUL_2_mult_17_n136), .S(
        MUL_2_mult_17_n137) );
  FA_X1 MUL_2_mult_17_U83 ( .A(MUL_2_mult_17_n144), .B(MUL_2_mult_17_n146), 
        .CI(MUL_2_mult_17_n139), .CO(MUL_2_mult_17_n134), .S(
        MUL_2_mult_17_n135) );
  FA_X1 MUL_2_mult_17_U82 ( .A(MUL_2_mult_17_n142), .B(MUL_2_mult_17_n137), 
        .CI(MUL_2_mult_17_n135), .CO(MUL_2_mult_17_n132), .S(
        MUL_2_mult_17_n133) );
  HA_X1 MUL_2_mult_17_U81 ( .A(MUL_2_mult_17_n194), .B(MUL_2_mult_17_n224), 
        .CO(MUL_2_mult_17_n130), .S(MUL_2_mult_17_n131) );
  FA_X1 MUL_2_mult_17_U80 ( .A(MUL_2_mult_17_n235), .B(MUL_2_mult_17_n257), 
        .CI(MUL_2_mult_17_n280), .CO(MUL_2_mult_17_n128), .S(
        MUL_2_mult_17_n129) );
  FA_X1 MUL_2_mult_17_U79 ( .A(MUL_2_mult_17_n246), .B(MUL_2_mult_17_n268), 
        .CI(MUL_2_mult_17_n131), .CO(MUL_2_mult_17_n126), .S(
        MUL_2_mult_17_n127) );
  FA_X1 MUL_2_mult_17_U78 ( .A(MUL_2_mult_17_n136), .B(MUL_2_mult_17_n138), 
        .CI(MUL_2_mult_17_n129), .CO(MUL_2_mult_17_n124), .S(
        MUL_2_mult_17_n125) );
  FA_X1 MUL_2_mult_17_U77 ( .A(MUL_2_mult_17_n134), .B(MUL_2_mult_17_n127), 
        .CI(MUL_2_mult_17_n125), .CO(MUL_2_mult_17_n122), .S(
        MUL_2_mult_17_n123) );
  FA_X1 MUL_2_mult_17_U76 ( .A(MUL_2_mult_17_n234), .B(MUL_2_mult_17_n212), 
        .CI(MUL_2_mult_17_n279), .CO(MUL_2_mult_17_n120), .S(
        MUL_2_mult_17_n121) );
  FA_X1 MUL_2_mult_17_U75 ( .A(MUL_2_mult_17_n223), .B(MUL_2_mult_17_n267), 
        .CI(MUL_2_mult_17_n245), .CO(MUL_2_mult_17_n118), .S(
        MUL_2_mult_17_n119) );
  FA_X1 MUL_2_mult_17_U74 ( .A(MUL_2_mult_17_n130), .B(MUL_2_mult_17_n256), 
        .CI(MUL_2_mult_17_n128), .CO(MUL_2_mult_17_n116), .S(
        MUL_2_mult_17_n117) );
  FA_X1 MUL_2_mult_17_U73 ( .A(MUL_2_mult_17_n119), .B(MUL_2_mult_17_n121), 
        .CI(MUL_2_mult_17_n126), .CO(MUL_2_mult_17_n114), .S(
        MUL_2_mult_17_n115) );
  FA_X1 MUL_2_mult_17_U72 ( .A(MUL_2_mult_17_n117), .B(MUL_2_mult_17_n124), 
        .CI(MUL_2_mult_17_n115), .CO(MUL_2_mult_17_n112), .S(
        MUL_2_mult_17_n113) );
  FA_X1 MUL_2_mult_17_U69 ( .A(MUL_2_mult_17_n233), .B(MUL_2_mult_17_n244), 
        .CI(MUL_2_mult_17_n543), .CO(MUL_2_mult_17_n108), .S(
        MUL_2_mult_17_n109) );
  FA_X1 MUL_2_mult_17_U68 ( .A(MUL_2_mult_17_n193), .B(MUL_2_mult_17_n266), 
        .CI(MUL_2_mult_17_n255), .CO(MUL_2_mult_17_n106), .S(
        MUL_2_mult_17_n107) );
  FA_X1 MUL_2_mult_17_U67 ( .A(MUL_2_mult_17_n120), .B(MUL_2_mult_17_n111), 
        .CI(MUL_2_mult_17_n118), .CO(MUL_2_mult_17_n104), .S(
        MUL_2_mult_17_n105) );
  FA_X1 MUL_2_mult_17_U66 ( .A(MUL_2_mult_17_n109), .B(MUL_2_mult_17_n107), 
        .CI(MUL_2_mult_17_n116), .CO(MUL_2_mult_17_n102), .S(
        MUL_2_mult_17_n103) );
  FA_X1 MUL_2_mult_17_U65 ( .A(MUL_2_mult_17_n114), .B(MUL_2_mult_17_n105), 
        .CI(MUL_2_mult_17_n103), .CO(MUL_2_mult_17_n100), .S(
        MUL_2_mult_17_n101) );
  FA_X1 MUL_2_mult_17_U63 ( .A(MUL_2_mult_17_n210), .B(MUL_2_mult_17_n221), 
        .CI(MUL_2_mult_17_n254), .CO(MUL_2_mult_17_n96), .S(MUL_2_mult_17_n97)
         );
  FA_X1 MUL_2_mult_17_U62 ( .A(MUL_2_mult_17_n232), .B(MUL_2_mult_17_n243), 
        .CI(MUL_2_mult_17_n539), .CO(MUL_2_mult_17_n94), .S(MUL_2_mult_17_n95)
         );
  FA_X1 MUL_2_mult_17_U61 ( .A(MUL_2_mult_17_n108), .B(MUL_2_mult_17_n110), 
        .CI(MUL_2_mult_17_n106), .CO(MUL_2_mult_17_n92), .S(MUL_2_mult_17_n93)
         );
  FA_X1 MUL_2_mult_17_U60 ( .A(MUL_2_mult_17_n95), .B(MUL_2_mult_17_n97), .CI(
        MUL_2_mult_17_n104), .CO(MUL_2_mult_17_n90), .S(MUL_2_mult_17_n91) );
  FA_X1 MUL_2_mult_17_U59 ( .A(MUL_2_mult_17_n102), .B(MUL_2_mult_17_n93), 
        .CI(MUL_2_mult_17_n91), .CO(MUL_2_mult_17_n88), .S(MUL_2_mult_17_n89)
         );
  FA_X1 MUL_2_mult_17_U58 ( .A(MUL_2_mult_17_n98), .B(MUL_2_mult_17_n209), 
        .CI(MUL_2_mult_17_n540), .CO(MUL_2_mult_17_n86), .S(MUL_2_mult_17_n87)
         );
  FA_X1 MUL_2_mult_17_U57 ( .A(MUL_2_mult_17_n220), .B(MUL_2_mult_17_n253), 
        .CI(MUL_2_mult_17_n231), .CO(MUL_2_mult_17_n84), .S(MUL_2_mult_17_n85)
         );
  FA_X1 MUL_2_mult_17_U56 ( .A(MUL_2_mult_17_n96), .B(MUL_2_mult_17_n242), 
        .CI(MUL_2_mult_17_n94), .CO(MUL_2_mult_17_n82), .S(MUL_2_mult_17_n83)
         );
  FA_X1 MUL_2_mult_17_U55 ( .A(MUL_2_mult_17_n87), .B(MUL_2_mult_17_n85), .CI(
        MUL_2_mult_17_n92), .CO(MUL_2_mult_17_n80), .S(MUL_2_mult_17_n81) );
  FA_X1 MUL_2_mult_17_U54 ( .A(MUL_2_mult_17_n90), .B(MUL_2_mult_17_n83), .CI(
        MUL_2_mult_17_n81), .CO(MUL_2_mult_17_n78), .S(MUL_2_mult_17_n79) );
  FA_X1 MUL_2_mult_17_U52 ( .A(MUL_2_mult_17_n241), .B(MUL_2_mult_17_n219), 
        .CI(MUL_2_mult_17_n208), .CO(MUL_2_mult_17_n74), .S(MUL_2_mult_17_n75)
         );
  FA_X1 MUL_2_mult_17_U51 ( .A(MUL_2_mult_17_n534), .B(MUL_2_mult_17_n230), 
        .CI(MUL_2_mult_17_n86), .CO(MUL_2_mult_17_n72), .S(MUL_2_mult_17_n73)
         );
  FA_X1 MUL_2_mult_17_U50 ( .A(MUL_2_mult_17_n75), .B(MUL_2_mult_17_n84), .CI(
        MUL_2_mult_17_n82), .CO(MUL_2_mult_17_n70), .S(MUL_2_mult_17_n71) );
  FA_X1 MUL_2_mult_17_U49 ( .A(MUL_2_mult_17_n80), .B(MUL_2_mult_17_n73), .CI(
        MUL_2_mult_17_n71), .CO(MUL_2_mult_17_n68), .S(MUL_2_mult_17_n69) );
  FA_X1 MUL_2_mult_17_U48 ( .A(MUL_2_mult_17_n240), .B(MUL_2_mult_17_n207), 
        .CI(MUL_2_mult_17_n535), .CO(MUL_2_mult_17_n66), .S(MUL_2_mult_17_n67)
         );
  FA_X1 MUL_2_mult_17_U47 ( .A(MUL_2_mult_17_n218), .B(MUL_2_mult_17_n76), 
        .CI(MUL_2_mult_17_n229), .CO(MUL_2_mult_17_n64), .S(MUL_2_mult_17_n65)
         );
  FA_X1 MUL_2_mult_17_U46 ( .A(MUL_2_mult_17_n65), .B(MUL_2_mult_17_n74), .CI(
        MUL_2_mult_17_n67), .CO(MUL_2_mult_17_n62), .S(MUL_2_mult_17_n63) );
  FA_X1 MUL_2_mult_17_U45 ( .A(MUL_2_mult_17_n70), .B(MUL_2_mult_17_n72), .CI(
        MUL_2_mult_17_n63), .CO(MUL_2_mult_17_n60), .S(MUL_2_mult_17_n61) );
  FA_X1 MUL_2_mult_17_U43 ( .A(MUL_2_mult_17_n206), .B(MUL_2_mult_17_n217), 
        .CI(MUL_2_mult_17_n228), .CO(MUL_2_mult_17_n56), .S(MUL_2_mult_17_n57)
         );
  FA_X1 MUL_2_mult_17_U42 ( .A(MUL_2_mult_17_n66), .B(MUL_2_mult_17_n529), 
        .CI(MUL_2_mult_17_n64), .CO(MUL_2_mult_17_n54), .S(MUL_2_mult_17_n55)
         );
  FA_X1 MUL_2_mult_17_U41 ( .A(MUL_2_mult_17_n55), .B(MUL_2_mult_17_n57), .CI(
        MUL_2_mult_17_n62), .CO(MUL_2_mult_17_n52), .S(MUL_2_mult_17_n53) );
  FA_X1 MUL_2_mult_17_U40 ( .A(MUL_2_mult_17_n216), .B(MUL_2_mult_17_n205), 
        .CI(MUL_2_mult_17_n530), .CO(MUL_2_mult_17_n50), .S(MUL_2_mult_17_n51)
         );
  FA_X1 MUL_2_mult_17_U39 ( .A(MUL_2_mult_17_n58), .B(MUL_2_mult_17_n227), 
        .CI(MUL_2_mult_17_n56), .CO(MUL_2_mult_17_n48), .S(MUL_2_mult_17_n49)
         );
  FA_X1 MUL_2_mult_17_U38 ( .A(MUL_2_mult_17_n54), .B(MUL_2_mult_17_n51), .CI(
        MUL_2_mult_17_n49), .CO(MUL_2_mult_17_n46), .S(MUL_2_mult_17_n47) );
  FA_X1 MUL_2_mult_17_U36 ( .A(MUL_2_mult_17_n204), .B(MUL_2_mult_17_n215), 
        .CI(MUL_2_mult_17_n524), .CO(MUL_2_mult_17_n42), .S(MUL_2_mult_17_n43)
         );
  FA_X1 MUL_2_mult_17_U35 ( .A(MUL_2_mult_17_n43), .B(MUL_2_mult_17_n50), .CI(
        MUL_2_mult_17_n48), .CO(MUL_2_mult_17_n40), .S(MUL_2_mult_17_n41) );
  FA_X1 MUL_2_mult_17_U34 ( .A(MUL_2_mult_17_n214), .B(MUL_2_mult_17_n44), 
        .CI(MUL_2_mult_17_n525), .CO(MUL_2_mult_17_n38), .S(MUL_2_mult_17_n39)
         );
  FA_X1 MUL_2_mult_17_U33 ( .A(MUL_2_mult_17_n42), .B(MUL_2_mult_17_n203), 
        .CI(MUL_2_mult_17_n39), .CO(MUL_2_mult_17_n36), .S(MUL_2_mult_17_n37)
         );
  FA_X1 MUL_2_mult_17_U31 ( .A(MUL_2_mult_17_n518), .B(MUL_2_mult_17_n202), 
        .CI(MUL_2_mult_17_n38), .CO(MUL_2_mult_17_n32), .S(MUL_2_mult_17_n33)
         );
  FA_X1 MUL_2_mult_17_U30 ( .A(MUL_2_mult_17_n201), .B(MUL_2_mult_17_n34), 
        .CI(MUL_2_mult_17_n519), .CO(MUL_2_mult_17_n30), .S(MUL_2_mult_17_n31)
         );
  FA_X1 MUL_2_mult_17_U11 ( .A(MUL_2_mult_17_n53), .B(MUL_2_mult_17_n60), .CI(
        MUL_2_mult_17_n509), .CO(MUL_2_mult_17_n10), .S(
        TRUNCATED_MULT_RES_2__0_) );
  FA_X1 MUL_2_mult_17_U10 ( .A(MUL_2_mult_17_n47), .B(MUL_2_mult_17_n52), .CI(
        MUL_2_mult_17_n10), .CO(MUL_2_mult_17_n9), .S(TRUNCATED_MULT_RES_2__1_) );
  FA_X1 MUL_2_mult_17_U9 ( .A(MUL_2_mult_17_n41), .B(MUL_2_mult_17_n46), .CI(
        MUL_2_mult_17_n9), .CO(MUL_2_mult_17_n8), .S(TRUNCATED_MULT_RES_2__2_)
         );
  FA_X1 MUL_2_mult_17_U8 ( .A(MUL_2_mult_17_n37), .B(MUL_2_mult_17_n40), .CI(
        MUL_2_mult_17_n8), .CO(MUL_2_mult_17_n7), .S(TRUNCATED_MULT_RES_2__3_)
         );
  FA_X1 MUL_2_mult_17_U7 ( .A(MUL_2_mult_17_n33), .B(MUL_2_mult_17_n36), .CI(
        MUL_2_mult_17_n7), .CO(MUL_2_mult_17_n6), .S(TRUNCATED_MULT_RES_2__4_)
         );
  FA_X1 MUL_2_mult_17_U6 ( .A(MUL_2_mult_17_n32), .B(MUL_2_mult_17_n31), .CI(
        MUL_2_mult_17_n6), .CO(MUL_2_mult_17_n5), .S(TRUNCATED_MULT_RES_2__5_)
         );
  FA_X1 MUL_2_mult_17_U5 ( .A(MUL_2_mult_17_n30), .B(MUL_2_mult_17_n29), .CI(
        MUL_2_mult_17_n5), .CO(MUL_2_mult_17_n4), .S(TRUNCATED_MULT_RES_2__6_)
         );
  XOR2_X1 ADD_2_add_18_U2 ( .A(SUM_RESULTS_1__0_), .B(TRUNCATED_MULT_RES_2__0_), .Z(SUM_RESULTS_2__0_) );
  AND2_X1 ADD_2_add_18_U1 ( .A1(SUM_RESULTS_1__0_), .A2(
        TRUNCATED_MULT_RES_2__0_), .ZN(ADD_2_add_18_n1) );
  FA_X1 ADD_2_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_2__1_), .B(SUM_RESULTS_1__1_), .CI(ADD_2_add_18_n1), .CO(ADD_2_add_18_carry[2]), .S(SUM_RESULTS_2__1_) );
  FA_X1 ADD_2_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_2__2_), .B(SUM_RESULTS_1__2_), .CI(ADD_2_add_18_carry[2]), .CO(ADD_2_add_18_carry[3]), .S(SUM_RESULTS_2__2_) );
  FA_X1 ADD_2_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_2__3_), .B(SUM_RESULTS_1__3_), .CI(ADD_2_add_18_carry[3]), .CO(ADD_2_add_18_carry[4]), .S(SUM_RESULTS_2__3_) );
  FA_X1 ADD_2_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_2__4_), .B(SUM_RESULTS_1__4_), .CI(ADD_2_add_18_carry[4]), .CO(ADD_2_add_18_carry[5]), .S(SUM_RESULTS_2__4_) );
  FA_X1 ADD_2_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_2__5_), .B(SUM_RESULTS_1__5_), .CI(ADD_2_add_18_carry[5]), .CO(ADD_2_add_18_carry[6]), .S(SUM_RESULTS_2__5_) );
  FA_X1 ADD_2_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_2__6_), .B(SUM_RESULTS_1__6_), .CI(ADD_2_add_18_carry[6]), .CO(ADD_2_add_18_carry[7]), .S(SUM_RESULTS_2__6_) );
  FA_X1 ADD_2_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_2__7_), .B(
        SUM_RESULTS_1__12_), .CI(ADD_2_add_18_carry[7]), .CO(
        ADD_2_add_18_carry[8]), .S(SUM_RESULTS_2__7_) );
  FA_X1 ADD_2_add_18_U1_8 ( .A(TRUNCATED_MULT_RES_2__7_), .B(
        SUM_RESULTS_1__12_), .CI(ADD_2_add_18_carry[8]), .S(SUM_RESULTS_2__12_) );
  BUF_X1 SAMPLE_REG_3_U31 ( .A(n545), .Z(SAMPLE_REG_3_n42) );
  NAND2_X1 SAMPLE_REG_3_U30 ( .A1(SAMPLE_REG_3_n42), .A2(SAMPLES[104]), .ZN(
        SAMPLE_REG_3_n82) );
  OAI21_X1 SAMPLE_REG_3_U29 ( .B1(SAMPLE_REG_3_n69), .B2(SAMPLE_REG_3_n42), 
        .A(SAMPLE_REG_3_n82), .ZN(SAMPLE_REG_3_n56) );
  NAND2_X1 SAMPLE_REG_3_U28 ( .A1(SAMPLES[106]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n80) );
  OAI21_X1 SAMPLE_REG_3_U27 ( .B1(SAMPLE_REG_3_n67), .B2(SAMPLE_REG_3_n41), 
        .A(SAMPLE_REG_3_n80), .ZN(SAMPLE_REG_3_n54) );
  NAND2_X1 SAMPLE_REG_3_U26 ( .A1(SAMPLES[116]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n70) );
  OAI21_X1 SAMPLE_REG_3_U25 ( .B1(SAMPLE_REG_3_n57), .B2(SAMPLE_REG_3_n41), 
        .A(SAMPLE_REG_3_n70), .ZN(SAMPLE_REG_3_n44) );
  NAND2_X1 SAMPLE_REG_3_U24 ( .A1(SAMPLES[115]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n71) );
  OAI21_X1 SAMPLE_REG_3_U23 ( .B1(SAMPLE_REG_3_n58), .B2(SAMPLE_REG_3_n41), 
        .A(SAMPLE_REG_3_n71), .ZN(SAMPLE_REG_3_n45) );
  NAND2_X1 SAMPLE_REG_3_U22 ( .A1(SAMPLES[114]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n72) );
  OAI21_X1 SAMPLE_REG_3_U21 ( .B1(SAMPLE_REG_3_n59), .B2(SAMPLE_REG_3_n41), 
        .A(SAMPLE_REG_3_n72), .ZN(SAMPLE_REG_3_n46) );
  NAND2_X1 SAMPLE_REG_3_U20 ( .A1(SAMPLES[113]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n73) );
  OAI21_X1 SAMPLE_REG_3_U19 ( .B1(SAMPLE_REG_3_n60), .B2(SAMPLE_REG_3_n41), 
        .A(SAMPLE_REG_3_n73), .ZN(SAMPLE_REG_3_n47) );
  NAND2_X1 SAMPLE_REG_3_U18 ( .A1(SAMPLES[112]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n74) );
  OAI21_X1 SAMPLE_REG_3_U17 ( .B1(SAMPLE_REG_3_n61), .B2(SAMPLE_REG_3_n41), 
        .A(SAMPLE_REG_3_n74), .ZN(SAMPLE_REG_3_n48) );
  NAND2_X1 SAMPLE_REG_3_U16 ( .A1(SAMPLES[111]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n75) );
  OAI21_X1 SAMPLE_REG_3_U15 ( .B1(SAMPLE_REG_3_n62), .B2(SAMPLE_REG_3_n41), 
        .A(SAMPLE_REG_3_n75), .ZN(SAMPLE_REG_3_n49) );
  NAND2_X1 SAMPLE_REG_3_U14 ( .A1(SAMPLES[110]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n76) );
  OAI21_X1 SAMPLE_REG_3_U13 ( .B1(SAMPLE_REG_3_n63), .B2(SAMPLE_REG_3_n41), 
        .A(SAMPLE_REG_3_n76), .ZN(SAMPLE_REG_3_n50) );
  NAND2_X1 SAMPLE_REG_3_U12 ( .A1(SAMPLES[109]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n77) );
  OAI21_X1 SAMPLE_REG_3_U11 ( .B1(SAMPLE_REG_3_n64), .B2(SAMPLE_REG_3_n41), 
        .A(SAMPLE_REG_3_n77), .ZN(SAMPLE_REG_3_n51) );
  NAND2_X1 SAMPLE_REG_3_U10 ( .A1(SAMPLES[108]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n78) );
  OAI21_X1 SAMPLE_REG_3_U9 ( .B1(SAMPLE_REG_3_n65), .B2(SAMPLE_REG_3_n41), .A(
        SAMPLE_REG_3_n78), .ZN(SAMPLE_REG_3_n52) );
  NAND2_X1 SAMPLE_REG_3_U8 ( .A1(SAMPLES[107]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n79) );
  OAI21_X1 SAMPLE_REG_3_U7 ( .B1(SAMPLE_REG_3_n66), .B2(SAMPLE_REG_3_n41), .A(
        SAMPLE_REG_3_n79), .ZN(SAMPLE_REG_3_n53) );
  NAND2_X1 SAMPLE_REG_3_U6 ( .A1(SAMPLES[105]), .A2(SAMPLE_REG_3_n40), .ZN(
        SAMPLE_REG_3_n81) );
  OAI21_X1 SAMPLE_REG_3_U5 ( .B1(SAMPLE_REG_3_n68), .B2(SAMPLE_REG_3_n41), .A(
        SAMPLE_REG_3_n81), .ZN(SAMPLE_REG_3_n55) );
  BUF_X1 SAMPLE_REG_3_U4 ( .A(n545), .Z(SAMPLE_REG_3_n41) );
  BUF_X1 SAMPLE_REG_3_U3 ( .A(n545), .Z(SAMPLE_REG_3_n40) );
  BUF_X1 SAMPLE_REG_3_U2 ( .A(n546), .Z(SAMPLE_REG_3_n43) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_12_ ( .D(SAMPLE_REG_3_n44), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[103]), .QN(SAMPLE_REG_3_n57) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_2_ ( .D(SAMPLE_REG_3_n54), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[93]), .QN(SAMPLE_REG_3_n67) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_4_ ( .D(SAMPLE_REG_3_n52), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[95]), .QN(SAMPLE_REG_3_n65) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_6_ ( .D(SAMPLE_REG_3_n50), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[97]), .QN(SAMPLE_REG_3_n63) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_8_ ( .D(SAMPLE_REG_3_n48), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[99]), .QN(SAMPLE_REG_3_n61) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_10_ ( .D(SAMPLE_REG_3_n46), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[101]), .QN(SAMPLE_REG_3_n59) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_0_ ( .D(SAMPLE_REG_3_n56), .CK(CLK), .RN(n546), 
        .Q(SAMPLES[91]), .QN(SAMPLE_REG_3_n69) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_1_ ( .D(SAMPLE_REG_3_n55), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[92]), .QN(SAMPLE_REG_3_n68) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_3_ ( .D(SAMPLE_REG_3_n53), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[94]), .QN(SAMPLE_REG_3_n66) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_5_ ( .D(SAMPLE_REG_3_n51), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[96]), .QN(SAMPLE_REG_3_n64) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_7_ ( .D(SAMPLE_REG_3_n49), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[98]), .QN(SAMPLE_REG_3_n62) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_9_ ( .D(SAMPLE_REG_3_n47), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[100]), .QN(SAMPLE_REG_3_n60) );
  DFFR_X1 SAMPLE_REG_3_DOUT_reg_11_ ( .D(SAMPLE_REG_3_n45), .CK(CLK), .RN(
        SAMPLE_REG_3_n43), .Q(SAMPLES[102]), .QN(SAMPLE_REG_3_n58) );
  XOR2_X1 MUL_3_mult_17_U660 ( .A(SAMPLES[93]), .B(SAMPLES[92]), .Z(
        MUL_3_mult_17_n681) );
  NAND2_X1 MUL_3_mult_17_U659 ( .A1(SAMPLES[92]), .A2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n571) );
  XNOR2_X1 MUL_3_mult_17_U658 ( .A(A[93]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n570) );
  OAI22_X1 MUL_3_mult_17_U657 ( .A1(A[92]), .A2(MUL_3_mult_17_n571), .B1(
        MUL_3_mult_17_n570), .B2(MUL_3_mult_17_n544), .ZN(MUL_3_mult_17_n683)
         );
  XNOR2_X1 MUL_3_mult_17_U656 ( .A(MUL_3_mult_17_n541), .B(SAMPLES[93]), .ZN(
        MUL_3_mult_17_n682) );
  NAND2_X1 MUL_3_mult_17_U655 ( .A1(MUL_3_mult_17_n542), .A2(
        MUL_3_mult_17_n682), .ZN(MUL_3_mult_17_n552) );
  NAND3_X1 MUL_3_mult_17_U654 ( .A1(MUL_3_mult_17_n681), .A2(
        MUL_3_mult_17_n546), .A3(SAMPLES[94]), .ZN(MUL_3_mult_17_n680) );
  OAI21_X1 MUL_3_mult_17_U653 ( .B1(MUL_3_mult_17_n541), .B2(
        MUL_3_mult_17_n552), .A(MUL_3_mult_17_n680), .ZN(MUL_3_mult_17_n679)
         );
  AOI222_X1 MUL_3_mult_17_U652 ( .A1(MUL_3_mult_17_n506), .A2(
        MUL_3_mult_17_n171), .B1(MUL_3_mult_17_n679), .B2(MUL_3_mult_17_n506), 
        .C1(MUL_3_mult_17_n679), .C2(MUL_3_mult_17_n171), .ZN(
        MUL_3_mult_17_n678) );
  AOI222_X1 MUL_3_mult_17_U651 ( .A1(MUL_3_mult_17_n538), .A2(
        MUL_3_mult_17_n169), .B1(MUL_3_mult_17_n538), .B2(MUL_3_mult_17_n170), 
        .C1(MUL_3_mult_17_n170), .C2(MUL_3_mult_17_n169), .ZN(
        MUL_3_mult_17_n677) );
  AOI222_X1 MUL_3_mult_17_U650 ( .A1(MUL_3_mult_17_n537), .A2(
        MUL_3_mult_17_n165), .B1(MUL_3_mult_17_n537), .B2(MUL_3_mult_17_n168), 
        .C1(MUL_3_mult_17_n168), .C2(MUL_3_mult_17_n165), .ZN(
        MUL_3_mult_17_n676) );
  AOI222_X1 MUL_3_mult_17_U649 ( .A1(MUL_3_mult_17_n533), .A2(
        MUL_3_mult_17_n161), .B1(MUL_3_mult_17_n533), .B2(MUL_3_mult_17_n164), 
        .C1(MUL_3_mult_17_n164), .C2(MUL_3_mult_17_n161), .ZN(
        MUL_3_mult_17_n675) );
  AOI222_X1 MUL_3_mult_17_U648 ( .A1(MUL_3_mult_17_n532), .A2(
        MUL_3_mult_17_n155), .B1(MUL_3_mult_17_n532), .B2(MUL_3_mult_17_n160), 
        .C1(MUL_3_mult_17_n160), .C2(MUL_3_mult_17_n155), .ZN(
        MUL_3_mult_17_n674) );
  AOI222_X1 MUL_3_mult_17_U647 ( .A1(MUL_3_mult_17_n528), .A2(
        MUL_3_mult_17_n149), .B1(MUL_3_mult_17_n528), .B2(MUL_3_mult_17_n154), 
        .C1(MUL_3_mult_17_n154), .C2(MUL_3_mult_17_n149), .ZN(
        MUL_3_mult_17_n673) );
  AOI222_X1 MUL_3_mult_17_U646 ( .A1(MUL_3_mult_17_n527), .A2(
        MUL_3_mult_17_n141), .B1(MUL_3_mult_17_n527), .B2(MUL_3_mult_17_n148), 
        .C1(MUL_3_mult_17_n148), .C2(MUL_3_mult_17_n141), .ZN(
        MUL_3_mult_17_n672) );
  AOI222_X1 MUL_3_mult_17_U645 ( .A1(MUL_3_mult_17_n523), .A2(
        MUL_3_mult_17_n133), .B1(MUL_3_mult_17_n523), .B2(MUL_3_mult_17_n140), 
        .C1(MUL_3_mult_17_n140), .C2(MUL_3_mult_17_n133), .ZN(
        MUL_3_mult_17_n671) );
  AOI222_X1 MUL_3_mult_17_U644 ( .A1(MUL_3_mult_17_n522), .A2(
        MUL_3_mult_17_n123), .B1(MUL_3_mult_17_n522), .B2(MUL_3_mult_17_n132), 
        .C1(MUL_3_mult_17_n132), .C2(MUL_3_mult_17_n123), .ZN(
        MUL_3_mult_17_n670) );
  AOI222_X1 MUL_3_mult_17_U643 ( .A1(MUL_3_mult_17_n517), .A2(
        MUL_3_mult_17_n113), .B1(MUL_3_mult_17_n517), .B2(MUL_3_mult_17_n122), 
        .C1(MUL_3_mult_17_n122), .C2(MUL_3_mult_17_n113), .ZN(
        MUL_3_mult_17_n669) );
  AOI222_X1 MUL_3_mult_17_U642 ( .A1(MUL_3_mult_17_n515), .A2(
        MUL_3_mult_17_n101), .B1(MUL_3_mult_17_n515), .B2(MUL_3_mult_17_n112), 
        .C1(MUL_3_mult_17_n112), .C2(MUL_3_mult_17_n101), .ZN(
        MUL_3_mult_17_n668) );
  AOI222_X1 MUL_3_mult_17_U641 ( .A1(MUL_3_mult_17_n513), .A2(
        MUL_3_mult_17_n89), .B1(MUL_3_mult_17_n513), .B2(MUL_3_mult_17_n100), 
        .C1(MUL_3_mult_17_n100), .C2(MUL_3_mult_17_n89), .ZN(
        MUL_3_mult_17_n667) );
  AOI222_X1 MUL_3_mult_17_U640 ( .A1(MUL_3_mult_17_n512), .A2(
        MUL_3_mult_17_n79), .B1(MUL_3_mult_17_n512), .B2(MUL_3_mult_17_n88), 
        .C1(MUL_3_mult_17_n88), .C2(MUL_3_mult_17_n79), .ZN(MUL_3_mult_17_n666) );
  AOI222_X1 MUL_3_mult_17_U639 ( .A1(MUL_3_mult_17_n511), .A2(
        MUL_3_mult_17_n69), .B1(MUL_3_mult_17_n511), .B2(MUL_3_mult_17_n78), 
        .C1(MUL_3_mult_17_n78), .C2(MUL_3_mult_17_n69), .ZN(MUL_3_mult_17_n665) );
  AOI222_X1 MUL_3_mult_17_U638 ( .A1(MUL_3_mult_17_n510), .A2(
        MUL_3_mult_17_n61), .B1(MUL_3_mult_17_n510), .B2(MUL_3_mult_17_n68), 
        .C1(MUL_3_mult_17_n68), .C2(MUL_3_mult_17_n61), .ZN(MUL_3_mult_17_n664) );
  XNOR2_X1 MUL_3_mult_17_U637 ( .A(A[93]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n633) );
  XNOR2_X1 MUL_3_mult_17_U636 ( .A(MUL_3_mult_17_n521), .B(SAMPLES[101]), .ZN(
        MUL_3_mult_17_n663) );
  NAND2_X1 MUL_3_mult_17_U635 ( .A1(MUL_3_mult_17_n568), .A2(
        MUL_3_mult_17_n663), .ZN(MUL_3_mult_17_n567) );
  XNOR2_X1 MUL_3_mult_17_U634 ( .A(A[94]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n634) );
  OAI22_X1 MUL_3_mult_17_U633 ( .A1(MUL_3_mult_17_n633), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n634), 
        .ZN(MUL_3_mult_17_n662) );
  XNOR2_X1 MUL_3_mult_17_U632 ( .A(MUL_3_mult_17_n545), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n661) );
  XNOR2_X1 MUL_3_mult_17_U631 ( .A(SAMPLES[103]), .B(MUL_3_mult_17_n521), .ZN(
        MUL_3_mult_17_n549) );
  NAND2_X1 MUL_3_mult_17_U630 ( .A1(MUL_3_mult_17_n661), .A2(
        MUL_3_mult_17_n549), .ZN(MUL_3_mult_17_n660) );
  NAND2_X1 MUL_3_mult_17_U629 ( .A1(MUL_3_mult_17_n520), .A2(
        MUL_3_mult_17_n660), .ZN(MUL_3_mult_17_n110) );
  XNOR2_X1 MUL_3_mult_17_U628 ( .A(MUL_3_mult_17_n660), .B(MUL_3_mult_17_n520), 
        .ZN(MUL_3_mult_17_n111) );
  NOR3_X1 MUL_3_mult_17_U627 ( .A1(MUL_3_mult_17_n514), .A2(A[91]), .A3(
        MUL_3_mult_17_n516), .ZN(MUL_3_mult_17_n193) );
  OR3_X1 MUL_3_mult_17_U626 ( .A1(MUL_3_mult_17_n568), .A2(A[91]), .A3(
        MUL_3_mult_17_n521), .ZN(MUL_3_mult_17_n659) );
  OAI21_X1 MUL_3_mult_17_U625 ( .B1(MUL_3_mult_17_n521), .B2(
        MUL_3_mult_17_n567), .A(MUL_3_mult_17_n659), .ZN(MUL_3_mult_17_n194)
         );
  XNOR2_X1 MUL_3_mult_17_U624 ( .A(MUL_3_mult_17_n526), .B(SAMPLES[99]), .ZN(
        MUL_3_mult_17_n658) );
  NAND2_X1 MUL_3_mult_17_U623 ( .A1(MUL_3_mult_17_n564), .A2(
        MUL_3_mult_17_n658), .ZN(MUL_3_mult_17_n563) );
  OR3_X1 MUL_3_mult_17_U622 ( .A1(MUL_3_mult_17_n564), .A2(A[91]), .A3(
        MUL_3_mult_17_n526), .ZN(MUL_3_mult_17_n657) );
  OAI21_X1 MUL_3_mult_17_U621 ( .B1(MUL_3_mult_17_n526), .B2(
        MUL_3_mult_17_n563), .A(MUL_3_mult_17_n657), .ZN(MUL_3_mult_17_n195)
         );
  XNOR2_X1 MUL_3_mult_17_U620 ( .A(MUL_3_mult_17_n531), .B(SAMPLES[97]), .ZN(
        MUL_3_mult_17_n656) );
  NAND2_X1 MUL_3_mult_17_U619 ( .A1(MUL_3_mult_17_n560), .A2(
        MUL_3_mult_17_n656), .ZN(MUL_3_mult_17_n559) );
  OR3_X1 MUL_3_mult_17_U618 ( .A1(MUL_3_mult_17_n560), .A2(A[91]), .A3(
        MUL_3_mult_17_n531), .ZN(MUL_3_mult_17_n655) );
  OAI21_X1 MUL_3_mult_17_U617 ( .B1(MUL_3_mult_17_n531), .B2(
        MUL_3_mult_17_n559), .A(MUL_3_mult_17_n655), .ZN(MUL_3_mult_17_n196)
         );
  XNOR2_X1 MUL_3_mult_17_U616 ( .A(MUL_3_mult_17_n536), .B(SAMPLES[95]), .ZN(
        MUL_3_mult_17_n654) );
  NAND2_X1 MUL_3_mult_17_U615 ( .A1(MUL_3_mult_17_n556), .A2(
        MUL_3_mult_17_n654), .ZN(MUL_3_mult_17_n555) );
  OR3_X1 MUL_3_mult_17_U614 ( .A1(MUL_3_mult_17_n556), .A2(A[91]), .A3(
        MUL_3_mult_17_n536), .ZN(MUL_3_mult_17_n653) );
  OAI21_X1 MUL_3_mult_17_U613 ( .B1(MUL_3_mult_17_n536), .B2(
        MUL_3_mult_17_n555), .A(MUL_3_mult_17_n653), .ZN(MUL_3_mult_17_n197)
         );
  XNOR2_X1 MUL_3_mult_17_U612 ( .A(A[102]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n652) );
  NOR2_X1 MUL_3_mult_17_U611 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n652), .ZN(MUL_3_mult_17_n201) );
  XNOR2_X1 MUL_3_mult_17_U610 ( .A(A[101]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n651) );
  NOR2_X1 MUL_3_mult_17_U609 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n651), .ZN(MUL_3_mult_17_n202) );
  XNOR2_X1 MUL_3_mult_17_U608 ( .A(A[100]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n650) );
  NOR2_X1 MUL_3_mult_17_U607 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n650), .ZN(MUL_3_mult_17_n203) );
  XNOR2_X1 MUL_3_mult_17_U606 ( .A(A[99]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n649) );
  NOR2_X1 MUL_3_mult_17_U605 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n649), .ZN(MUL_3_mult_17_n204) );
  XNOR2_X1 MUL_3_mult_17_U604 ( .A(A[98]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n648) );
  NOR2_X1 MUL_3_mult_17_U603 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n648), .ZN(MUL_3_mult_17_n205) );
  XNOR2_X1 MUL_3_mult_17_U602 ( .A(A[97]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n647) );
  NOR2_X1 MUL_3_mult_17_U601 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n647), .ZN(MUL_3_mult_17_n206) );
  XNOR2_X1 MUL_3_mult_17_U600 ( .A(A[96]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n646) );
  NOR2_X1 MUL_3_mult_17_U599 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n646), .ZN(MUL_3_mult_17_n207) );
  XNOR2_X1 MUL_3_mult_17_U598 ( .A(A[95]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n645) );
  NOR2_X1 MUL_3_mult_17_U597 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n645), .ZN(MUL_3_mult_17_n208) );
  XNOR2_X1 MUL_3_mult_17_U596 ( .A(A[94]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n644) );
  NOR2_X1 MUL_3_mult_17_U595 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n644), .ZN(MUL_3_mult_17_n209) );
  XNOR2_X1 MUL_3_mult_17_U594 ( .A(A[93]), .B(SAMPLES[103]), .ZN(
        MUL_3_mult_17_n643) );
  NOR2_X1 MUL_3_mult_17_U593 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n643), .ZN(MUL_3_mult_17_n210) );
  NOR2_X1 MUL_3_mult_17_U592 ( .A1(MUL_3_mult_17_n516), .A2(MUL_3_mult_17_n546), .ZN(MUL_3_mult_17_n212) );
  XNOR2_X1 MUL_3_mult_17_U591 ( .A(A[103]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n569) );
  OAI22_X1 MUL_3_mult_17_U590 ( .A1(MUL_3_mult_17_n569), .A2(
        MUL_3_mult_17_n568), .B1(MUL_3_mult_17_n567), .B2(MUL_3_mult_17_n569), 
        .ZN(MUL_3_mult_17_n642) );
  XNOR2_X1 MUL_3_mult_17_U589 ( .A(A[101]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n641) );
  XNOR2_X1 MUL_3_mult_17_U588 ( .A(A[102]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n566) );
  OAI22_X1 MUL_3_mult_17_U587 ( .A1(MUL_3_mult_17_n641), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n566), 
        .ZN(MUL_3_mult_17_n214) );
  XNOR2_X1 MUL_3_mult_17_U586 ( .A(A[100]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n640) );
  OAI22_X1 MUL_3_mult_17_U585 ( .A1(MUL_3_mult_17_n640), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n641), 
        .ZN(MUL_3_mult_17_n215) );
  XNOR2_X1 MUL_3_mult_17_U584 ( .A(A[99]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n639) );
  OAI22_X1 MUL_3_mult_17_U583 ( .A1(MUL_3_mult_17_n639), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n640), 
        .ZN(MUL_3_mult_17_n216) );
  XNOR2_X1 MUL_3_mult_17_U582 ( .A(A[98]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n638) );
  OAI22_X1 MUL_3_mult_17_U581 ( .A1(MUL_3_mult_17_n638), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n639), 
        .ZN(MUL_3_mult_17_n217) );
  XNOR2_X1 MUL_3_mult_17_U580 ( .A(A[97]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n637) );
  OAI22_X1 MUL_3_mult_17_U579 ( .A1(MUL_3_mult_17_n637), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n638), 
        .ZN(MUL_3_mult_17_n218) );
  XNOR2_X1 MUL_3_mult_17_U578 ( .A(A[96]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n636) );
  OAI22_X1 MUL_3_mult_17_U577 ( .A1(MUL_3_mult_17_n636), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n637), 
        .ZN(MUL_3_mult_17_n219) );
  XNOR2_X1 MUL_3_mult_17_U576 ( .A(A[95]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n635) );
  OAI22_X1 MUL_3_mult_17_U575 ( .A1(MUL_3_mult_17_n635), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n636), 
        .ZN(MUL_3_mult_17_n220) );
  OAI22_X1 MUL_3_mult_17_U574 ( .A1(MUL_3_mult_17_n634), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n635), 
        .ZN(MUL_3_mult_17_n221) );
  XNOR2_X1 MUL_3_mult_17_U573 ( .A(A[92]), .B(SAMPLES[102]), .ZN(
        MUL_3_mult_17_n632) );
  OAI22_X1 MUL_3_mult_17_U572 ( .A1(MUL_3_mult_17_n632), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n633), 
        .ZN(MUL_3_mult_17_n223) );
  XNOR2_X1 MUL_3_mult_17_U571 ( .A(SAMPLES[102]), .B(A[91]), .ZN(
        MUL_3_mult_17_n631) );
  OAI22_X1 MUL_3_mult_17_U570 ( .A1(MUL_3_mult_17_n631), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n632), 
        .ZN(MUL_3_mult_17_n224) );
  NOR2_X1 MUL_3_mult_17_U569 ( .A1(MUL_3_mult_17_n568), .A2(MUL_3_mult_17_n546), .ZN(MUL_3_mult_17_n225) );
  XNOR2_X1 MUL_3_mult_17_U568 ( .A(A[103]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n565) );
  OAI22_X1 MUL_3_mult_17_U567 ( .A1(MUL_3_mult_17_n565), .A2(
        MUL_3_mult_17_n564), .B1(MUL_3_mult_17_n563), .B2(MUL_3_mult_17_n565), 
        .ZN(MUL_3_mult_17_n630) );
  XNOR2_X1 MUL_3_mult_17_U566 ( .A(A[101]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n629) );
  XNOR2_X1 MUL_3_mult_17_U565 ( .A(A[102]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n562) );
  OAI22_X1 MUL_3_mult_17_U564 ( .A1(MUL_3_mult_17_n629), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n562), 
        .ZN(MUL_3_mult_17_n227) );
  XNOR2_X1 MUL_3_mult_17_U563 ( .A(A[100]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n628) );
  OAI22_X1 MUL_3_mult_17_U562 ( .A1(MUL_3_mult_17_n628), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n629), 
        .ZN(MUL_3_mult_17_n228) );
  XNOR2_X1 MUL_3_mult_17_U561 ( .A(A[99]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n627) );
  OAI22_X1 MUL_3_mult_17_U560 ( .A1(MUL_3_mult_17_n627), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n628), 
        .ZN(MUL_3_mult_17_n229) );
  XNOR2_X1 MUL_3_mult_17_U559 ( .A(A[98]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n626) );
  OAI22_X1 MUL_3_mult_17_U558 ( .A1(MUL_3_mult_17_n626), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n627), 
        .ZN(MUL_3_mult_17_n230) );
  XNOR2_X1 MUL_3_mult_17_U557 ( .A(A[97]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n625) );
  OAI22_X1 MUL_3_mult_17_U556 ( .A1(MUL_3_mult_17_n625), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n626), 
        .ZN(MUL_3_mult_17_n231) );
  XNOR2_X1 MUL_3_mult_17_U555 ( .A(A[96]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n624) );
  OAI22_X1 MUL_3_mult_17_U554 ( .A1(MUL_3_mult_17_n624), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n625), 
        .ZN(MUL_3_mult_17_n232) );
  XNOR2_X1 MUL_3_mult_17_U553 ( .A(A[95]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n623) );
  OAI22_X1 MUL_3_mult_17_U552 ( .A1(MUL_3_mult_17_n623), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n624), 
        .ZN(MUL_3_mult_17_n233) );
  XNOR2_X1 MUL_3_mult_17_U551 ( .A(A[94]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n622) );
  OAI22_X1 MUL_3_mult_17_U550 ( .A1(MUL_3_mult_17_n622), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n623), 
        .ZN(MUL_3_mult_17_n234) );
  XNOR2_X1 MUL_3_mult_17_U549 ( .A(A[93]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n621) );
  OAI22_X1 MUL_3_mult_17_U548 ( .A1(MUL_3_mult_17_n621), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n622), 
        .ZN(MUL_3_mult_17_n235) );
  XNOR2_X1 MUL_3_mult_17_U547 ( .A(A[92]), .B(SAMPLES[100]), .ZN(
        MUL_3_mult_17_n620) );
  OAI22_X1 MUL_3_mult_17_U546 ( .A1(MUL_3_mult_17_n620), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n621), 
        .ZN(MUL_3_mult_17_n236) );
  XNOR2_X1 MUL_3_mult_17_U545 ( .A(SAMPLES[100]), .B(A[91]), .ZN(
        MUL_3_mult_17_n619) );
  OAI22_X1 MUL_3_mult_17_U544 ( .A1(MUL_3_mult_17_n619), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n620), 
        .ZN(MUL_3_mult_17_n237) );
  NOR2_X1 MUL_3_mult_17_U543 ( .A1(MUL_3_mult_17_n564), .A2(MUL_3_mult_17_n546), .ZN(MUL_3_mult_17_n238) );
  XNOR2_X1 MUL_3_mult_17_U542 ( .A(A[103]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n561) );
  OAI22_X1 MUL_3_mult_17_U541 ( .A1(MUL_3_mult_17_n561), .A2(
        MUL_3_mult_17_n560), .B1(MUL_3_mult_17_n559), .B2(MUL_3_mult_17_n561), 
        .ZN(MUL_3_mult_17_n618) );
  XNOR2_X1 MUL_3_mult_17_U540 ( .A(A[101]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n617) );
  XNOR2_X1 MUL_3_mult_17_U539 ( .A(A[102]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n558) );
  OAI22_X1 MUL_3_mult_17_U538 ( .A1(MUL_3_mult_17_n617), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n558), 
        .ZN(MUL_3_mult_17_n240) );
  XNOR2_X1 MUL_3_mult_17_U537 ( .A(A[100]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n616) );
  OAI22_X1 MUL_3_mult_17_U536 ( .A1(MUL_3_mult_17_n616), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n617), 
        .ZN(MUL_3_mult_17_n241) );
  XNOR2_X1 MUL_3_mult_17_U535 ( .A(A[99]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n615) );
  OAI22_X1 MUL_3_mult_17_U534 ( .A1(MUL_3_mult_17_n615), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n616), 
        .ZN(MUL_3_mult_17_n242) );
  XNOR2_X1 MUL_3_mult_17_U533 ( .A(A[98]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n614) );
  OAI22_X1 MUL_3_mult_17_U532 ( .A1(MUL_3_mult_17_n614), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n615), 
        .ZN(MUL_3_mult_17_n243) );
  XNOR2_X1 MUL_3_mult_17_U531 ( .A(A[97]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n613) );
  OAI22_X1 MUL_3_mult_17_U530 ( .A1(MUL_3_mult_17_n613), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n614), 
        .ZN(MUL_3_mult_17_n244) );
  XNOR2_X1 MUL_3_mult_17_U529 ( .A(A[96]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n612) );
  OAI22_X1 MUL_3_mult_17_U528 ( .A1(MUL_3_mult_17_n612), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n613), 
        .ZN(MUL_3_mult_17_n245) );
  XNOR2_X1 MUL_3_mult_17_U527 ( .A(A[95]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n611) );
  OAI22_X1 MUL_3_mult_17_U526 ( .A1(MUL_3_mult_17_n611), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n612), 
        .ZN(MUL_3_mult_17_n246) );
  XNOR2_X1 MUL_3_mult_17_U525 ( .A(A[94]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n610) );
  OAI22_X1 MUL_3_mult_17_U524 ( .A1(MUL_3_mult_17_n610), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n611), 
        .ZN(MUL_3_mult_17_n247) );
  XNOR2_X1 MUL_3_mult_17_U523 ( .A(A[93]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n609) );
  OAI22_X1 MUL_3_mult_17_U522 ( .A1(MUL_3_mult_17_n609), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n610), 
        .ZN(MUL_3_mult_17_n248) );
  XNOR2_X1 MUL_3_mult_17_U521 ( .A(A[92]), .B(SAMPLES[98]), .ZN(
        MUL_3_mult_17_n608) );
  OAI22_X1 MUL_3_mult_17_U520 ( .A1(MUL_3_mult_17_n608), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n609), 
        .ZN(MUL_3_mult_17_n249) );
  XNOR2_X1 MUL_3_mult_17_U519 ( .A(SAMPLES[98]), .B(A[91]), .ZN(
        MUL_3_mult_17_n607) );
  OAI22_X1 MUL_3_mult_17_U518 ( .A1(MUL_3_mult_17_n607), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n608), 
        .ZN(MUL_3_mult_17_n250) );
  NOR2_X1 MUL_3_mult_17_U517 ( .A1(MUL_3_mult_17_n560), .A2(MUL_3_mult_17_n546), .ZN(MUL_3_mult_17_n251) );
  XNOR2_X1 MUL_3_mult_17_U516 ( .A(A[103]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n557) );
  OAI22_X1 MUL_3_mult_17_U515 ( .A1(MUL_3_mult_17_n557), .A2(
        MUL_3_mult_17_n556), .B1(MUL_3_mult_17_n555), .B2(MUL_3_mult_17_n557), 
        .ZN(MUL_3_mult_17_n606) );
  XNOR2_X1 MUL_3_mult_17_U514 ( .A(A[101]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n605) );
  XNOR2_X1 MUL_3_mult_17_U513 ( .A(A[102]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n554) );
  OAI22_X1 MUL_3_mult_17_U512 ( .A1(MUL_3_mult_17_n605), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n554), 
        .ZN(MUL_3_mult_17_n253) );
  XNOR2_X1 MUL_3_mult_17_U511 ( .A(A[100]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n604) );
  OAI22_X1 MUL_3_mult_17_U510 ( .A1(MUL_3_mult_17_n604), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n605), 
        .ZN(MUL_3_mult_17_n254) );
  XNOR2_X1 MUL_3_mult_17_U509 ( .A(A[99]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n603) );
  OAI22_X1 MUL_3_mult_17_U508 ( .A1(MUL_3_mult_17_n603), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n604), 
        .ZN(MUL_3_mult_17_n255) );
  XNOR2_X1 MUL_3_mult_17_U507 ( .A(A[98]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n602) );
  OAI22_X1 MUL_3_mult_17_U506 ( .A1(MUL_3_mult_17_n602), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n603), 
        .ZN(MUL_3_mult_17_n256) );
  XNOR2_X1 MUL_3_mult_17_U505 ( .A(A[97]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n601) );
  OAI22_X1 MUL_3_mult_17_U504 ( .A1(MUL_3_mult_17_n601), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n602), 
        .ZN(MUL_3_mult_17_n257) );
  XNOR2_X1 MUL_3_mult_17_U503 ( .A(A[96]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n600) );
  OAI22_X1 MUL_3_mult_17_U502 ( .A1(MUL_3_mult_17_n600), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n601), 
        .ZN(MUL_3_mult_17_n258) );
  XNOR2_X1 MUL_3_mult_17_U501 ( .A(A[95]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n599) );
  OAI22_X1 MUL_3_mult_17_U500 ( .A1(MUL_3_mult_17_n599), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n600), 
        .ZN(MUL_3_mult_17_n259) );
  XNOR2_X1 MUL_3_mult_17_U499 ( .A(A[94]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n598) );
  OAI22_X1 MUL_3_mult_17_U498 ( .A1(MUL_3_mult_17_n598), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n599), 
        .ZN(MUL_3_mult_17_n260) );
  XNOR2_X1 MUL_3_mult_17_U497 ( .A(A[93]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n597) );
  OAI22_X1 MUL_3_mult_17_U496 ( .A1(MUL_3_mult_17_n597), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n598), 
        .ZN(MUL_3_mult_17_n261) );
  XNOR2_X1 MUL_3_mult_17_U495 ( .A(A[92]), .B(SAMPLES[96]), .ZN(
        MUL_3_mult_17_n596) );
  OAI22_X1 MUL_3_mult_17_U494 ( .A1(MUL_3_mult_17_n596), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n597), 
        .ZN(MUL_3_mult_17_n262) );
  XNOR2_X1 MUL_3_mult_17_U493 ( .A(SAMPLES[96]), .B(A[91]), .ZN(
        MUL_3_mult_17_n595) );
  OAI22_X1 MUL_3_mult_17_U492 ( .A1(MUL_3_mult_17_n595), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n596), 
        .ZN(MUL_3_mult_17_n263) );
  NOR2_X1 MUL_3_mult_17_U491 ( .A1(MUL_3_mult_17_n556), .A2(MUL_3_mult_17_n546), .ZN(MUL_3_mult_17_n264) );
  XOR2_X1 MUL_3_mult_17_U490 ( .A(A[103]), .B(MUL_3_mult_17_n541), .Z(
        MUL_3_mult_17_n553) );
  OAI22_X1 MUL_3_mult_17_U489 ( .A1(MUL_3_mult_17_n553), .A2(
        MUL_3_mult_17_n542), .B1(MUL_3_mult_17_n552), .B2(MUL_3_mult_17_n553), 
        .ZN(MUL_3_mult_17_n594) );
  XNOR2_X1 MUL_3_mult_17_U488 ( .A(A[101]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n593) );
  XNOR2_X1 MUL_3_mult_17_U487 ( .A(A[102]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n551) );
  OAI22_X1 MUL_3_mult_17_U486 ( .A1(MUL_3_mult_17_n593), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n551), 
        .ZN(MUL_3_mult_17_n266) );
  XNOR2_X1 MUL_3_mult_17_U485 ( .A(A[100]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n592) );
  OAI22_X1 MUL_3_mult_17_U484 ( .A1(MUL_3_mult_17_n592), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n593), 
        .ZN(MUL_3_mult_17_n267) );
  XNOR2_X1 MUL_3_mult_17_U483 ( .A(A[99]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n591) );
  OAI22_X1 MUL_3_mult_17_U482 ( .A1(MUL_3_mult_17_n591), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n592), 
        .ZN(MUL_3_mult_17_n268) );
  XNOR2_X1 MUL_3_mult_17_U481 ( .A(A[98]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n590) );
  OAI22_X1 MUL_3_mult_17_U480 ( .A1(MUL_3_mult_17_n590), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n591), 
        .ZN(MUL_3_mult_17_n269) );
  XNOR2_X1 MUL_3_mult_17_U479 ( .A(A[97]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n589) );
  OAI22_X1 MUL_3_mult_17_U478 ( .A1(MUL_3_mult_17_n589), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n590), 
        .ZN(MUL_3_mult_17_n270) );
  XNOR2_X1 MUL_3_mult_17_U477 ( .A(A[96]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n588) );
  OAI22_X1 MUL_3_mult_17_U476 ( .A1(MUL_3_mult_17_n588), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n589), 
        .ZN(MUL_3_mult_17_n271) );
  XNOR2_X1 MUL_3_mult_17_U475 ( .A(A[95]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n587) );
  OAI22_X1 MUL_3_mult_17_U474 ( .A1(MUL_3_mult_17_n587), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n588), 
        .ZN(MUL_3_mult_17_n272) );
  XNOR2_X1 MUL_3_mult_17_U473 ( .A(A[94]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n586) );
  OAI22_X1 MUL_3_mult_17_U472 ( .A1(MUL_3_mult_17_n586), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n587), 
        .ZN(MUL_3_mult_17_n273) );
  XNOR2_X1 MUL_3_mult_17_U471 ( .A(A[93]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n585) );
  OAI22_X1 MUL_3_mult_17_U470 ( .A1(MUL_3_mult_17_n585), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n586), 
        .ZN(MUL_3_mult_17_n274) );
  XNOR2_X1 MUL_3_mult_17_U469 ( .A(A[92]), .B(SAMPLES[94]), .ZN(
        MUL_3_mult_17_n584) );
  OAI22_X1 MUL_3_mult_17_U468 ( .A1(MUL_3_mult_17_n584), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n585), 
        .ZN(MUL_3_mult_17_n275) );
  XNOR2_X1 MUL_3_mult_17_U467 ( .A(SAMPLES[94]), .B(A[91]), .ZN(
        MUL_3_mult_17_n583) );
  OAI22_X1 MUL_3_mult_17_U466 ( .A1(MUL_3_mult_17_n583), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n584), 
        .ZN(MUL_3_mult_17_n276) );
  XNOR2_X1 MUL_3_mult_17_U465 ( .A(A[103]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n581) );
  OAI22_X1 MUL_3_mult_17_U464 ( .A1(MUL_3_mult_17_n544), .A2(
        MUL_3_mult_17_n581), .B1(MUL_3_mult_17_n571), .B2(MUL_3_mult_17_n581), 
        .ZN(MUL_3_mult_17_n582) );
  XNOR2_X1 MUL_3_mult_17_U463 ( .A(A[102]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n580) );
  OAI22_X1 MUL_3_mult_17_U462 ( .A1(MUL_3_mult_17_n580), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n581), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n279) );
  XNOR2_X1 MUL_3_mult_17_U461 ( .A(A[101]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n579) );
  OAI22_X1 MUL_3_mult_17_U460 ( .A1(MUL_3_mult_17_n579), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n580), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n280) );
  XNOR2_X1 MUL_3_mult_17_U459 ( .A(A[100]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n578) );
  OAI22_X1 MUL_3_mult_17_U458 ( .A1(MUL_3_mult_17_n578), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n579), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n281) );
  XNOR2_X1 MUL_3_mult_17_U457 ( .A(A[99]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n577) );
  OAI22_X1 MUL_3_mult_17_U456 ( .A1(MUL_3_mult_17_n577), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n578), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n282) );
  XNOR2_X1 MUL_3_mult_17_U455 ( .A(A[98]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n576) );
  OAI22_X1 MUL_3_mult_17_U454 ( .A1(MUL_3_mult_17_n576), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n577), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n283) );
  XNOR2_X1 MUL_3_mult_17_U453 ( .A(A[97]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n575) );
  OAI22_X1 MUL_3_mult_17_U452 ( .A1(MUL_3_mult_17_n575), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n576), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n284) );
  XNOR2_X1 MUL_3_mult_17_U451 ( .A(A[96]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n574) );
  OAI22_X1 MUL_3_mult_17_U450 ( .A1(MUL_3_mult_17_n574), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n575), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n285) );
  XNOR2_X1 MUL_3_mult_17_U449 ( .A(A[95]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n573) );
  OAI22_X1 MUL_3_mult_17_U448 ( .A1(MUL_3_mult_17_n573), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n574), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n286) );
  XNOR2_X1 MUL_3_mult_17_U447 ( .A(A[94]), .B(SAMPLES[92]), .ZN(
        MUL_3_mult_17_n572) );
  OAI22_X1 MUL_3_mult_17_U446 ( .A1(MUL_3_mult_17_n572), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n573), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n287) );
  OAI22_X1 MUL_3_mult_17_U445 ( .A1(MUL_3_mult_17_n570), .A2(
        MUL_3_mult_17_n571), .B1(MUL_3_mult_17_n572), .B2(MUL_3_mult_17_n544), 
        .ZN(MUL_3_mult_17_n288) );
  XNOR2_X1 MUL_3_mult_17_U444 ( .A(A[103]), .B(MUL_3_mult_17_n514), .ZN(
        MUL_3_mult_17_n550) );
  NAND2_X1 MUL_3_mult_17_U443 ( .A1(MUL_3_mult_17_n550), .A2(
        MUL_3_mult_17_n549), .ZN(MUL_3_mult_17_n29) );
  OAI22_X1 MUL_3_mult_17_U442 ( .A1(MUL_3_mult_17_n566), .A2(
        MUL_3_mult_17_n567), .B1(MUL_3_mult_17_n568), .B2(MUL_3_mult_17_n569), 
        .ZN(MUL_3_mult_17_n34) );
  OAI22_X1 MUL_3_mult_17_U441 ( .A1(MUL_3_mult_17_n562), .A2(
        MUL_3_mult_17_n563), .B1(MUL_3_mult_17_n564), .B2(MUL_3_mult_17_n565), 
        .ZN(MUL_3_mult_17_n44) );
  OAI22_X1 MUL_3_mult_17_U440 ( .A1(MUL_3_mult_17_n558), .A2(
        MUL_3_mult_17_n559), .B1(MUL_3_mult_17_n560), .B2(MUL_3_mult_17_n561), 
        .ZN(MUL_3_mult_17_n58) );
  OAI22_X1 MUL_3_mult_17_U439 ( .A1(MUL_3_mult_17_n554), .A2(
        MUL_3_mult_17_n555), .B1(MUL_3_mult_17_n556), .B2(MUL_3_mult_17_n557), 
        .ZN(MUL_3_mult_17_n76) );
  OAI22_X1 MUL_3_mult_17_U438 ( .A1(MUL_3_mult_17_n551), .A2(
        MUL_3_mult_17_n552), .B1(MUL_3_mult_17_n542), .B2(MUL_3_mult_17_n553), 
        .ZN(MUL_3_mult_17_n98) );
  NOR2_X1 MUL_3_mult_17_U437 ( .A1(MUL_3_mult_17_n544), .A2(MUL_3_mult_17_n546), .ZN(MUL_3_O_0_) );
  XOR2_X1 MUL_3_mult_17_U436 ( .A(MUL_3_mult_17_n29), .B(MUL_3_mult_17_n4), 
        .Z(MUL_3_mult_17_n547) );
  AND2_X1 MUL_3_mult_17_U435 ( .A1(MUL_3_mult_17_n549), .A2(MUL_3_mult_17_n550), .ZN(MUL_3_mult_17_n548) );
  XOR2_X1 MUL_3_mult_17_U434 ( .A(MUL_3_mult_17_n547), .B(MUL_3_mult_17_n548), 
        .Z(TRUNCATED_MULT_RES_3__7_) );
  XOR2_X2 MUL_3_mult_17_U433 ( .A(SAMPLES[101]), .B(MUL_3_mult_17_n526), .Z(
        MUL_3_mult_17_n568) );
  XOR2_X2 MUL_3_mult_17_U432 ( .A(SAMPLES[99]), .B(MUL_3_mult_17_n531), .Z(
        MUL_3_mult_17_n564) );
  XOR2_X2 MUL_3_mult_17_U431 ( .A(SAMPLES[97]), .B(MUL_3_mult_17_n536), .Z(
        MUL_3_mult_17_n560) );
  XOR2_X2 MUL_3_mult_17_U430 ( .A(SAMPLES[95]), .B(MUL_3_mult_17_n541), .Z(
        MUL_3_mult_17_n556) );
  INV_X1 MUL_3_mult_17_U429 ( .A(MUL_3_mult_17_n642), .ZN(MUL_3_mult_17_n519)
         );
  INV_X1 MUL_3_mult_17_U428 ( .A(MUL_3_mult_17_n34), .ZN(MUL_3_mult_17_n518)
         );
  INV_X1 MUL_3_mult_17_U427 ( .A(MUL_3_mult_17_n594), .ZN(MUL_3_mult_17_n540)
         );
  INV_X1 MUL_3_mult_17_U426 ( .A(SAMPLES[103]), .ZN(MUL_3_mult_17_n514) );
  INV_X1 MUL_3_mult_17_U425 ( .A(SAMPLES[102]), .ZN(MUL_3_mult_17_n521) );
  INV_X1 MUL_3_mult_17_U424 ( .A(A[92]), .ZN(MUL_3_mult_17_n545) );
  AND3_X1 MUL_3_mult_17_U423 ( .A1(MUL_3_mult_17_n683), .A2(MUL_3_mult_17_n545), .A3(SAMPLES[92]), .ZN(MUL_3_mult_17_n508) );
  AND2_X1 MUL_3_mult_17_U422 ( .A1(MUL_3_mult_17_n681), .A2(MUL_3_mult_17_n683), .ZN(MUL_3_mult_17_n507) );
  MUX2_X1 MUL_3_mult_17_U421 ( .A(MUL_3_mult_17_n507), .B(MUL_3_mult_17_n508), 
        .S(MUL_3_mult_17_n546), .Z(MUL_3_mult_17_n506) );
  INV_X1 MUL_3_mult_17_U420 ( .A(A[91]), .ZN(MUL_3_mult_17_n546) );
  INV_X1 MUL_3_mult_17_U419 ( .A(SAMPLES[100]), .ZN(MUL_3_mult_17_n526) );
  INV_X1 MUL_3_mult_17_U418 ( .A(SAMPLES[98]), .ZN(MUL_3_mult_17_n531) );
  INV_X1 MUL_3_mult_17_U417 ( .A(SAMPLES[96]), .ZN(MUL_3_mult_17_n536) );
  INV_X1 MUL_3_mult_17_U416 ( .A(SAMPLES[94]), .ZN(MUL_3_mult_17_n541) );
  INV_X1 MUL_3_mult_17_U415 ( .A(SAMPLES[91]), .ZN(MUL_3_mult_17_n544) );
  INV_X1 MUL_3_mult_17_U414 ( .A(MUL_3_mult_17_n630), .ZN(MUL_3_mult_17_n525)
         );
  INV_X1 MUL_3_mult_17_U413 ( .A(MUL_3_mult_17_n618), .ZN(MUL_3_mult_17_n530)
         );
  INV_X1 MUL_3_mult_17_U412 ( .A(MUL_3_mult_17_n44), .ZN(MUL_3_mult_17_n524)
         );
  INV_X1 MUL_3_mult_17_U411 ( .A(MUL_3_mult_17_n662), .ZN(MUL_3_mult_17_n520)
         );
  INV_X1 MUL_3_mult_17_U410 ( .A(MUL_3_mult_17_n606), .ZN(MUL_3_mult_17_n535)
         );
  INV_X1 MUL_3_mult_17_U409 ( .A(MUL_3_mult_17_n76), .ZN(MUL_3_mult_17_n534)
         );
  INV_X1 MUL_3_mult_17_U408 ( .A(MUL_3_mult_17_n98), .ZN(MUL_3_mult_17_n539)
         );
  INV_X1 MUL_3_mult_17_U407 ( .A(MUL_3_mult_17_n582), .ZN(MUL_3_mult_17_n543)
         );
  INV_X1 MUL_3_mult_17_U406 ( .A(MUL_3_mult_17_n549), .ZN(MUL_3_mult_17_n516)
         );
  INV_X1 MUL_3_mult_17_U405 ( .A(MUL_3_mult_17_n681), .ZN(MUL_3_mult_17_n542)
         );
  INV_X1 MUL_3_mult_17_U404 ( .A(MUL_3_mult_17_n678), .ZN(MUL_3_mult_17_n538)
         );
  INV_X1 MUL_3_mult_17_U403 ( .A(MUL_3_mult_17_n677), .ZN(MUL_3_mult_17_n537)
         );
  INV_X1 MUL_3_mult_17_U402 ( .A(MUL_3_mult_17_n58), .ZN(MUL_3_mult_17_n529)
         );
  INV_X1 MUL_3_mult_17_U401 ( .A(MUL_3_mult_17_n676), .ZN(MUL_3_mult_17_n533)
         );
  INV_X1 MUL_3_mult_17_U400 ( .A(MUL_3_mult_17_n675), .ZN(MUL_3_mult_17_n532)
         );
  INV_X1 MUL_3_mult_17_U399 ( .A(MUL_3_mult_17_n664), .ZN(MUL_3_mult_17_n509)
         );
  INV_X1 MUL_3_mult_17_U398 ( .A(MUL_3_mult_17_n674), .ZN(MUL_3_mult_17_n528)
         );
  INV_X1 MUL_3_mult_17_U397 ( .A(MUL_3_mult_17_n673), .ZN(MUL_3_mult_17_n527)
         );
  INV_X1 MUL_3_mult_17_U396 ( .A(MUL_3_mult_17_n668), .ZN(MUL_3_mult_17_n513)
         );
  INV_X1 MUL_3_mult_17_U395 ( .A(MUL_3_mult_17_n667), .ZN(MUL_3_mult_17_n512)
         );
  INV_X1 MUL_3_mult_17_U394 ( .A(MUL_3_mult_17_n670), .ZN(MUL_3_mult_17_n517)
         );
  INV_X1 MUL_3_mult_17_U393 ( .A(MUL_3_mult_17_n669), .ZN(MUL_3_mult_17_n515)
         );
  INV_X1 MUL_3_mult_17_U392 ( .A(MUL_3_mult_17_n672), .ZN(MUL_3_mult_17_n523)
         );
  INV_X1 MUL_3_mult_17_U391 ( .A(MUL_3_mult_17_n671), .ZN(MUL_3_mult_17_n522)
         );
  INV_X1 MUL_3_mult_17_U390 ( .A(MUL_3_mult_17_n666), .ZN(MUL_3_mult_17_n511)
         );
  INV_X1 MUL_3_mult_17_U389 ( .A(MUL_3_mult_17_n665), .ZN(MUL_3_mult_17_n510)
         );
  HA_X1 MUL_3_mult_17_U101 ( .A(MUL_3_mult_17_n276), .B(MUL_3_mult_17_n288), 
        .CO(MUL_3_mult_17_n170), .S(MUL_3_mult_17_n171) );
  FA_X1 MUL_3_mult_17_U100 ( .A(MUL_3_mult_17_n287), .B(MUL_3_mult_17_n264), 
        .CI(MUL_3_mult_17_n275), .CO(MUL_3_mult_17_n168), .S(
        MUL_3_mult_17_n169) );
  HA_X1 MUL_3_mult_17_U99 ( .A(MUL_3_mult_17_n197), .B(MUL_3_mult_17_n263), 
        .CO(MUL_3_mult_17_n166), .S(MUL_3_mult_17_n167) );
  FA_X1 MUL_3_mult_17_U98 ( .A(MUL_3_mult_17_n274), .B(MUL_3_mult_17_n286), 
        .CI(MUL_3_mult_17_n167), .CO(MUL_3_mult_17_n164), .S(
        MUL_3_mult_17_n165) );
  FA_X1 MUL_3_mult_17_U97 ( .A(MUL_3_mult_17_n285), .B(MUL_3_mult_17_n251), 
        .CI(MUL_3_mult_17_n273), .CO(MUL_3_mult_17_n162), .S(
        MUL_3_mult_17_n163) );
  FA_X1 MUL_3_mult_17_U96 ( .A(MUL_3_mult_17_n166), .B(MUL_3_mult_17_n262), 
        .CI(MUL_3_mult_17_n163), .CO(MUL_3_mult_17_n160), .S(
        MUL_3_mult_17_n161) );
  HA_X1 MUL_3_mult_17_U95 ( .A(MUL_3_mult_17_n196), .B(MUL_3_mult_17_n250), 
        .CO(MUL_3_mult_17_n158), .S(MUL_3_mult_17_n159) );
  FA_X1 MUL_3_mult_17_U94 ( .A(MUL_3_mult_17_n261), .B(MUL_3_mult_17_n284), 
        .CI(MUL_3_mult_17_n272), .CO(MUL_3_mult_17_n156), .S(
        MUL_3_mult_17_n157) );
  FA_X1 MUL_3_mult_17_U93 ( .A(MUL_3_mult_17_n162), .B(MUL_3_mult_17_n159), 
        .CI(MUL_3_mult_17_n157), .CO(MUL_3_mult_17_n154), .S(
        MUL_3_mult_17_n155) );
  FA_X1 MUL_3_mult_17_U92 ( .A(MUL_3_mult_17_n260), .B(MUL_3_mult_17_n238), 
        .CI(MUL_3_mult_17_n283), .CO(MUL_3_mult_17_n152), .S(
        MUL_3_mult_17_n153) );
  FA_X1 MUL_3_mult_17_U91 ( .A(MUL_3_mult_17_n249), .B(MUL_3_mult_17_n271), 
        .CI(MUL_3_mult_17_n158), .CO(MUL_3_mult_17_n150), .S(
        MUL_3_mult_17_n151) );
  FA_X1 MUL_3_mult_17_U90 ( .A(MUL_3_mult_17_n153), .B(MUL_3_mult_17_n156), 
        .CI(MUL_3_mult_17_n151), .CO(MUL_3_mult_17_n148), .S(
        MUL_3_mult_17_n149) );
  HA_X1 MUL_3_mult_17_U89 ( .A(MUL_3_mult_17_n195), .B(MUL_3_mult_17_n237), 
        .CO(MUL_3_mult_17_n146), .S(MUL_3_mult_17_n147) );
  FA_X1 MUL_3_mult_17_U88 ( .A(MUL_3_mult_17_n248), .B(MUL_3_mult_17_n259), 
        .CI(MUL_3_mult_17_n270), .CO(MUL_3_mult_17_n144), .S(
        MUL_3_mult_17_n145) );
  FA_X1 MUL_3_mult_17_U87 ( .A(MUL_3_mult_17_n147), .B(MUL_3_mult_17_n282), 
        .CI(MUL_3_mult_17_n152), .CO(MUL_3_mult_17_n142), .S(
        MUL_3_mult_17_n143) );
  FA_X1 MUL_3_mult_17_U86 ( .A(MUL_3_mult_17_n145), .B(MUL_3_mult_17_n150), 
        .CI(MUL_3_mult_17_n143), .CO(MUL_3_mult_17_n140), .S(
        MUL_3_mult_17_n141) );
  FA_X1 MUL_3_mult_17_U85 ( .A(MUL_3_mult_17_n247), .B(MUL_3_mult_17_n225), 
        .CI(MUL_3_mult_17_n281), .CO(MUL_3_mult_17_n138), .S(
        MUL_3_mult_17_n139) );
  FA_X1 MUL_3_mult_17_U84 ( .A(MUL_3_mult_17_n236), .B(MUL_3_mult_17_n269), 
        .CI(MUL_3_mult_17_n258), .CO(MUL_3_mult_17_n136), .S(
        MUL_3_mult_17_n137) );
  FA_X1 MUL_3_mult_17_U83 ( .A(MUL_3_mult_17_n144), .B(MUL_3_mult_17_n146), 
        .CI(MUL_3_mult_17_n139), .CO(MUL_3_mult_17_n134), .S(
        MUL_3_mult_17_n135) );
  FA_X1 MUL_3_mult_17_U82 ( .A(MUL_3_mult_17_n142), .B(MUL_3_mult_17_n137), 
        .CI(MUL_3_mult_17_n135), .CO(MUL_3_mult_17_n132), .S(
        MUL_3_mult_17_n133) );
  HA_X1 MUL_3_mult_17_U81 ( .A(MUL_3_mult_17_n194), .B(MUL_3_mult_17_n224), 
        .CO(MUL_3_mult_17_n130), .S(MUL_3_mult_17_n131) );
  FA_X1 MUL_3_mult_17_U80 ( .A(MUL_3_mult_17_n235), .B(MUL_3_mult_17_n257), 
        .CI(MUL_3_mult_17_n280), .CO(MUL_3_mult_17_n128), .S(
        MUL_3_mult_17_n129) );
  FA_X1 MUL_3_mult_17_U79 ( .A(MUL_3_mult_17_n246), .B(MUL_3_mult_17_n268), 
        .CI(MUL_3_mult_17_n131), .CO(MUL_3_mult_17_n126), .S(
        MUL_3_mult_17_n127) );
  FA_X1 MUL_3_mult_17_U78 ( .A(MUL_3_mult_17_n136), .B(MUL_3_mult_17_n138), 
        .CI(MUL_3_mult_17_n129), .CO(MUL_3_mult_17_n124), .S(
        MUL_3_mult_17_n125) );
  FA_X1 MUL_3_mult_17_U77 ( .A(MUL_3_mult_17_n134), .B(MUL_3_mult_17_n127), 
        .CI(MUL_3_mult_17_n125), .CO(MUL_3_mult_17_n122), .S(
        MUL_3_mult_17_n123) );
  FA_X1 MUL_3_mult_17_U76 ( .A(MUL_3_mult_17_n234), .B(MUL_3_mult_17_n212), 
        .CI(MUL_3_mult_17_n279), .CO(MUL_3_mult_17_n120), .S(
        MUL_3_mult_17_n121) );
  FA_X1 MUL_3_mult_17_U75 ( .A(MUL_3_mult_17_n223), .B(MUL_3_mult_17_n267), 
        .CI(MUL_3_mult_17_n245), .CO(MUL_3_mult_17_n118), .S(
        MUL_3_mult_17_n119) );
  FA_X1 MUL_3_mult_17_U74 ( .A(MUL_3_mult_17_n130), .B(MUL_3_mult_17_n256), 
        .CI(MUL_3_mult_17_n128), .CO(MUL_3_mult_17_n116), .S(
        MUL_3_mult_17_n117) );
  FA_X1 MUL_3_mult_17_U73 ( .A(MUL_3_mult_17_n119), .B(MUL_3_mult_17_n121), 
        .CI(MUL_3_mult_17_n126), .CO(MUL_3_mult_17_n114), .S(
        MUL_3_mult_17_n115) );
  FA_X1 MUL_3_mult_17_U72 ( .A(MUL_3_mult_17_n117), .B(MUL_3_mult_17_n124), 
        .CI(MUL_3_mult_17_n115), .CO(MUL_3_mult_17_n112), .S(
        MUL_3_mult_17_n113) );
  FA_X1 MUL_3_mult_17_U69 ( .A(MUL_3_mult_17_n233), .B(MUL_3_mult_17_n244), 
        .CI(MUL_3_mult_17_n543), .CO(MUL_3_mult_17_n108), .S(
        MUL_3_mult_17_n109) );
  FA_X1 MUL_3_mult_17_U68 ( .A(MUL_3_mult_17_n193), .B(MUL_3_mult_17_n266), 
        .CI(MUL_3_mult_17_n255), .CO(MUL_3_mult_17_n106), .S(
        MUL_3_mult_17_n107) );
  FA_X1 MUL_3_mult_17_U67 ( .A(MUL_3_mult_17_n120), .B(MUL_3_mult_17_n111), 
        .CI(MUL_3_mult_17_n118), .CO(MUL_3_mult_17_n104), .S(
        MUL_3_mult_17_n105) );
  FA_X1 MUL_3_mult_17_U66 ( .A(MUL_3_mult_17_n109), .B(MUL_3_mult_17_n107), 
        .CI(MUL_3_mult_17_n116), .CO(MUL_3_mult_17_n102), .S(
        MUL_3_mult_17_n103) );
  FA_X1 MUL_3_mult_17_U65 ( .A(MUL_3_mult_17_n114), .B(MUL_3_mult_17_n105), 
        .CI(MUL_3_mult_17_n103), .CO(MUL_3_mult_17_n100), .S(
        MUL_3_mult_17_n101) );
  FA_X1 MUL_3_mult_17_U63 ( .A(MUL_3_mult_17_n210), .B(MUL_3_mult_17_n221), 
        .CI(MUL_3_mult_17_n254), .CO(MUL_3_mult_17_n96), .S(MUL_3_mult_17_n97)
         );
  FA_X1 MUL_3_mult_17_U62 ( .A(MUL_3_mult_17_n232), .B(MUL_3_mult_17_n243), 
        .CI(MUL_3_mult_17_n539), .CO(MUL_3_mult_17_n94), .S(MUL_3_mult_17_n95)
         );
  FA_X1 MUL_3_mult_17_U61 ( .A(MUL_3_mult_17_n108), .B(MUL_3_mult_17_n110), 
        .CI(MUL_3_mult_17_n106), .CO(MUL_3_mult_17_n92), .S(MUL_3_mult_17_n93)
         );
  FA_X1 MUL_3_mult_17_U60 ( .A(MUL_3_mult_17_n95), .B(MUL_3_mult_17_n97), .CI(
        MUL_3_mult_17_n104), .CO(MUL_3_mult_17_n90), .S(MUL_3_mult_17_n91) );
  FA_X1 MUL_3_mult_17_U59 ( .A(MUL_3_mult_17_n102), .B(MUL_3_mult_17_n93), 
        .CI(MUL_3_mult_17_n91), .CO(MUL_3_mult_17_n88), .S(MUL_3_mult_17_n89)
         );
  FA_X1 MUL_3_mult_17_U58 ( .A(MUL_3_mult_17_n98), .B(MUL_3_mult_17_n209), 
        .CI(MUL_3_mult_17_n540), .CO(MUL_3_mult_17_n86), .S(MUL_3_mult_17_n87)
         );
  FA_X1 MUL_3_mult_17_U57 ( .A(MUL_3_mult_17_n220), .B(MUL_3_mult_17_n253), 
        .CI(MUL_3_mult_17_n231), .CO(MUL_3_mult_17_n84), .S(MUL_3_mult_17_n85)
         );
  FA_X1 MUL_3_mult_17_U56 ( .A(MUL_3_mult_17_n96), .B(MUL_3_mult_17_n242), 
        .CI(MUL_3_mult_17_n94), .CO(MUL_3_mult_17_n82), .S(MUL_3_mult_17_n83)
         );
  FA_X1 MUL_3_mult_17_U55 ( .A(MUL_3_mult_17_n87), .B(MUL_3_mult_17_n85), .CI(
        MUL_3_mult_17_n92), .CO(MUL_3_mult_17_n80), .S(MUL_3_mult_17_n81) );
  FA_X1 MUL_3_mult_17_U54 ( .A(MUL_3_mult_17_n90), .B(MUL_3_mult_17_n83), .CI(
        MUL_3_mult_17_n81), .CO(MUL_3_mult_17_n78), .S(MUL_3_mult_17_n79) );
  FA_X1 MUL_3_mult_17_U52 ( .A(MUL_3_mult_17_n241), .B(MUL_3_mult_17_n219), 
        .CI(MUL_3_mult_17_n208), .CO(MUL_3_mult_17_n74), .S(MUL_3_mult_17_n75)
         );
  FA_X1 MUL_3_mult_17_U51 ( .A(MUL_3_mult_17_n534), .B(MUL_3_mult_17_n230), 
        .CI(MUL_3_mult_17_n86), .CO(MUL_3_mult_17_n72), .S(MUL_3_mult_17_n73)
         );
  FA_X1 MUL_3_mult_17_U50 ( .A(MUL_3_mult_17_n75), .B(MUL_3_mult_17_n84), .CI(
        MUL_3_mult_17_n82), .CO(MUL_3_mult_17_n70), .S(MUL_3_mult_17_n71) );
  FA_X1 MUL_3_mult_17_U49 ( .A(MUL_3_mult_17_n80), .B(MUL_3_mult_17_n73), .CI(
        MUL_3_mult_17_n71), .CO(MUL_3_mult_17_n68), .S(MUL_3_mult_17_n69) );
  FA_X1 MUL_3_mult_17_U48 ( .A(MUL_3_mult_17_n240), .B(MUL_3_mult_17_n207), 
        .CI(MUL_3_mult_17_n535), .CO(MUL_3_mult_17_n66), .S(MUL_3_mult_17_n67)
         );
  FA_X1 MUL_3_mult_17_U47 ( .A(MUL_3_mult_17_n218), .B(MUL_3_mult_17_n76), 
        .CI(MUL_3_mult_17_n229), .CO(MUL_3_mult_17_n64), .S(MUL_3_mult_17_n65)
         );
  FA_X1 MUL_3_mult_17_U46 ( .A(MUL_3_mult_17_n65), .B(MUL_3_mult_17_n74), .CI(
        MUL_3_mult_17_n67), .CO(MUL_3_mult_17_n62), .S(MUL_3_mult_17_n63) );
  FA_X1 MUL_3_mult_17_U45 ( .A(MUL_3_mult_17_n70), .B(MUL_3_mult_17_n72), .CI(
        MUL_3_mult_17_n63), .CO(MUL_3_mult_17_n60), .S(MUL_3_mult_17_n61) );
  FA_X1 MUL_3_mult_17_U43 ( .A(MUL_3_mult_17_n206), .B(MUL_3_mult_17_n217), 
        .CI(MUL_3_mult_17_n228), .CO(MUL_3_mult_17_n56), .S(MUL_3_mult_17_n57)
         );
  FA_X1 MUL_3_mult_17_U42 ( .A(MUL_3_mult_17_n66), .B(MUL_3_mult_17_n529), 
        .CI(MUL_3_mult_17_n64), .CO(MUL_3_mult_17_n54), .S(MUL_3_mult_17_n55)
         );
  FA_X1 MUL_3_mult_17_U41 ( .A(MUL_3_mult_17_n55), .B(MUL_3_mult_17_n57), .CI(
        MUL_3_mult_17_n62), .CO(MUL_3_mult_17_n52), .S(MUL_3_mult_17_n53) );
  FA_X1 MUL_3_mult_17_U40 ( .A(MUL_3_mult_17_n216), .B(MUL_3_mult_17_n205), 
        .CI(MUL_3_mult_17_n530), .CO(MUL_3_mult_17_n50), .S(MUL_3_mult_17_n51)
         );
  FA_X1 MUL_3_mult_17_U39 ( .A(MUL_3_mult_17_n58), .B(MUL_3_mult_17_n227), 
        .CI(MUL_3_mult_17_n56), .CO(MUL_3_mult_17_n48), .S(MUL_3_mult_17_n49)
         );
  FA_X1 MUL_3_mult_17_U38 ( .A(MUL_3_mult_17_n54), .B(MUL_3_mult_17_n51), .CI(
        MUL_3_mult_17_n49), .CO(MUL_3_mult_17_n46), .S(MUL_3_mult_17_n47) );
  FA_X1 MUL_3_mult_17_U36 ( .A(MUL_3_mult_17_n204), .B(MUL_3_mult_17_n215), 
        .CI(MUL_3_mult_17_n524), .CO(MUL_3_mult_17_n42), .S(MUL_3_mult_17_n43)
         );
  FA_X1 MUL_3_mult_17_U35 ( .A(MUL_3_mult_17_n43), .B(MUL_3_mult_17_n50), .CI(
        MUL_3_mult_17_n48), .CO(MUL_3_mult_17_n40), .S(MUL_3_mult_17_n41) );
  FA_X1 MUL_3_mult_17_U34 ( .A(MUL_3_mult_17_n214), .B(MUL_3_mult_17_n44), 
        .CI(MUL_3_mult_17_n525), .CO(MUL_3_mult_17_n38), .S(MUL_3_mult_17_n39)
         );
  FA_X1 MUL_3_mult_17_U33 ( .A(MUL_3_mult_17_n42), .B(MUL_3_mult_17_n203), 
        .CI(MUL_3_mult_17_n39), .CO(MUL_3_mult_17_n36), .S(MUL_3_mult_17_n37)
         );
  FA_X1 MUL_3_mult_17_U31 ( .A(MUL_3_mult_17_n518), .B(MUL_3_mult_17_n202), 
        .CI(MUL_3_mult_17_n38), .CO(MUL_3_mult_17_n32), .S(MUL_3_mult_17_n33)
         );
  FA_X1 MUL_3_mult_17_U30 ( .A(MUL_3_mult_17_n201), .B(MUL_3_mult_17_n34), 
        .CI(MUL_3_mult_17_n519), .CO(MUL_3_mult_17_n30), .S(MUL_3_mult_17_n31)
         );
  FA_X1 MUL_3_mult_17_U11 ( .A(MUL_3_mult_17_n53), .B(MUL_3_mult_17_n60), .CI(
        MUL_3_mult_17_n509), .CO(MUL_3_mult_17_n10), .S(
        TRUNCATED_MULT_RES_3__0_) );
  FA_X1 MUL_3_mult_17_U10 ( .A(MUL_3_mult_17_n47), .B(MUL_3_mult_17_n52), .CI(
        MUL_3_mult_17_n10), .CO(MUL_3_mult_17_n9), .S(TRUNCATED_MULT_RES_3__1_) );
  FA_X1 MUL_3_mult_17_U9 ( .A(MUL_3_mult_17_n41), .B(MUL_3_mult_17_n46), .CI(
        MUL_3_mult_17_n9), .CO(MUL_3_mult_17_n8), .S(TRUNCATED_MULT_RES_3__2_)
         );
  FA_X1 MUL_3_mult_17_U8 ( .A(MUL_3_mult_17_n37), .B(MUL_3_mult_17_n40), .CI(
        MUL_3_mult_17_n8), .CO(MUL_3_mult_17_n7), .S(TRUNCATED_MULT_RES_3__3_)
         );
  FA_X1 MUL_3_mult_17_U7 ( .A(MUL_3_mult_17_n33), .B(MUL_3_mult_17_n36), .CI(
        MUL_3_mult_17_n7), .CO(MUL_3_mult_17_n6), .S(TRUNCATED_MULT_RES_3__4_)
         );
  FA_X1 MUL_3_mult_17_U6 ( .A(MUL_3_mult_17_n32), .B(MUL_3_mult_17_n31), .CI(
        MUL_3_mult_17_n6), .CO(MUL_3_mult_17_n5), .S(TRUNCATED_MULT_RES_3__5_)
         );
  FA_X1 MUL_3_mult_17_U5 ( .A(MUL_3_mult_17_n30), .B(MUL_3_mult_17_n29), .CI(
        MUL_3_mult_17_n5), .CO(MUL_3_mult_17_n4), .S(TRUNCATED_MULT_RES_3__6_)
         );
  XOR2_X1 ADD_3_add_18_U2 ( .A(SUM_RESULTS_2__0_), .B(TRUNCATED_MULT_RES_3__0_), .Z(SUM_RESULTS_3__0_) );
  AND2_X1 ADD_3_add_18_U1 ( .A1(SUM_RESULTS_2__0_), .A2(
        TRUNCATED_MULT_RES_3__0_), .ZN(ADD_3_add_18_n1) );
  FA_X1 ADD_3_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_3__1_), .B(SUM_RESULTS_2__1_), .CI(ADD_3_add_18_n1), .CO(ADD_3_add_18_carry[2]), .S(SUM_RESULTS_3__1_) );
  FA_X1 ADD_3_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_3__2_), .B(SUM_RESULTS_2__2_), .CI(ADD_3_add_18_carry[2]), .CO(ADD_3_add_18_carry[3]), .S(SUM_RESULTS_3__2_) );
  FA_X1 ADD_3_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_3__3_), .B(SUM_RESULTS_2__3_), .CI(ADD_3_add_18_carry[3]), .CO(ADD_3_add_18_carry[4]), .S(SUM_RESULTS_3__3_) );
  FA_X1 ADD_3_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_3__4_), .B(SUM_RESULTS_2__4_), .CI(ADD_3_add_18_carry[4]), .CO(ADD_3_add_18_carry[5]), .S(SUM_RESULTS_3__4_) );
  FA_X1 ADD_3_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_3__5_), .B(SUM_RESULTS_2__5_), .CI(ADD_3_add_18_carry[5]), .CO(ADD_3_add_18_carry[6]), .S(SUM_RESULTS_3__5_) );
  FA_X1 ADD_3_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_3__6_), .B(SUM_RESULTS_2__6_), .CI(ADD_3_add_18_carry[6]), .CO(ADD_3_add_18_carry[7]), .S(SUM_RESULTS_3__6_) );
  FA_X1 ADD_3_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_3__7_), .B(SUM_RESULTS_2__7_), .CI(ADD_3_add_18_carry[7]), .CO(ADD_3_add_18_carry[8]), .S(SUM_RESULTS_3__7_) );
  FA_X1 ADD_3_add_18_U1_8 ( .A(TRUNCATED_MULT_RES_3__7_), .B(
        SUM_RESULTS_2__12_), .CI(ADD_3_add_18_carry[8]), .S(SUM_RESULTS_3__12_) );
  BUF_X1 SAMPLE_REG_4_U31 ( .A(n545), .Z(SAMPLE_REG_4_n42) );
  NAND2_X1 SAMPLE_REG_4_U30 ( .A1(SAMPLE_REG_4_n42), .A2(SAMPLES[91]), .ZN(
        SAMPLE_REG_4_n82) );
  OAI21_X1 SAMPLE_REG_4_U29 ( .B1(SAMPLE_REG_4_n69), .B2(SAMPLE_REG_4_n42), 
        .A(SAMPLE_REG_4_n82), .ZN(SAMPLE_REG_4_n56) );
  NAND2_X1 SAMPLE_REG_4_U28 ( .A1(SAMPLES[93]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n80) );
  OAI21_X1 SAMPLE_REG_4_U27 ( .B1(SAMPLE_REG_4_n67), .B2(SAMPLE_REG_4_n41), 
        .A(SAMPLE_REG_4_n80), .ZN(SAMPLE_REG_4_n54) );
  NAND2_X1 SAMPLE_REG_4_U26 ( .A1(SAMPLES[103]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n70) );
  OAI21_X1 SAMPLE_REG_4_U25 ( .B1(SAMPLE_REG_4_n57), .B2(SAMPLE_REG_4_n41), 
        .A(SAMPLE_REG_4_n70), .ZN(SAMPLE_REG_4_n44) );
  NAND2_X1 SAMPLE_REG_4_U24 ( .A1(SAMPLES[102]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n71) );
  OAI21_X1 SAMPLE_REG_4_U23 ( .B1(SAMPLE_REG_4_n58), .B2(SAMPLE_REG_4_n41), 
        .A(SAMPLE_REG_4_n71), .ZN(SAMPLE_REG_4_n45) );
  NAND2_X1 SAMPLE_REG_4_U22 ( .A1(SAMPLES[101]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n72) );
  OAI21_X1 SAMPLE_REG_4_U21 ( .B1(SAMPLE_REG_4_n59), .B2(SAMPLE_REG_4_n41), 
        .A(SAMPLE_REG_4_n72), .ZN(SAMPLE_REG_4_n46) );
  NAND2_X1 SAMPLE_REG_4_U20 ( .A1(SAMPLES[100]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n73) );
  OAI21_X1 SAMPLE_REG_4_U19 ( .B1(SAMPLE_REG_4_n60), .B2(SAMPLE_REG_4_n41), 
        .A(SAMPLE_REG_4_n73), .ZN(SAMPLE_REG_4_n47) );
  NAND2_X1 SAMPLE_REG_4_U18 ( .A1(SAMPLES[99]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n74) );
  OAI21_X1 SAMPLE_REG_4_U17 ( .B1(SAMPLE_REG_4_n61), .B2(SAMPLE_REG_4_n41), 
        .A(SAMPLE_REG_4_n74), .ZN(SAMPLE_REG_4_n48) );
  NAND2_X1 SAMPLE_REG_4_U16 ( .A1(SAMPLES[98]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n75) );
  OAI21_X1 SAMPLE_REG_4_U15 ( .B1(SAMPLE_REG_4_n62), .B2(SAMPLE_REG_4_n41), 
        .A(SAMPLE_REG_4_n75), .ZN(SAMPLE_REG_4_n49) );
  NAND2_X1 SAMPLE_REG_4_U14 ( .A1(SAMPLES[97]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n76) );
  OAI21_X1 SAMPLE_REG_4_U13 ( .B1(SAMPLE_REG_4_n63), .B2(SAMPLE_REG_4_n41), 
        .A(SAMPLE_REG_4_n76), .ZN(SAMPLE_REG_4_n50) );
  NAND2_X1 SAMPLE_REG_4_U12 ( .A1(SAMPLES[96]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n77) );
  OAI21_X1 SAMPLE_REG_4_U11 ( .B1(SAMPLE_REG_4_n64), .B2(SAMPLE_REG_4_n41), 
        .A(SAMPLE_REG_4_n77), .ZN(SAMPLE_REG_4_n51) );
  NAND2_X1 SAMPLE_REG_4_U10 ( .A1(SAMPLES[95]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n78) );
  OAI21_X1 SAMPLE_REG_4_U9 ( .B1(SAMPLE_REG_4_n65), .B2(SAMPLE_REG_4_n41), .A(
        SAMPLE_REG_4_n78), .ZN(SAMPLE_REG_4_n52) );
  NAND2_X1 SAMPLE_REG_4_U8 ( .A1(SAMPLES[94]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n79) );
  OAI21_X1 SAMPLE_REG_4_U7 ( .B1(SAMPLE_REG_4_n66), .B2(SAMPLE_REG_4_n41), .A(
        SAMPLE_REG_4_n79), .ZN(SAMPLE_REG_4_n53) );
  NAND2_X1 SAMPLE_REG_4_U6 ( .A1(SAMPLES[92]), .A2(SAMPLE_REG_4_n40), .ZN(
        SAMPLE_REG_4_n81) );
  OAI21_X1 SAMPLE_REG_4_U5 ( .B1(SAMPLE_REG_4_n68), .B2(SAMPLE_REG_4_n41), .A(
        SAMPLE_REG_4_n81), .ZN(SAMPLE_REG_4_n55) );
  BUF_X1 SAMPLE_REG_4_U4 ( .A(n545), .Z(SAMPLE_REG_4_n41) );
  BUF_X1 SAMPLE_REG_4_U3 ( .A(n545), .Z(SAMPLE_REG_4_n40) );
  BUF_X1 SAMPLE_REG_4_U2 ( .A(n546), .Z(SAMPLE_REG_4_n43) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_12_ ( .D(SAMPLE_REG_4_n44), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[90]), .QN(SAMPLE_REG_4_n57) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_2_ ( .D(SAMPLE_REG_4_n54), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[80]), .QN(SAMPLE_REG_4_n67) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_4_ ( .D(SAMPLE_REG_4_n52), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[82]), .QN(SAMPLE_REG_4_n65) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_6_ ( .D(SAMPLE_REG_4_n50), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[84]), .QN(SAMPLE_REG_4_n63) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_8_ ( .D(SAMPLE_REG_4_n48), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[86]), .QN(SAMPLE_REG_4_n61) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_10_ ( .D(SAMPLE_REG_4_n46), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[88]), .QN(SAMPLE_REG_4_n59) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_0_ ( .D(SAMPLE_REG_4_n56), .CK(CLK), .RN(n546), 
        .Q(SAMPLES[78]), .QN(SAMPLE_REG_4_n69) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_1_ ( .D(SAMPLE_REG_4_n55), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[79]), .QN(SAMPLE_REG_4_n68) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_3_ ( .D(SAMPLE_REG_4_n53), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[81]), .QN(SAMPLE_REG_4_n66) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_5_ ( .D(SAMPLE_REG_4_n51), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[83]), .QN(SAMPLE_REG_4_n64) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_7_ ( .D(SAMPLE_REG_4_n49), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[85]), .QN(SAMPLE_REG_4_n62) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_9_ ( .D(SAMPLE_REG_4_n47), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[87]), .QN(SAMPLE_REG_4_n60) );
  DFFR_X1 SAMPLE_REG_4_DOUT_reg_11_ ( .D(SAMPLE_REG_4_n45), .CK(CLK), .RN(
        SAMPLE_REG_4_n43), .Q(SAMPLES[89]), .QN(SAMPLE_REG_4_n58) );
  XOR2_X1 MUL_4_mult_17_U660 ( .A(SAMPLES[80]), .B(SAMPLES[79]), .Z(
        MUL_4_mult_17_n681) );
  NAND2_X1 MUL_4_mult_17_U659 ( .A1(SAMPLES[79]), .A2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n571) );
  XNOR2_X1 MUL_4_mult_17_U658 ( .A(A[80]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n570) );
  OAI22_X1 MUL_4_mult_17_U657 ( .A1(A[79]), .A2(MUL_4_mult_17_n571), .B1(
        MUL_4_mult_17_n570), .B2(MUL_4_mult_17_n544), .ZN(MUL_4_mult_17_n683)
         );
  XNOR2_X1 MUL_4_mult_17_U656 ( .A(MUL_4_mult_17_n541), .B(SAMPLES[80]), .ZN(
        MUL_4_mult_17_n682) );
  NAND2_X1 MUL_4_mult_17_U655 ( .A1(MUL_4_mult_17_n542), .A2(
        MUL_4_mult_17_n682), .ZN(MUL_4_mult_17_n552) );
  NAND3_X1 MUL_4_mult_17_U654 ( .A1(MUL_4_mult_17_n681), .A2(
        MUL_4_mult_17_n546), .A3(SAMPLES[81]), .ZN(MUL_4_mult_17_n680) );
  OAI21_X1 MUL_4_mult_17_U653 ( .B1(MUL_4_mult_17_n541), .B2(
        MUL_4_mult_17_n552), .A(MUL_4_mult_17_n680), .ZN(MUL_4_mult_17_n679)
         );
  AOI222_X1 MUL_4_mult_17_U652 ( .A1(MUL_4_mult_17_n506), .A2(
        MUL_4_mult_17_n171), .B1(MUL_4_mult_17_n679), .B2(MUL_4_mult_17_n506), 
        .C1(MUL_4_mult_17_n679), .C2(MUL_4_mult_17_n171), .ZN(
        MUL_4_mult_17_n678) );
  AOI222_X1 MUL_4_mult_17_U651 ( .A1(MUL_4_mult_17_n538), .A2(
        MUL_4_mult_17_n169), .B1(MUL_4_mult_17_n538), .B2(MUL_4_mult_17_n170), 
        .C1(MUL_4_mult_17_n170), .C2(MUL_4_mult_17_n169), .ZN(
        MUL_4_mult_17_n677) );
  AOI222_X1 MUL_4_mult_17_U650 ( .A1(MUL_4_mult_17_n537), .A2(
        MUL_4_mult_17_n165), .B1(MUL_4_mult_17_n537), .B2(MUL_4_mult_17_n168), 
        .C1(MUL_4_mult_17_n168), .C2(MUL_4_mult_17_n165), .ZN(
        MUL_4_mult_17_n676) );
  AOI222_X1 MUL_4_mult_17_U649 ( .A1(MUL_4_mult_17_n533), .A2(
        MUL_4_mult_17_n161), .B1(MUL_4_mult_17_n533), .B2(MUL_4_mult_17_n164), 
        .C1(MUL_4_mult_17_n164), .C2(MUL_4_mult_17_n161), .ZN(
        MUL_4_mult_17_n675) );
  AOI222_X1 MUL_4_mult_17_U648 ( .A1(MUL_4_mult_17_n532), .A2(
        MUL_4_mult_17_n155), .B1(MUL_4_mult_17_n532), .B2(MUL_4_mult_17_n160), 
        .C1(MUL_4_mult_17_n160), .C2(MUL_4_mult_17_n155), .ZN(
        MUL_4_mult_17_n674) );
  AOI222_X1 MUL_4_mult_17_U647 ( .A1(MUL_4_mult_17_n528), .A2(
        MUL_4_mult_17_n149), .B1(MUL_4_mult_17_n528), .B2(MUL_4_mult_17_n154), 
        .C1(MUL_4_mult_17_n154), .C2(MUL_4_mult_17_n149), .ZN(
        MUL_4_mult_17_n673) );
  AOI222_X1 MUL_4_mult_17_U646 ( .A1(MUL_4_mult_17_n527), .A2(
        MUL_4_mult_17_n141), .B1(MUL_4_mult_17_n527), .B2(MUL_4_mult_17_n148), 
        .C1(MUL_4_mult_17_n148), .C2(MUL_4_mult_17_n141), .ZN(
        MUL_4_mult_17_n672) );
  AOI222_X1 MUL_4_mult_17_U645 ( .A1(MUL_4_mult_17_n523), .A2(
        MUL_4_mult_17_n133), .B1(MUL_4_mult_17_n523), .B2(MUL_4_mult_17_n140), 
        .C1(MUL_4_mult_17_n140), .C2(MUL_4_mult_17_n133), .ZN(
        MUL_4_mult_17_n671) );
  AOI222_X1 MUL_4_mult_17_U644 ( .A1(MUL_4_mult_17_n522), .A2(
        MUL_4_mult_17_n123), .B1(MUL_4_mult_17_n522), .B2(MUL_4_mult_17_n132), 
        .C1(MUL_4_mult_17_n132), .C2(MUL_4_mult_17_n123), .ZN(
        MUL_4_mult_17_n670) );
  AOI222_X1 MUL_4_mult_17_U643 ( .A1(MUL_4_mult_17_n517), .A2(
        MUL_4_mult_17_n113), .B1(MUL_4_mult_17_n517), .B2(MUL_4_mult_17_n122), 
        .C1(MUL_4_mult_17_n122), .C2(MUL_4_mult_17_n113), .ZN(
        MUL_4_mult_17_n669) );
  AOI222_X1 MUL_4_mult_17_U642 ( .A1(MUL_4_mult_17_n515), .A2(
        MUL_4_mult_17_n101), .B1(MUL_4_mult_17_n515), .B2(MUL_4_mult_17_n112), 
        .C1(MUL_4_mult_17_n112), .C2(MUL_4_mult_17_n101), .ZN(
        MUL_4_mult_17_n668) );
  AOI222_X1 MUL_4_mult_17_U641 ( .A1(MUL_4_mult_17_n513), .A2(
        MUL_4_mult_17_n89), .B1(MUL_4_mult_17_n513), .B2(MUL_4_mult_17_n100), 
        .C1(MUL_4_mult_17_n100), .C2(MUL_4_mult_17_n89), .ZN(
        MUL_4_mult_17_n667) );
  AOI222_X1 MUL_4_mult_17_U640 ( .A1(MUL_4_mult_17_n512), .A2(
        MUL_4_mult_17_n79), .B1(MUL_4_mult_17_n512), .B2(MUL_4_mult_17_n88), 
        .C1(MUL_4_mult_17_n88), .C2(MUL_4_mult_17_n79), .ZN(MUL_4_mult_17_n666) );
  AOI222_X1 MUL_4_mult_17_U639 ( .A1(MUL_4_mult_17_n511), .A2(
        MUL_4_mult_17_n69), .B1(MUL_4_mult_17_n511), .B2(MUL_4_mult_17_n78), 
        .C1(MUL_4_mult_17_n78), .C2(MUL_4_mult_17_n69), .ZN(MUL_4_mult_17_n665) );
  AOI222_X1 MUL_4_mult_17_U638 ( .A1(MUL_4_mult_17_n510), .A2(
        MUL_4_mult_17_n61), .B1(MUL_4_mult_17_n510), .B2(MUL_4_mult_17_n68), 
        .C1(MUL_4_mult_17_n68), .C2(MUL_4_mult_17_n61), .ZN(MUL_4_mult_17_n664) );
  XNOR2_X1 MUL_4_mult_17_U637 ( .A(A[80]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n633) );
  XNOR2_X1 MUL_4_mult_17_U636 ( .A(MUL_4_mult_17_n521), .B(SAMPLES[88]), .ZN(
        MUL_4_mult_17_n663) );
  NAND2_X1 MUL_4_mult_17_U635 ( .A1(MUL_4_mult_17_n568), .A2(
        MUL_4_mult_17_n663), .ZN(MUL_4_mult_17_n567) );
  XNOR2_X1 MUL_4_mult_17_U634 ( .A(A[81]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n634) );
  OAI22_X1 MUL_4_mult_17_U633 ( .A1(MUL_4_mult_17_n633), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n634), 
        .ZN(MUL_4_mult_17_n662) );
  XNOR2_X1 MUL_4_mult_17_U632 ( .A(MUL_4_mult_17_n545), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n661) );
  XNOR2_X1 MUL_4_mult_17_U631 ( .A(SAMPLES[90]), .B(MUL_4_mult_17_n521), .ZN(
        MUL_4_mult_17_n549) );
  NAND2_X1 MUL_4_mult_17_U630 ( .A1(MUL_4_mult_17_n661), .A2(
        MUL_4_mult_17_n549), .ZN(MUL_4_mult_17_n660) );
  NAND2_X1 MUL_4_mult_17_U629 ( .A1(MUL_4_mult_17_n520), .A2(
        MUL_4_mult_17_n660), .ZN(MUL_4_mult_17_n110) );
  XNOR2_X1 MUL_4_mult_17_U628 ( .A(MUL_4_mult_17_n660), .B(MUL_4_mult_17_n520), 
        .ZN(MUL_4_mult_17_n111) );
  NOR3_X1 MUL_4_mult_17_U627 ( .A1(MUL_4_mult_17_n514), .A2(A[78]), .A3(
        MUL_4_mult_17_n516), .ZN(MUL_4_mult_17_n193) );
  OR3_X1 MUL_4_mult_17_U626 ( .A1(MUL_4_mult_17_n568), .A2(A[78]), .A3(
        MUL_4_mult_17_n521), .ZN(MUL_4_mult_17_n659) );
  OAI21_X1 MUL_4_mult_17_U625 ( .B1(MUL_4_mult_17_n521), .B2(
        MUL_4_mult_17_n567), .A(MUL_4_mult_17_n659), .ZN(MUL_4_mult_17_n194)
         );
  XNOR2_X1 MUL_4_mult_17_U624 ( .A(MUL_4_mult_17_n526), .B(SAMPLES[86]), .ZN(
        MUL_4_mult_17_n658) );
  NAND2_X1 MUL_4_mult_17_U623 ( .A1(MUL_4_mult_17_n564), .A2(
        MUL_4_mult_17_n658), .ZN(MUL_4_mult_17_n563) );
  OR3_X1 MUL_4_mult_17_U622 ( .A1(MUL_4_mult_17_n564), .A2(A[78]), .A3(
        MUL_4_mult_17_n526), .ZN(MUL_4_mult_17_n657) );
  OAI21_X1 MUL_4_mult_17_U621 ( .B1(MUL_4_mult_17_n526), .B2(
        MUL_4_mult_17_n563), .A(MUL_4_mult_17_n657), .ZN(MUL_4_mult_17_n195)
         );
  XNOR2_X1 MUL_4_mult_17_U620 ( .A(MUL_4_mult_17_n531), .B(SAMPLES[84]), .ZN(
        MUL_4_mult_17_n656) );
  NAND2_X1 MUL_4_mult_17_U619 ( .A1(MUL_4_mult_17_n560), .A2(
        MUL_4_mult_17_n656), .ZN(MUL_4_mult_17_n559) );
  OR3_X1 MUL_4_mult_17_U618 ( .A1(MUL_4_mult_17_n560), .A2(A[78]), .A3(
        MUL_4_mult_17_n531), .ZN(MUL_4_mult_17_n655) );
  OAI21_X1 MUL_4_mult_17_U617 ( .B1(MUL_4_mult_17_n531), .B2(
        MUL_4_mult_17_n559), .A(MUL_4_mult_17_n655), .ZN(MUL_4_mult_17_n196)
         );
  XNOR2_X1 MUL_4_mult_17_U616 ( .A(MUL_4_mult_17_n536), .B(SAMPLES[82]), .ZN(
        MUL_4_mult_17_n654) );
  NAND2_X1 MUL_4_mult_17_U615 ( .A1(MUL_4_mult_17_n556), .A2(
        MUL_4_mult_17_n654), .ZN(MUL_4_mult_17_n555) );
  OR3_X1 MUL_4_mult_17_U614 ( .A1(MUL_4_mult_17_n556), .A2(A[78]), .A3(
        MUL_4_mult_17_n536), .ZN(MUL_4_mult_17_n653) );
  OAI21_X1 MUL_4_mult_17_U613 ( .B1(MUL_4_mult_17_n536), .B2(
        MUL_4_mult_17_n555), .A(MUL_4_mult_17_n653), .ZN(MUL_4_mult_17_n197)
         );
  XNOR2_X1 MUL_4_mult_17_U612 ( .A(A[89]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n652) );
  NOR2_X1 MUL_4_mult_17_U611 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n652), .ZN(MUL_4_mult_17_n201) );
  XNOR2_X1 MUL_4_mult_17_U610 ( .A(A[88]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n651) );
  NOR2_X1 MUL_4_mult_17_U609 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n651), .ZN(MUL_4_mult_17_n202) );
  XNOR2_X1 MUL_4_mult_17_U608 ( .A(A[87]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n650) );
  NOR2_X1 MUL_4_mult_17_U607 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n650), .ZN(MUL_4_mult_17_n203) );
  XNOR2_X1 MUL_4_mult_17_U606 ( .A(A[86]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n649) );
  NOR2_X1 MUL_4_mult_17_U605 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n649), .ZN(MUL_4_mult_17_n204) );
  XNOR2_X1 MUL_4_mult_17_U604 ( .A(A[85]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n648) );
  NOR2_X1 MUL_4_mult_17_U603 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n648), .ZN(MUL_4_mult_17_n205) );
  XNOR2_X1 MUL_4_mult_17_U602 ( .A(A[84]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n647) );
  NOR2_X1 MUL_4_mult_17_U601 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n647), .ZN(MUL_4_mult_17_n206) );
  XNOR2_X1 MUL_4_mult_17_U600 ( .A(A[83]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n646) );
  NOR2_X1 MUL_4_mult_17_U599 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n646), .ZN(MUL_4_mult_17_n207) );
  XNOR2_X1 MUL_4_mult_17_U598 ( .A(A[82]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n645) );
  NOR2_X1 MUL_4_mult_17_U597 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n645), .ZN(MUL_4_mult_17_n208) );
  XNOR2_X1 MUL_4_mult_17_U596 ( .A(A[81]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n644) );
  NOR2_X1 MUL_4_mult_17_U595 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n644), .ZN(MUL_4_mult_17_n209) );
  XNOR2_X1 MUL_4_mult_17_U594 ( .A(A[80]), .B(SAMPLES[90]), .ZN(
        MUL_4_mult_17_n643) );
  NOR2_X1 MUL_4_mult_17_U593 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n643), .ZN(MUL_4_mult_17_n210) );
  NOR2_X1 MUL_4_mult_17_U592 ( .A1(MUL_4_mult_17_n516), .A2(MUL_4_mult_17_n546), .ZN(MUL_4_mult_17_n212) );
  XNOR2_X1 MUL_4_mult_17_U591 ( .A(A[90]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n569) );
  OAI22_X1 MUL_4_mult_17_U590 ( .A1(MUL_4_mult_17_n569), .A2(
        MUL_4_mult_17_n568), .B1(MUL_4_mult_17_n567), .B2(MUL_4_mult_17_n569), 
        .ZN(MUL_4_mult_17_n642) );
  XNOR2_X1 MUL_4_mult_17_U589 ( .A(A[88]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n641) );
  XNOR2_X1 MUL_4_mult_17_U588 ( .A(A[89]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n566) );
  OAI22_X1 MUL_4_mult_17_U587 ( .A1(MUL_4_mult_17_n641), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n566), 
        .ZN(MUL_4_mult_17_n214) );
  XNOR2_X1 MUL_4_mult_17_U586 ( .A(A[87]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n640) );
  OAI22_X1 MUL_4_mult_17_U585 ( .A1(MUL_4_mult_17_n640), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n641), 
        .ZN(MUL_4_mult_17_n215) );
  XNOR2_X1 MUL_4_mult_17_U584 ( .A(A[86]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n639) );
  OAI22_X1 MUL_4_mult_17_U583 ( .A1(MUL_4_mult_17_n639), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n640), 
        .ZN(MUL_4_mult_17_n216) );
  XNOR2_X1 MUL_4_mult_17_U582 ( .A(A[85]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n638) );
  OAI22_X1 MUL_4_mult_17_U581 ( .A1(MUL_4_mult_17_n638), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n639), 
        .ZN(MUL_4_mult_17_n217) );
  XNOR2_X1 MUL_4_mult_17_U580 ( .A(A[84]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n637) );
  OAI22_X1 MUL_4_mult_17_U579 ( .A1(MUL_4_mult_17_n637), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n638), 
        .ZN(MUL_4_mult_17_n218) );
  XNOR2_X1 MUL_4_mult_17_U578 ( .A(A[83]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n636) );
  OAI22_X1 MUL_4_mult_17_U577 ( .A1(MUL_4_mult_17_n636), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n637), 
        .ZN(MUL_4_mult_17_n219) );
  XNOR2_X1 MUL_4_mult_17_U576 ( .A(A[82]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n635) );
  OAI22_X1 MUL_4_mult_17_U575 ( .A1(MUL_4_mult_17_n635), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n636), 
        .ZN(MUL_4_mult_17_n220) );
  OAI22_X1 MUL_4_mult_17_U574 ( .A1(MUL_4_mult_17_n634), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n635), 
        .ZN(MUL_4_mult_17_n221) );
  XNOR2_X1 MUL_4_mult_17_U573 ( .A(A[79]), .B(SAMPLES[89]), .ZN(
        MUL_4_mult_17_n632) );
  OAI22_X1 MUL_4_mult_17_U572 ( .A1(MUL_4_mult_17_n632), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n633), 
        .ZN(MUL_4_mult_17_n223) );
  XNOR2_X1 MUL_4_mult_17_U571 ( .A(SAMPLES[89]), .B(A[78]), .ZN(
        MUL_4_mult_17_n631) );
  OAI22_X1 MUL_4_mult_17_U570 ( .A1(MUL_4_mult_17_n631), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n632), 
        .ZN(MUL_4_mult_17_n224) );
  NOR2_X1 MUL_4_mult_17_U569 ( .A1(MUL_4_mult_17_n568), .A2(MUL_4_mult_17_n546), .ZN(MUL_4_mult_17_n225) );
  XNOR2_X1 MUL_4_mult_17_U568 ( .A(A[90]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n565) );
  OAI22_X1 MUL_4_mult_17_U567 ( .A1(MUL_4_mult_17_n565), .A2(
        MUL_4_mult_17_n564), .B1(MUL_4_mult_17_n563), .B2(MUL_4_mult_17_n565), 
        .ZN(MUL_4_mult_17_n630) );
  XNOR2_X1 MUL_4_mult_17_U566 ( .A(A[88]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n629) );
  XNOR2_X1 MUL_4_mult_17_U565 ( .A(A[89]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n562) );
  OAI22_X1 MUL_4_mult_17_U564 ( .A1(MUL_4_mult_17_n629), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n562), 
        .ZN(MUL_4_mult_17_n227) );
  XNOR2_X1 MUL_4_mult_17_U563 ( .A(A[87]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n628) );
  OAI22_X1 MUL_4_mult_17_U562 ( .A1(MUL_4_mult_17_n628), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n629), 
        .ZN(MUL_4_mult_17_n228) );
  XNOR2_X1 MUL_4_mult_17_U561 ( .A(A[86]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n627) );
  OAI22_X1 MUL_4_mult_17_U560 ( .A1(MUL_4_mult_17_n627), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n628), 
        .ZN(MUL_4_mult_17_n229) );
  XNOR2_X1 MUL_4_mult_17_U559 ( .A(A[85]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n626) );
  OAI22_X1 MUL_4_mult_17_U558 ( .A1(MUL_4_mult_17_n626), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n627), 
        .ZN(MUL_4_mult_17_n230) );
  XNOR2_X1 MUL_4_mult_17_U557 ( .A(A[84]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n625) );
  OAI22_X1 MUL_4_mult_17_U556 ( .A1(MUL_4_mult_17_n625), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n626), 
        .ZN(MUL_4_mult_17_n231) );
  XNOR2_X1 MUL_4_mult_17_U555 ( .A(A[83]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n624) );
  OAI22_X1 MUL_4_mult_17_U554 ( .A1(MUL_4_mult_17_n624), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n625), 
        .ZN(MUL_4_mult_17_n232) );
  XNOR2_X1 MUL_4_mult_17_U553 ( .A(A[82]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n623) );
  OAI22_X1 MUL_4_mult_17_U552 ( .A1(MUL_4_mult_17_n623), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n624), 
        .ZN(MUL_4_mult_17_n233) );
  XNOR2_X1 MUL_4_mult_17_U551 ( .A(A[81]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n622) );
  OAI22_X1 MUL_4_mult_17_U550 ( .A1(MUL_4_mult_17_n622), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n623), 
        .ZN(MUL_4_mult_17_n234) );
  XNOR2_X1 MUL_4_mult_17_U549 ( .A(A[80]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n621) );
  OAI22_X1 MUL_4_mult_17_U548 ( .A1(MUL_4_mult_17_n621), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n622), 
        .ZN(MUL_4_mult_17_n235) );
  XNOR2_X1 MUL_4_mult_17_U547 ( .A(A[79]), .B(SAMPLES[87]), .ZN(
        MUL_4_mult_17_n620) );
  OAI22_X1 MUL_4_mult_17_U546 ( .A1(MUL_4_mult_17_n620), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n621), 
        .ZN(MUL_4_mult_17_n236) );
  XNOR2_X1 MUL_4_mult_17_U545 ( .A(SAMPLES[87]), .B(A[78]), .ZN(
        MUL_4_mult_17_n619) );
  OAI22_X1 MUL_4_mult_17_U544 ( .A1(MUL_4_mult_17_n619), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n620), 
        .ZN(MUL_4_mult_17_n237) );
  NOR2_X1 MUL_4_mult_17_U543 ( .A1(MUL_4_mult_17_n564), .A2(MUL_4_mult_17_n546), .ZN(MUL_4_mult_17_n238) );
  XNOR2_X1 MUL_4_mult_17_U542 ( .A(A[90]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n561) );
  OAI22_X1 MUL_4_mult_17_U541 ( .A1(MUL_4_mult_17_n561), .A2(
        MUL_4_mult_17_n560), .B1(MUL_4_mult_17_n559), .B2(MUL_4_mult_17_n561), 
        .ZN(MUL_4_mult_17_n618) );
  XNOR2_X1 MUL_4_mult_17_U540 ( .A(A[88]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n617) );
  XNOR2_X1 MUL_4_mult_17_U539 ( .A(A[89]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n558) );
  OAI22_X1 MUL_4_mult_17_U538 ( .A1(MUL_4_mult_17_n617), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n558), 
        .ZN(MUL_4_mult_17_n240) );
  XNOR2_X1 MUL_4_mult_17_U537 ( .A(A[87]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n616) );
  OAI22_X1 MUL_4_mult_17_U536 ( .A1(MUL_4_mult_17_n616), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n617), 
        .ZN(MUL_4_mult_17_n241) );
  XNOR2_X1 MUL_4_mult_17_U535 ( .A(A[86]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n615) );
  OAI22_X1 MUL_4_mult_17_U534 ( .A1(MUL_4_mult_17_n615), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n616), 
        .ZN(MUL_4_mult_17_n242) );
  XNOR2_X1 MUL_4_mult_17_U533 ( .A(A[85]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n614) );
  OAI22_X1 MUL_4_mult_17_U532 ( .A1(MUL_4_mult_17_n614), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n615), 
        .ZN(MUL_4_mult_17_n243) );
  XNOR2_X1 MUL_4_mult_17_U531 ( .A(A[84]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n613) );
  OAI22_X1 MUL_4_mult_17_U530 ( .A1(MUL_4_mult_17_n613), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n614), 
        .ZN(MUL_4_mult_17_n244) );
  XNOR2_X1 MUL_4_mult_17_U529 ( .A(A[83]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n612) );
  OAI22_X1 MUL_4_mult_17_U528 ( .A1(MUL_4_mult_17_n612), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n613), 
        .ZN(MUL_4_mult_17_n245) );
  XNOR2_X1 MUL_4_mult_17_U527 ( .A(A[82]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n611) );
  OAI22_X1 MUL_4_mult_17_U526 ( .A1(MUL_4_mult_17_n611), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n612), 
        .ZN(MUL_4_mult_17_n246) );
  XNOR2_X1 MUL_4_mult_17_U525 ( .A(A[81]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n610) );
  OAI22_X1 MUL_4_mult_17_U524 ( .A1(MUL_4_mult_17_n610), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n611), 
        .ZN(MUL_4_mult_17_n247) );
  XNOR2_X1 MUL_4_mult_17_U523 ( .A(A[80]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n609) );
  OAI22_X1 MUL_4_mult_17_U522 ( .A1(MUL_4_mult_17_n609), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n610), 
        .ZN(MUL_4_mult_17_n248) );
  XNOR2_X1 MUL_4_mult_17_U521 ( .A(A[79]), .B(SAMPLES[85]), .ZN(
        MUL_4_mult_17_n608) );
  OAI22_X1 MUL_4_mult_17_U520 ( .A1(MUL_4_mult_17_n608), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n609), 
        .ZN(MUL_4_mult_17_n249) );
  XNOR2_X1 MUL_4_mult_17_U519 ( .A(SAMPLES[85]), .B(A[78]), .ZN(
        MUL_4_mult_17_n607) );
  OAI22_X1 MUL_4_mult_17_U518 ( .A1(MUL_4_mult_17_n607), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n608), 
        .ZN(MUL_4_mult_17_n250) );
  NOR2_X1 MUL_4_mult_17_U517 ( .A1(MUL_4_mult_17_n560), .A2(MUL_4_mult_17_n546), .ZN(MUL_4_mult_17_n251) );
  XNOR2_X1 MUL_4_mult_17_U516 ( .A(A[90]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n557) );
  OAI22_X1 MUL_4_mult_17_U515 ( .A1(MUL_4_mult_17_n557), .A2(
        MUL_4_mult_17_n556), .B1(MUL_4_mult_17_n555), .B2(MUL_4_mult_17_n557), 
        .ZN(MUL_4_mult_17_n606) );
  XNOR2_X1 MUL_4_mult_17_U514 ( .A(A[88]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n605) );
  XNOR2_X1 MUL_4_mult_17_U513 ( .A(A[89]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n554) );
  OAI22_X1 MUL_4_mult_17_U512 ( .A1(MUL_4_mult_17_n605), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n554), 
        .ZN(MUL_4_mult_17_n253) );
  XNOR2_X1 MUL_4_mult_17_U511 ( .A(A[87]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n604) );
  OAI22_X1 MUL_4_mult_17_U510 ( .A1(MUL_4_mult_17_n604), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n605), 
        .ZN(MUL_4_mult_17_n254) );
  XNOR2_X1 MUL_4_mult_17_U509 ( .A(A[86]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n603) );
  OAI22_X1 MUL_4_mult_17_U508 ( .A1(MUL_4_mult_17_n603), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n604), 
        .ZN(MUL_4_mult_17_n255) );
  XNOR2_X1 MUL_4_mult_17_U507 ( .A(A[85]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n602) );
  OAI22_X1 MUL_4_mult_17_U506 ( .A1(MUL_4_mult_17_n602), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n603), 
        .ZN(MUL_4_mult_17_n256) );
  XNOR2_X1 MUL_4_mult_17_U505 ( .A(A[84]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n601) );
  OAI22_X1 MUL_4_mult_17_U504 ( .A1(MUL_4_mult_17_n601), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n602), 
        .ZN(MUL_4_mult_17_n257) );
  XNOR2_X1 MUL_4_mult_17_U503 ( .A(A[83]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n600) );
  OAI22_X1 MUL_4_mult_17_U502 ( .A1(MUL_4_mult_17_n600), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n601), 
        .ZN(MUL_4_mult_17_n258) );
  XNOR2_X1 MUL_4_mult_17_U501 ( .A(A[82]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n599) );
  OAI22_X1 MUL_4_mult_17_U500 ( .A1(MUL_4_mult_17_n599), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n600), 
        .ZN(MUL_4_mult_17_n259) );
  XNOR2_X1 MUL_4_mult_17_U499 ( .A(A[81]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n598) );
  OAI22_X1 MUL_4_mult_17_U498 ( .A1(MUL_4_mult_17_n598), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n599), 
        .ZN(MUL_4_mult_17_n260) );
  XNOR2_X1 MUL_4_mult_17_U497 ( .A(A[80]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n597) );
  OAI22_X1 MUL_4_mult_17_U496 ( .A1(MUL_4_mult_17_n597), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n598), 
        .ZN(MUL_4_mult_17_n261) );
  XNOR2_X1 MUL_4_mult_17_U495 ( .A(A[79]), .B(SAMPLES[83]), .ZN(
        MUL_4_mult_17_n596) );
  OAI22_X1 MUL_4_mult_17_U494 ( .A1(MUL_4_mult_17_n596), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n597), 
        .ZN(MUL_4_mult_17_n262) );
  XNOR2_X1 MUL_4_mult_17_U493 ( .A(SAMPLES[83]), .B(A[78]), .ZN(
        MUL_4_mult_17_n595) );
  OAI22_X1 MUL_4_mult_17_U492 ( .A1(MUL_4_mult_17_n595), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n596), 
        .ZN(MUL_4_mult_17_n263) );
  NOR2_X1 MUL_4_mult_17_U491 ( .A1(MUL_4_mult_17_n556), .A2(MUL_4_mult_17_n546), .ZN(MUL_4_mult_17_n264) );
  XOR2_X1 MUL_4_mult_17_U490 ( .A(A[90]), .B(MUL_4_mult_17_n541), .Z(
        MUL_4_mult_17_n553) );
  OAI22_X1 MUL_4_mult_17_U489 ( .A1(MUL_4_mult_17_n553), .A2(
        MUL_4_mult_17_n542), .B1(MUL_4_mult_17_n552), .B2(MUL_4_mult_17_n553), 
        .ZN(MUL_4_mult_17_n594) );
  XNOR2_X1 MUL_4_mult_17_U488 ( .A(A[88]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n593) );
  XNOR2_X1 MUL_4_mult_17_U487 ( .A(A[89]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n551) );
  OAI22_X1 MUL_4_mult_17_U486 ( .A1(MUL_4_mult_17_n593), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n551), 
        .ZN(MUL_4_mult_17_n266) );
  XNOR2_X1 MUL_4_mult_17_U485 ( .A(A[87]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n592) );
  OAI22_X1 MUL_4_mult_17_U484 ( .A1(MUL_4_mult_17_n592), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n593), 
        .ZN(MUL_4_mult_17_n267) );
  XNOR2_X1 MUL_4_mult_17_U483 ( .A(A[86]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n591) );
  OAI22_X1 MUL_4_mult_17_U482 ( .A1(MUL_4_mult_17_n591), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n592), 
        .ZN(MUL_4_mult_17_n268) );
  XNOR2_X1 MUL_4_mult_17_U481 ( .A(A[85]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n590) );
  OAI22_X1 MUL_4_mult_17_U480 ( .A1(MUL_4_mult_17_n590), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n591), 
        .ZN(MUL_4_mult_17_n269) );
  XNOR2_X1 MUL_4_mult_17_U479 ( .A(A[84]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n589) );
  OAI22_X1 MUL_4_mult_17_U478 ( .A1(MUL_4_mult_17_n589), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n590), 
        .ZN(MUL_4_mult_17_n270) );
  XNOR2_X1 MUL_4_mult_17_U477 ( .A(A[83]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n588) );
  OAI22_X1 MUL_4_mult_17_U476 ( .A1(MUL_4_mult_17_n588), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n589), 
        .ZN(MUL_4_mult_17_n271) );
  XNOR2_X1 MUL_4_mult_17_U475 ( .A(A[82]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n587) );
  OAI22_X1 MUL_4_mult_17_U474 ( .A1(MUL_4_mult_17_n587), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n588), 
        .ZN(MUL_4_mult_17_n272) );
  XNOR2_X1 MUL_4_mult_17_U473 ( .A(A[81]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n586) );
  OAI22_X1 MUL_4_mult_17_U472 ( .A1(MUL_4_mult_17_n586), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n587), 
        .ZN(MUL_4_mult_17_n273) );
  XNOR2_X1 MUL_4_mult_17_U471 ( .A(A[80]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n585) );
  OAI22_X1 MUL_4_mult_17_U470 ( .A1(MUL_4_mult_17_n585), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n586), 
        .ZN(MUL_4_mult_17_n274) );
  XNOR2_X1 MUL_4_mult_17_U469 ( .A(A[79]), .B(SAMPLES[81]), .ZN(
        MUL_4_mult_17_n584) );
  OAI22_X1 MUL_4_mult_17_U468 ( .A1(MUL_4_mult_17_n584), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n585), 
        .ZN(MUL_4_mult_17_n275) );
  XNOR2_X1 MUL_4_mult_17_U467 ( .A(SAMPLES[81]), .B(A[78]), .ZN(
        MUL_4_mult_17_n583) );
  OAI22_X1 MUL_4_mult_17_U466 ( .A1(MUL_4_mult_17_n583), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n584), 
        .ZN(MUL_4_mult_17_n276) );
  XNOR2_X1 MUL_4_mult_17_U465 ( .A(A[90]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n581) );
  OAI22_X1 MUL_4_mult_17_U464 ( .A1(MUL_4_mult_17_n544), .A2(
        MUL_4_mult_17_n581), .B1(MUL_4_mult_17_n571), .B2(MUL_4_mult_17_n581), 
        .ZN(MUL_4_mult_17_n582) );
  XNOR2_X1 MUL_4_mult_17_U463 ( .A(A[89]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n580) );
  OAI22_X1 MUL_4_mult_17_U462 ( .A1(MUL_4_mult_17_n580), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n581), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n279) );
  XNOR2_X1 MUL_4_mult_17_U461 ( .A(A[88]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n579) );
  OAI22_X1 MUL_4_mult_17_U460 ( .A1(MUL_4_mult_17_n579), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n580), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n280) );
  XNOR2_X1 MUL_4_mult_17_U459 ( .A(A[87]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n578) );
  OAI22_X1 MUL_4_mult_17_U458 ( .A1(MUL_4_mult_17_n578), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n579), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n281) );
  XNOR2_X1 MUL_4_mult_17_U457 ( .A(A[86]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n577) );
  OAI22_X1 MUL_4_mult_17_U456 ( .A1(MUL_4_mult_17_n577), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n578), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n282) );
  XNOR2_X1 MUL_4_mult_17_U455 ( .A(A[85]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n576) );
  OAI22_X1 MUL_4_mult_17_U454 ( .A1(MUL_4_mult_17_n576), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n577), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n283) );
  XNOR2_X1 MUL_4_mult_17_U453 ( .A(A[84]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n575) );
  OAI22_X1 MUL_4_mult_17_U452 ( .A1(MUL_4_mult_17_n575), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n576), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n284) );
  XNOR2_X1 MUL_4_mult_17_U451 ( .A(A[83]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n574) );
  OAI22_X1 MUL_4_mult_17_U450 ( .A1(MUL_4_mult_17_n574), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n575), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n285) );
  XNOR2_X1 MUL_4_mult_17_U449 ( .A(A[82]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n573) );
  OAI22_X1 MUL_4_mult_17_U448 ( .A1(MUL_4_mult_17_n573), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n574), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n286) );
  XNOR2_X1 MUL_4_mult_17_U447 ( .A(A[81]), .B(SAMPLES[79]), .ZN(
        MUL_4_mult_17_n572) );
  OAI22_X1 MUL_4_mult_17_U446 ( .A1(MUL_4_mult_17_n572), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n573), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n287) );
  OAI22_X1 MUL_4_mult_17_U445 ( .A1(MUL_4_mult_17_n570), .A2(
        MUL_4_mult_17_n571), .B1(MUL_4_mult_17_n572), .B2(MUL_4_mult_17_n544), 
        .ZN(MUL_4_mult_17_n288) );
  XNOR2_X1 MUL_4_mult_17_U444 ( .A(A[90]), .B(MUL_4_mult_17_n514), .ZN(
        MUL_4_mult_17_n550) );
  NAND2_X1 MUL_4_mult_17_U443 ( .A1(MUL_4_mult_17_n550), .A2(
        MUL_4_mult_17_n549), .ZN(MUL_4_mult_17_n29) );
  OAI22_X1 MUL_4_mult_17_U442 ( .A1(MUL_4_mult_17_n566), .A2(
        MUL_4_mult_17_n567), .B1(MUL_4_mult_17_n568), .B2(MUL_4_mult_17_n569), 
        .ZN(MUL_4_mult_17_n34) );
  OAI22_X1 MUL_4_mult_17_U441 ( .A1(MUL_4_mult_17_n562), .A2(
        MUL_4_mult_17_n563), .B1(MUL_4_mult_17_n564), .B2(MUL_4_mult_17_n565), 
        .ZN(MUL_4_mult_17_n44) );
  OAI22_X1 MUL_4_mult_17_U440 ( .A1(MUL_4_mult_17_n558), .A2(
        MUL_4_mult_17_n559), .B1(MUL_4_mult_17_n560), .B2(MUL_4_mult_17_n561), 
        .ZN(MUL_4_mult_17_n58) );
  OAI22_X1 MUL_4_mult_17_U439 ( .A1(MUL_4_mult_17_n554), .A2(
        MUL_4_mult_17_n555), .B1(MUL_4_mult_17_n556), .B2(MUL_4_mult_17_n557), 
        .ZN(MUL_4_mult_17_n76) );
  OAI22_X1 MUL_4_mult_17_U438 ( .A1(MUL_4_mult_17_n551), .A2(
        MUL_4_mult_17_n552), .B1(MUL_4_mult_17_n542), .B2(MUL_4_mult_17_n553), 
        .ZN(MUL_4_mult_17_n98) );
  NOR2_X1 MUL_4_mult_17_U437 ( .A1(MUL_4_mult_17_n544), .A2(MUL_4_mult_17_n546), .ZN(MUL_4_O_0_) );
  XOR2_X1 MUL_4_mult_17_U436 ( .A(MUL_4_mult_17_n29), .B(MUL_4_mult_17_n4), 
        .Z(MUL_4_mult_17_n547) );
  AND2_X1 MUL_4_mult_17_U435 ( .A1(MUL_4_mult_17_n549), .A2(MUL_4_mult_17_n550), .ZN(MUL_4_mult_17_n548) );
  XOR2_X1 MUL_4_mult_17_U434 ( .A(MUL_4_mult_17_n547), .B(MUL_4_mult_17_n548), 
        .Z(TRUNCATED_MULT_RES_4__7_) );
  XOR2_X2 MUL_4_mult_17_U433 ( .A(SAMPLES[88]), .B(MUL_4_mult_17_n526), .Z(
        MUL_4_mult_17_n568) );
  XOR2_X2 MUL_4_mult_17_U432 ( .A(SAMPLES[86]), .B(MUL_4_mult_17_n531), .Z(
        MUL_4_mult_17_n564) );
  XOR2_X2 MUL_4_mult_17_U431 ( .A(SAMPLES[84]), .B(MUL_4_mult_17_n536), .Z(
        MUL_4_mult_17_n560) );
  XOR2_X2 MUL_4_mult_17_U430 ( .A(SAMPLES[82]), .B(MUL_4_mult_17_n541), .Z(
        MUL_4_mult_17_n556) );
  INV_X1 MUL_4_mult_17_U429 ( .A(MUL_4_mult_17_n642), .ZN(MUL_4_mult_17_n519)
         );
  INV_X1 MUL_4_mult_17_U428 ( .A(MUL_4_mult_17_n34), .ZN(MUL_4_mult_17_n518)
         );
  INV_X1 MUL_4_mult_17_U427 ( .A(MUL_4_mult_17_n594), .ZN(MUL_4_mult_17_n540)
         );
  INV_X1 MUL_4_mult_17_U426 ( .A(SAMPLES[90]), .ZN(MUL_4_mult_17_n514) );
  INV_X1 MUL_4_mult_17_U425 ( .A(SAMPLES[89]), .ZN(MUL_4_mult_17_n521) );
  INV_X1 MUL_4_mult_17_U424 ( .A(SAMPLES[87]), .ZN(MUL_4_mult_17_n526) );
  INV_X1 MUL_4_mult_17_U423 ( .A(A[79]), .ZN(MUL_4_mult_17_n545) );
  AND3_X1 MUL_4_mult_17_U422 ( .A1(MUL_4_mult_17_n683), .A2(MUL_4_mult_17_n545), .A3(SAMPLES[79]), .ZN(MUL_4_mult_17_n508) );
  AND2_X1 MUL_4_mult_17_U421 ( .A1(MUL_4_mult_17_n681), .A2(MUL_4_mult_17_n683), .ZN(MUL_4_mult_17_n507) );
  MUX2_X1 MUL_4_mult_17_U420 ( .A(MUL_4_mult_17_n507), .B(MUL_4_mult_17_n508), 
        .S(MUL_4_mult_17_n546), .Z(MUL_4_mult_17_n506) );
  INV_X1 MUL_4_mult_17_U419 ( .A(A[78]), .ZN(MUL_4_mult_17_n546) );
  INV_X1 MUL_4_mult_17_U418 ( .A(SAMPLES[85]), .ZN(MUL_4_mult_17_n531) );
  INV_X1 MUL_4_mult_17_U417 ( .A(SAMPLES[83]), .ZN(MUL_4_mult_17_n536) );
  INV_X1 MUL_4_mult_17_U416 ( .A(SAMPLES[81]), .ZN(MUL_4_mult_17_n541) );
  INV_X1 MUL_4_mult_17_U415 ( .A(SAMPLES[78]), .ZN(MUL_4_mult_17_n544) );
  INV_X1 MUL_4_mult_17_U414 ( .A(MUL_4_mult_17_n630), .ZN(MUL_4_mult_17_n525)
         );
  INV_X1 MUL_4_mult_17_U413 ( .A(MUL_4_mult_17_n618), .ZN(MUL_4_mult_17_n530)
         );
  INV_X1 MUL_4_mult_17_U412 ( .A(MUL_4_mult_17_n44), .ZN(MUL_4_mult_17_n524)
         );
  INV_X1 MUL_4_mult_17_U411 ( .A(MUL_4_mult_17_n662), .ZN(MUL_4_mult_17_n520)
         );
  INV_X1 MUL_4_mult_17_U410 ( .A(MUL_4_mult_17_n76), .ZN(MUL_4_mult_17_n534)
         );
  INV_X1 MUL_4_mult_17_U409 ( .A(MUL_4_mult_17_n606), .ZN(MUL_4_mult_17_n535)
         );
  INV_X1 MUL_4_mult_17_U408 ( .A(MUL_4_mult_17_n98), .ZN(MUL_4_mult_17_n539)
         );
  INV_X1 MUL_4_mult_17_U407 ( .A(MUL_4_mult_17_n582), .ZN(MUL_4_mult_17_n543)
         );
  INV_X1 MUL_4_mult_17_U406 ( .A(MUL_4_mult_17_n549), .ZN(MUL_4_mult_17_n516)
         );
  INV_X1 MUL_4_mult_17_U405 ( .A(MUL_4_mult_17_n681), .ZN(MUL_4_mult_17_n542)
         );
  INV_X1 MUL_4_mult_17_U404 ( .A(MUL_4_mult_17_n678), .ZN(MUL_4_mult_17_n538)
         );
  INV_X1 MUL_4_mult_17_U403 ( .A(MUL_4_mult_17_n677), .ZN(MUL_4_mult_17_n537)
         );
  INV_X1 MUL_4_mult_17_U402 ( .A(MUL_4_mult_17_n58), .ZN(MUL_4_mult_17_n529)
         );
  INV_X1 MUL_4_mult_17_U401 ( .A(MUL_4_mult_17_n674), .ZN(MUL_4_mult_17_n528)
         );
  INV_X1 MUL_4_mult_17_U400 ( .A(MUL_4_mult_17_n673), .ZN(MUL_4_mult_17_n527)
         );
  INV_X1 MUL_4_mult_17_U399 ( .A(MUL_4_mult_17_n676), .ZN(MUL_4_mult_17_n533)
         );
  INV_X1 MUL_4_mult_17_U398 ( .A(MUL_4_mult_17_n675), .ZN(MUL_4_mult_17_n532)
         );
  INV_X1 MUL_4_mult_17_U397 ( .A(MUL_4_mult_17_n664), .ZN(MUL_4_mult_17_n509)
         );
  INV_X1 MUL_4_mult_17_U396 ( .A(MUL_4_mult_17_n666), .ZN(MUL_4_mult_17_n511)
         );
  INV_X1 MUL_4_mult_17_U395 ( .A(MUL_4_mult_17_n665), .ZN(MUL_4_mult_17_n510)
         );
  INV_X1 MUL_4_mult_17_U394 ( .A(MUL_4_mult_17_n670), .ZN(MUL_4_mult_17_n517)
         );
  INV_X1 MUL_4_mult_17_U393 ( .A(MUL_4_mult_17_n669), .ZN(MUL_4_mult_17_n515)
         );
  INV_X1 MUL_4_mult_17_U392 ( .A(MUL_4_mult_17_n668), .ZN(MUL_4_mult_17_n513)
         );
  INV_X1 MUL_4_mult_17_U391 ( .A(MUL_4_mult_17_n667), .ZN(MUL_4_mult_17_n512)
         );
  INV_X1 MUL_4_mult_17_U390 ( .A(MUL_4_mult_17_n672), .ZN(MUL_4_mult_17_n523)
         );
  INV_X1 MUL_4_mult_17_U389 ( .A(MUL_4_mult_17_n671), .ZN(MUL_4_mult_17_n522)
         );
  HA_X1 MUL_4_mult_17_U101 ( .A(MUL_4_mult_17_n276), .B(MUL_4_mult_17_n288), 
        .CO(MUL_4_mult_17_n170), .S(MUL_4_mult_17_n171) );
  FA_X1 MUL_4_mult_17_U100 ( .A(MUL_4_mult_17_n287), .B(MUL_4_mult_17_n264), 
        .CI(MUL_4_mult_17_n275), .CO(MUL_4_mult_17_n168), .S(
        MUL_4_mult_17_n169) );
  HA_X1 MUL_4_mult_17_U99 ( .A(MUL_4_mult_17_n197), .B(MUL_4_mult_17_n263), 
        .CO(MUL_4_mult_17_n166), .S(MUL_4_mult_17_n167) );
  FA_X1 MUL_4_mult_17_U98 ( .A(MUL_4_mult_17_n274), .B(MUL_4_mult_17_n286), 
        .CI(MUL_4_mult_17_n167), .CO(MUL_4_mult_17_n164), .S(
        MUL_4_mult_17_n165) );
  FA_X1 MUL_4_mult_17_U97 ( .A(MUL_4_mult_17_n285), .B(MUL_4_mult_17_n251), 
        .CI(MUL_4_mult_17_n273), .CO(MUL_4_mult_17_n162), .S(
        MUL_4_mult_17_n163) );
  FA_X1 MUL_4_mult_17_U96 ( .A(MUL_4_mult_17_n166), .B(MUL_4_mult_17_n262), 
        .CI(MUL_4_mult_17_n163), .CO(MUL_4_mult_17_n160), .S(
        MUL_4_mult_17_n161) );
  HA_X1 MUL_4_mult_17_U95 ( .A(MUL_4_mult_17_n196), .B(MUL_4_mult_17_n250), 
        .CO(MUL_4_mult_17_n158), .S(MUL_4_mult_17_n159) );
  FA_X1 MUL_4_mult_17_U94 ( .A(MUL_4_mult_17_n261), .B(MUL_4_mult_17_n284), 
        .CI(MUL_4_mult_17_n272), .CO(MUL_4_mult_17_n156), .S(
        MUL_4_mult_17_n157) );
  FA_X1 MUL_4_mult_17_U93 ( .A(MUL_4_mult_17_n162), .B(MUL_4_mult_17_n159), 
        .CI(MUL_4_mult_17_n157), .CO(MUL_4_mult_17_n154), .S(
        MUL_4_mult_17_n155) );
  FA_X1 MUL_4_mult_17_U92 ( .A(MUL_4_mult_17_n260), .B(MUL_4_mult_17_n238), 
        .CI(MUL_4_mult_17_n283), .CO(MUL_4_mult_17_n152), .S(
        MUL_4_mult_17_n153) );
  FA_X1 MUL_4_mult_17_U91 ( .A(MUL_4_mult_17_n249), .B(MUL_4_mult_17_n271), 
        .CI(MUL_4_mult_17_n158), .CO(MUL_4_mult_17_n150), .S(
        MUL_4_mult_17_n151) );
  FA_X1 MUL_4_mult_17_U90 ( .A(MUL_4_mult_17_n153), .B(MUL_4_mult_17_n156), 
        .CI(MUL_4_mult_17_n151), .CO(MUL_4_mult_17_n148), .S(
        MUL_4_mult_17_n149) );
  HA_X1 MUL_4_mult_17_U89 ( .A(MUL_4_mult_17_n195), .B(MUL_4_mult_17_n237), 
        .CO(MUL_4_mult_17_n146), .S(MUL_4_mult_17_n147) );
  FA_X1 MUL_4_mult_17_U88 ( .A(MUL_4_mult_17_n248), .B(MUL_4_mult_17_n259), 
        .CI(MUL_4_mult_17_n270), .CO(MUL_4_mult_17_n144), .S(
        MUL_4_mult_17_n145) );
  FA_X1 MUL_4_mult_17_U87 ( .A(MUL_4_mult_17_n147), .B(MUL_4_mult_17_n282), 
        .CI(MUL_4_mult_17_n152), .CO(MUL_4_mult_17_n142), .S(
        MUL_4_mult_17_n143) );
  FA_X1 MUL_4_mult_17_U86 ( .A(MUL_4_mult_17_n145), .B(MUL_4_mult_17_n150), 
        .CI(MUL_4_mult_17_n143), .CO(MUL_4_mult_17_n140), .S(
        MUL_4_mult_17_n141) );
  FA_X1 MUL_4_mult_17_U85 ( .A(MUL_4_mult_17_n247), .B(MUL_4_mult_17_n225), 
        .CI(MUL_4_mult_17_n281), .CO(MUL_4_mult_17_n138), .S(
        MUL_4_mult_17_n139) );
  FA_X1 MUL_4_mult_17_U84 ( .A(MUL_4_mult_17_n236), .B(MUL_4_mult_17_n269), 
        .CI(MUL_4_mult_17_n258), .CO(MUL_4_mult_17_n136), .S(
        MUL_4_mult_17_n137) );
  FA_X1 MUL_4_mult_17_U83 ( .A(MUL_4_mult_17_n144), .B(MUL_4_mult_17_n146), 
        .CI(MUL_4_mult_17_n139), .CO(MUL_4_mult_17_n134), .S(
        MUL_4_mult_17_n135) );
  FA_X1 MUL_4_mult_17_U82 ( .A(MUL_4_mult_17_n142), .B(MUL_4_mult_17_n137), 
        .CI(MUL_4_mult_17_n135), .CO(MUL_4_mult_17_n132), .S(
        MUL_4_mult_17_n133) );
  HA_X1 MUL_4_mult_17_U81 ( .A(MUL_4_mult_17_n194), .B(MUL_4_mult_17_n224), 
        .CO(MUL_4_mult_17_n130), .S(MUL_4_mult_17_n131) );
  FA_X1 MUL_4_mult_17_U80 ( .A(MUL_4_mult_17_n235), .B(MUL_4_mult_17_n257), 
        .CI(MUL_4_mult_17_n280), .CO(MUL_4_mult_17_n128), .S(
        MUL_4_mult_17_n129) );
  FA_X1 MUL_4_mult_17_U79 ( .A(MUL_4_mult_17_n246), .B(MUL_4_mult_17_n268), 
        .CI(MUL_4_mult_17_n131), .CO(MUL_4_mult_17_n126), .S(
        MUL_4_mult_17_n127) );
  FA_X1 MUL_4_mult_17_U78 ( .A(MUL_4_mult_17_n136), .B(MUL_4_mult_17_n138), 
        .CI(MUL_4_mult_17_n129), .CO(MUL_4_mult_17_n124), .S(
        MUL_4_mult_17_n125) );
  FA_X1 MUL_4_mult_17_U77 ( .A(MUL_4_mult_17_n134), .B(MUL_4_mult_17_n127), 
        .CI(MUL_4_mult_17_n125), .CO(MUL_4_mult_17_n122), .S(
        MUL_4_mult_17_n123) );
  FA_X1 MUL_4_mult_17_U76 ( .A(MUL_4_mult_17_n234), .B(MUL_4_mult_17_n212), 
        .CI(MUL_4_mult_17_n279), .CO(MUL_4_mult_17_n120), .S(
        MUL_4_mult_17_n121) );
  FA_X1 MUL_4_mult_17_U75 ( .A(MUL_4_mult_17_n223), .B(MUL_4_mult_17_n267), 
        .CI(MUL_4_mult_17_n245), .CO(MUL_4_mult_17_n118), .S(
        MUL_4_mult_17_n119) );
  FA_X1 MUL_4_mult_17_U74 ( .A(MUL_4_mult_17_n130), .B(MUL_4_mult_17_n256), 
        .CI(MUL_4_mult_17_n128), .CO(MUL_4_mult_17_n116), .S(
        MUL_4_mult_17_n117) );
  FA_X1 MUL_4_mult_17_U73 ( .A(MUL_4_mult_17_n119), .B(MUL_4_mult_17_n121), 
        .CI(MUL_4_mult_17_n126), .CO(MUL_4_mult_17_n114), .S(
        MUL_4_mult_17_n115) );
  FA_X1 MUL_4_mult_17_U72 ( .A(MUL_4_mult_17_n117), .B(MUL_4_mult_17_n124), 
        .CI(MUL_4_mult_17_n115), .CO(MUL_4_mult_17_n112), .S(
        MUL_4_mult_17_n113) );
  FA_X1 MUL_4_mult_17_U69 ( .A(MUL_4_mult_17_n233), .B(MUL_4_mult_17_n244), 
        .CI(MUL_4_mult_17_n543), .CO(MUL_4_mult_17_n108), .S(
        MUL_4_mult_17_n109) );
  FA_X1 MUL_4_mult_17_U68 ( .A(MUL_4_mult_17_n193), .B(MUL_4_mult_17_n266), 
        .CI(MUL_4_mult_17_n255), .CO(MUL_4_mult_17_n106), .S(
        MUL_4_mult_17_n107) );
  FA_X1 MUL_4_mult_17_U67 ( .A(MUL_4_mult_17_n120), .B(MUL_4_mult_17_n111), 
        .CI(MUL_4_mult_17_n118), .CO(MUL_4_mult_17_n104), .S(
        MUL_4_mult_17_n105) );
  FA_X1 MUL_4_mult_17_U66 ( .A(MUL_4_mult_17_n109), .B(MUL_4_mult_17_n107), 
        .CI(MUL_4_mult_17_n116), .CO(MUL_4_mult_17_n102), .S(
        MUL_4_mult_17_n103) );
  FA_X1 MUL_4_mult_17_U65 ( .A(MUL_4_mult_17_n114), .B(MUL_4_mult_17_n105), 
        .CI(MUL_4_mult_17_n103), .CO(MUL_4_mult_17_n100), .S(
        MUL_4_mult_17_n101) );
  FA_X1 MUL_4_mult_17_U63 ( .A(MUL_4_mult_17_n210), .B(MUL_4_mult_17_n221), 
        .CI(MUL_4_mult_17_n254), .CO(MUL_4_mult_17_n96), .S(MUL_4_mult_17_n97)
         );
  FA_X1 MUL_4_mult_17_U62 ( .A(MUL_4_mult_17_n232), .B(MUL_4_mult_17_n243), 
        .CI(MUL_4_mult_17_n539), .CO(MUL_4_mult_17_n94), .S(MUL_4_mult_17_n95)
         );
  FA_X1 MUL_4_mult_17_U61 ( .A(MUL_4_mult_17_n108), .B(MUL_4_mult_17_n110), 
        .CI(MUL_4_mult_17_n106), .CO(MUL_4_mult_17_n92), .S(MUL_4_mult_17_n93)
         );
  FA_X1 MUL_4_mult_17_U60 ( .A(MUL_4_mult_17_n95), .B(MUL_4_mult_17_n97), .CI(
        MUL_4_mult_17_n104), .CO(MUL_4_mult_17_n90), .S(MUL_4_mult_17_n91) );
  FA_X1 MUL_4_mult_17_U59 ( .A(MUL_4_mult_17_n102), .B(MUL_4_mult_17_n93), 
        .CI(MUL_4_mult_17_n91), .CO(MUL_4_mult_17_n88), .S(MUL_4_mult_17_n89)
         );
  FA_X1 MUL_4_mult_17_U58 ( .A(MUL_4_mult_17_n98), .B(MUL_4_mult_17_n209), 
        .CI(MUL_4_mult_17_n540), .CO(MUL_4_mult_17_n86), .S(MUL_4_mult_17_n87)
         );
  FA_X1 MUL_4_mult_17_U57 ( .A(MUL_4_mult_17_n220), .B(MUL_4_mult_17_n253), 
        .CI(MUL_4_mult_17_n231), .CO(MUL_4_mult_17_n84), .S(MUL_4_mult_17_n85)
         );
  FA_X1 MUL_4_mult_17_U56 ( .A(MUL_4_mult_17_n96), .B(MUL_4_mult_17_n242), 
        .CI(MUL_4_mult_17_n94), .CO(MUL_4_mult_17_n82), .S(MUL_4_mult_17_n83)
         );
  FA_X1 MUL_4_mult_17_U55 ( .A(MUL_4_mult_17_n87), .B(MUL_4_mult_17_n85), .CI(
        MUL_4_mult_17_n92), .CO(MUL_4_mult_17_n80), .S(MUL_4_mult_17_n81) );
  FA_X1 MUL_4_mult_17_U54 ( .A(MUL_4_mult_17_n90), .B(MUL_4_mult_17_n83), .CI(
        MUL_4_mult_17_n81), .CO(MUL_4_mult_17_n78), .S(MUL_4_mult_17_n79) );
  FA_X1 MUL_4_mult_17_U52 ( .A(MUL_4_mult_17_n241), .B(MUL_4_mult_17_n219), 
        .CI(MUL_4_mult_17_n208), .CO(MUL_4_mult_17_n74), .S(MUL_4_mult_17_n75)
         );
  FA_X1 MUL_4_mult_17_U51 ( .A(MUL_4_mult_17_n534), .B(MUL_4_mult_17_n230), 
        .CI(MUL_4_mult_17_n86), .CO(MUL_4_mult_17_n72), .S(MUL_4_mult_17_n73)
         );
  FA_X1 MUL_4_mult_17_U50 ( .A(MUL_4_mult_17_n75), .B(MUL_4_mult_17_n84), .CI(
        MUL_4_mult_17_n82), .CO(MUL_4_mult_17_n70), .S(MUL_4_mult_17_n71) );
  FA_X1 MUL_4_mult_17_U49 ( .A(MUL_4_mult_17_n80), .B(MUL_4_mult_17_n73), .CI(
        MUL_4_mult_17_n71), .CO(MUL_4_mult_17_n68), .S(MUL_4_mult_17_n69) );
  FA_X1 MUL_4_mult_17_U48 ( .A(MUL_4_mult_17_n240), .B(MUL_4_mult_17_n207), 
        .CI(MUL_4_mult_17_n535), .CO(MUL_4_mult_17_n66), .S(MUL_4_mult_17_n67)
         );
  FA_X1 MUL_4_mult_17_U47 ( .A(MUL_4_mult_17_n218), .B(MUL_4_mult_17_n76), 
        .CI(MUL_4_mult_17_n229), .CO(MUL_4_mult_17_n64), .S(MUL_4_mult_17_n65)
         );
  FA_X1 MUL_4_mult_17_U46 ( .A(MUL_4_mult_17_n65), .B(MUL_4_mult_17_n74), .CI(
        MUL_4_mult_17_n67), .CO(MUL_4_mult_17_n62), .S(MUL_4_mult_17_n63) );
  FA_X1 MUL_4_mult_17_U45 ( .A(MUL_4_mult_17_n70), .B(MUL_4_mult_17_n72), .CI(
        MUL_4_mult_17_n63), .CO(MUL_4_mult_17_n60), .S(MUL_4_mult_17_n61) );
  FA_X1 MUL_4_mult_17_U43 ( .A(MUL_4_mult_17_n206), .B(MUL_4_mult_17_n217), 
        .CI(MUL_4_mult_17_n228), .CO(MUL_4_mult_17_n56), .S(MUL_4_mult_17_n57)
         );
  FA_X1 MUL_4_mult_17_U42 ( .A(MUL_4_mult_17_n66), .B(MUL_4_mult_17_n529), 
        .CI(MUL_4_mult_17_n64), .CO(MUL_4_mult_17_n54), .S(MUL_4_mult_17_n55)
         );
  FA_X1 MUL_4_mult_17_U41 ( .A(MUL_4_mult_17_n55), .B(MUL_4_mult_17_n57), .CI(
        MUL_4_mult_17_n62), .CO(MUL_4_mult_17_n52), .S(MUL_4_mult_17_n53) );
  FA_X1 MUL_4_mult_17_U40 ( .A(MUL_4_mult_17_n216), .B(MUL_4_mult_17_n205), 
        .CI(MUL_4_mult_17_n530), .CO(MUL_4_mult_17_n50), .S(MUL_4_mult_17_n51)
         );
  FA_X1 MUL_4_mult_17_U39 ( .A(MUL_4_mult_17_n58), .B(MUL_4_mult_17_n227), 
        .CI(MUL_4_mult_17_n56), .CO(MUL_4_mult_17_n48), .S(MUL_4_mult_17_n49)
         );
  FA_X1 MUL_4_mult_17_U38 ( .A(MUL_4_mult_17_n54), .B(MUL_4_mult_17_n51), .CI(
        MUL_4_mult_17_n49), .CO(MUL_4_mult_17_n46), .S(MUL_4_mult_17_n47) );
  FA_X1 MUL_4_mult_17_U36 ( .A(MUL_4_mult_17_n204), .B(MUL_4_mult_17_n215), 
        .CI(MUL_4_mult_17_n524), .CO(MUL_4_mult_17_n42), .S(MUL_4_mult_17_n43)
         );
  FA_X1 MUL_4_mult_17_U35 ( .A(MUL_4_mult_17_n43), .B(MUL_4_mult_17_n50), .CI(
        MUL_4_mult_17_n48), .CO(MUL_4_mult_17_n40), .S(MUL_4_mult_17_n41) );
  FA_X1 MUL_4_mult_17_U34 ( .A(MUL_4_mult_17_n214), .B(MUL_4_mult_17_n44), 
        .CI(MUL_4_mult_17_n525), .CO(MUL_4_mult_17_n38), .S(MUL_4_mult_17_n39)
         );
  FA_X1 MUL_4_mult_17_U33 ( .A(MUL_4_mult_17_n42), .B(MUL_4_mult_17_n203), 
        .CI(MUL_4_mult_17_n39), .CO(MUL_4_mult_17_n36), .S(MUL_4_mult_17_n37)
         );
  FA_X1 MUL_4_mult_17_U31 ( .A(MUL_4_mult_17_n518), .B(MUL_4_mult_17_n202), 
        .CI(MUL_4_mult_17_n38), .CO(MUL_4_mult_17_n32), .S(MUL_4_mult_17_n33)
         );
  FA_X1 MUL_4_mult_17_U30 ( .A(MUL_4_mult_17_n201), .B(MUL_4_mult_17_n34), 
        .CI(MUL_4_mult_17_n519), .CO(MUL_4_mult_17_n30), .S(MUL_4_mult_17_n31)
         );
  FA_X1 MUL_4_mult_17_U11 ( .A(MUL_4_mult_17_n53), .B(MUL_4_mult_17_n60), .CI(
        MUL_4_mult_17_n509), .CO(MUL_4_mult_17_n10), .S(
        TRUNCATED_MULT_RES_4__0_) );
  FA_X1 MUL_4_mult_17_U10 ( .A(MUL_4_mult_17_n47), .B(MUL_4_mult_17_n52), .CI(
        MUL_4_mult_17_n10), .CO(MUL_4_mult_17_n9), .S(TRUNCATED_MULT_RES_4__1_) );
  FA_X1 MUL_4_mult_17_U9 ( .A(MUL_4_mult_17_n41), .B(MUL_4_mult_17_n46), .CI(
        MUL_4_mult_17_n9), .CO(MUL_4_mult_17_n8), .S(TRUNCATED_MULT_RES_4__2_)
         );
  FA_X1 MUL_4_mult_17_U8 ( .A(MUL_4_mult_17_n37), .B(MUL_4_mult_17_n40), .CI(
        MUL_4_mult_17_n8), .CO(MUL_4_mult_17_n7), .S(TRUNCATED_MULT_RES_4__3_)
         );
  FA_X1 MUL_4_mult_17_U7 ( .A(MUL_4_mult_17_n33), .B(MUL_4_mult_17_n36), .CI(
        MUL_4_mult_17_n7), .CO(MUL_4_mult_17_n6), .S(TRUNCATED_MULT_RES_4__4_)
         );
  FA_X1 MUL_4_mult_17_U6 ( .A(MUL_4_mult_17_n32), .B(MUL_4_mult_17_n31), .CI(
        MUL_4_mult_17_n6), .CO(MUL_4_mult_17_n5), .S(TRUNCATED_MULT_RES_4__5_)
         );
  FA_X1 MUL_4_mult_17_U5 ( .A(MUL_4_mult_17_n30), .B(MUL_4_mult_17_n29), .CI(
        MUL_4_mult_17_n5), .CO(MUL_4_mult_17_n4), .S(TRUNCATED_MULT_RES_4__6_)
         );
  XOR2_X1 ADD_4_add_18_U2 ( .A(SUM_RESULTS_3__0_), .B(TRUNCATED_MULT_RES_4__0_), .Z(SUM_RESULTS_4__0_) );
  AND2_X1 ADD_4_add_18_U1 ( .A1(SUM_RESULTS_3__0_), .A2(
        TRUNCATED_MULT_RES_4__0_), .ZN(ADD_4_add_18_n1) );
  FA_X1 ADD_4_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_4__1_), .B(SUM_RESULTS_3__1_), .CI(ADD_4_add_18_n1), .CO(ADD_4_add_18_carry[2]), .S(SUM_RESULTS_4__1_) );
  FA_X1 ADD_4_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_4__2_), .B(SUM_RESULTS_3__2_), .CI(ADD_4_add_18_carry[2]), .CO(ADD_4_add_18_carry[3]), .S(SUM_RESULTS_4__2_) );
  FA_X1 ADD_4_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_4__3_), .B(SUM_RESULTS_3__3_), .CI(ADD_4_add_18_carry[3]), .CO(ADD_4_add_18_carry[4]), .S(SUM_RESULTS_4__3_) );
  FA_X1 ADD_4_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_4__4_), .B(SUM_RESULTS_3__4_), .CI(ADD_4_add_18_carry[4]), .CO(ADD_4_add_18_carry[5]), .S(SUM_RESULTS_4__4_) );
  FA_X1 ADD_4_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_4__5_), .B(SUM_RESULTS_3__5_), .CI(ADD_4_add_18_carry[5]), .CO(ADD_4_add_18_carry[6]), .S(SUM_RESULTS_4__5_) );
  FA_X1 ADD_4_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_4__6_), .B(SUM_RESULTS_3__6_), .CI(ADD_4_add_18_carry[6]), .CO(ADD_4_add_18_carry[7]), .S(SUM_RESULTS_4__6_) );
  FA_X1 ADD_4_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_4__7_), .B(SUM_RESULTS_3__7_), .CI(ADD_4_add_18_carry[7]), .CO(ADD_4_add_18_carry[8]), .S(SUM_RESULTS_4__7_) );
  FA_X1 ADD_4_add_18_U1_8 ( .A(TRUNCATED_MULT_RES_4__7_), .B(
        SUM_RESULTS_3__12_), .CI(ADD_4_add_18_carry[8]), .CO(
        ADD_4_add_18_carry[9]), .S(SUM_RESULTS_4__8_) );
  FA_X1 ADD_4_add_18_U1_9 ( .A(TRUNCATED_MULT_RES_4__7_), .B(
        SUM_RESULTS_3__12_), .CI(ADD_4_add_18_carry[9]), .S(SUM_RESULTS_4__12_) );
  BUF_X1 SAMPLE_REG_5_U31 ( .A(n545), .Z(SAMPLE_REG_5_n42) );
  NAND2_X1 SAMPLE_REG_5_U30 ( .A1(SAMPLE_REG_5_n42), .A2(SAMPLES[78]), .ZN(
        SAMPLE_REG_5_n82) );
  OAI21_X1 SAMPLE_REG_5_U29 ( .B1(SAMPLE_REG_5_n69), .B2(SAMPLE_REG_5_n42), 
        .A(SAMPLE_REG_5_n82), .ZN(SAMPLE_REG_5_n56) );
  NAND2_X1 SAMPLE_REG_5_U28 ( .A1(SAMPLES[80]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n80) );
  OAI21_X1 SAMPLE_REG_5_U27 ( .B1(SAMPLE_REG_5_n67), .B2(SAMPLE_REG_5_n41), 
        .A(SAMPLE_REG_5_n80), .ZN(SAMPLE_REG_5_n54) );
  NAND2_X1 SAMPLE_REG_5_U26 ( .A1(SAMPLES[90]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n70) );
  OAI21_X1 SAMPLE_REG_5_U25 ( .B1(SAMPLE_REG_5_n57), .B2(SAMPLE_REG_5_n41), 
        .A(SAMPLE_REG_5_n70), .ZN(SAMPLE_REG_5_n44) );
  NAND2_X1 SAMPLE_REG_5_U24 ( .A1(SAMPLES[89]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n71) );
  OAI21_X1 SAMPLE_REG_5_U23 ( .B1(SAMPLE_REG_5_n58), .B2(SAMPLE_REG_5_n41), 
        .A(SAMPLE_REG_5_n71), .ZN(SAMPLE_REG_5_n45) );
  NAND2_X1 SAMPLE_REG_5_U22 ( .A1(SAMPLES[88]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n72) );
  OAI21_X1 SAMPLE_REG_5_U21 ( .B1(SAMPLE_REG_5_n59), .B2(SAMPLE_REG_5_n41), 
        .A(SAMPLE_REG_5_n72), .ZN(SAMPLE_REG_5_n46) );
  NAND2_X1 SAMPLE_REG_5_U20 ( .A1(SAMPLES[87]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n73) );
  OAI21_X1 SAMPLE_REG_5_U19 ( .B1(SAMPLE_REG_5_n60), .B2(SAMPLE_REG_5_n41), 
        .A(SAMPLE_REG_5_n73), .ZN(SAMPLE_REG_5_n47) );
  NAND2_X1 SAMPLE_REG_5_U18 ( .A1(SAMPLES[86]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n74) );
  OAI21_X1 SAMPLE_REG_5_U17 ( .B1(SAMPLE_REG_5_n61), .B2(SAMPLE_REG_5_n41), 
        .A(SAMPLE_REG_5_n74), .ZN(SAMPLE_REG_5_n48) );
  NAND2_X1 SAMPLE_REG_5_U16 ( .A1(SAMPLES[85]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n75) );
  OAI21_X1 SAMPLE_REG_5_U15 ( .B1(SAMPLE_REG_5_n62), .B2(SAMPLE_REG_5_n41), 
        .A(SAMPLE_REG_5_n75), .ZN(SAMPLE_REG_5_n49) );
  NAND2_X1 SAMPLE_REG_5_U14 ( .A1(SAMPLES[84]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n76) );
  OAI21_X1 SAMPLE_REG_5_U13 ( .B1(SAMPLE_REG_5_n63), .B2(SAMPLE_REG_5_n41), 
        .A(SAMPLE_REG_5_n76), .ZN(SAMPLE_REG_5_n50) );
  NAND2_X1 SAMPLE_REG_5_U12 ( .A1(SAMPLES[83]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n77) );
  OAI21_X1 SAMPLE_REG_5_U11 ( .B1(SAMPLE_REG_5_n64), .B2(SAMPLE_REG_5_n41), 
        .A(SAMPLE_REG_5_n77), .ZN(SAMPLE_REG_5_n51) );
  NAND2_X1 SAMPLE_REG_5_U10 ( .A1(SAMPLES[82]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n78) );
  OAI21_X1 SAMPLE_REG_5_U9 ( .B1(SAMPLE_REG_5_n65), .B2(SAMPLE_REG_5_n41), .A(
        SAMPLE_REG_5_n78), .ZN(SAMPLE_REG_5_n52) );
  NAND2_X1 SAMPLE_REG_5_U8 ( .A1(SAMPLES[81]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n79) );
  OAI21_X1 SAMPLE_REG_5_U7 ( .B1(SAMPLE_REG_5_n66), .B2(SAMPLE_REG_5_n41), .A(
        SAMPLE_REG_5_n79), .ZN(SAMPLE_REG_5_n53) );
  NAND2_X1 SAMPLE_REG_5_U6 ( .A1(SAMPLES[79]), .A2(SAMPLE_REG_5_n40), .ZN(
        SAMPLE_REG_5_n81) );
  OAI21_X1 SAMPLE_REG_5_U5 ( .B1(SAMPLE_REG_5_n68), .B2(SAMPLE_REG_5_n41), .A(
        SAMPLE_REG_5_n81), .ZN(SAMPLE_REG_5_n55) );
  BUF_X1 SAMPLE_REG_5_U4 ( .A(n545), .Z(SAMPLE_REG_5_n41) );
  BUF_X1 SAMPLE_REG_5_U3 ( .A(n545), .Z(SAMPLE_REG_5_n40) );
  BUF_X1 SAMPLE_REG_5_U2 ( .A(n546), .Z(SAMPLE_REG_5_n43) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_12_ ( .D(SAMPLE_REG_5_n44), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[77]), .QN(SAMPLE_REG_5_n57) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_2_ ( .D(SAMPLE_REG_5_n54), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[67]), .QN(SAMPLE_REG_5_n67) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_4_ ( .D(SAMPLE_REG_5_n52), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[69]), .QN(SAMPLE_REG_5_n65) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_6_ ( .D(SAMPLE_REG_5_n50), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[71]), .QN(SAMPLE_REG_5_n63) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_8_ ( .D(SAMPLE_REG_5_n48), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[73]), .QN(SAMPLE_REG_5_n61) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_10_ ( .D(SAMPLE_REG_5_n46), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[75]), .QN(SAMPLE_REG_5_n59) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_0_ ( .D(SAMPLE_REG_5_n56), .CK(CLK), .RN(n546), 
        .Q(SAMPLES[65]), .QN(SAMPLE_REG_5_n69) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_1_ ( .D(SAMPLE_REG_5_n55), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[66]), .QN(SAMPLE_REG_5_n68) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_3_ ( .D(SAMPLE_REG_5_n53), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[68]), .QN(SAMPLE_REG_5_n66) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_5_ ( .D(SAMPLE_REG_5_n51), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[70]), .QN(SAMPLE_REG_5_n64) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_7_ ( .D(SAMPLE_REG_5_n49), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[72]), .QN(SAMPLE_REG_5_n62) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_9_ ( .D(SAMPLE_REG_5_n47), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[74]), .QN(SAMPLE_REG_5_n60) );
  DFFR_X1 SAMPLE_REG_5_DOUT_reg_11_ ( .D(SAMPLE_REG_5_n45), .CK(CLK), .RN(
        SAMPLE_REG_5_n43), .Q(SAMPLES[76]), .QN(SAMPLE_REG_5_n58) );
  XOR2_X1 MUL_5_mult_17_U660 ( .A(SAMPLES[67]), .B(SAMPLES[66]), .Z(
        MUL_5_mult_17_n681) );
  NAND2_X1 MUL_5_mult_17_U659 ( .A1(SAMPLES[66]), .A2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n571) );
  XNOR2_X1 MUL_5_mult_17_U658 ( .A(A[67]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n570) );
  OAI22_X1 MUL_5_mult_17_U657 ( .A1(A[66]), .A2(MUL_5_mult_17_n571), .B1(
        MUL_5_mult_17_n570), .B2(MUL_5_mult_17_n544), .ZN(MUL_5_mult_17_n683)
         );
  XNOR2_X1 MUL_5_mult_17_U656 ( .A(MUL_5_mult_17_n541), .B(SAMPLES[67]), .ZN(
        MUL_5_mult_17_n682) );
  NAND2_X1 MUL_5_mult_17_U655 ( .A1(MUL_5_mult_17_n542), .A2(
        MUL_5_mult_17_n682), .ZN(MUL_5_mult_17_n552) );
  NAND3_X1 MUL_5_mult_17_U654 ( .A1(MUL_5_mult_17_n681), .A2(
        MUL_5_mult_17_n546), .A3(SAMPLES[68]), .ZN(MUL_5_mult_17_n680) );
  OAI21_X1 MUL_5_mult_17_U653 ( .B1(MUL_5_mult_17_n541), .B2(
        MUL_5_mult_17_n552), .A(MUL_5_mult_17_n680), .ZN(MUL_5_mult_17_n679)
         );
  AOI222_X1 MUL_5_mult_17_U652 ( .A1(MUL_5_mult_17_n506), .A2(
        MUL_5_mult_17_n171), .B1(MUL_5_mult_17_n679), .B2(MUL_5_mult_17_n506), 
        .C1(MUL_5_mult_17_n679), .C2(MUL_5_mult_17_n171), .ZN(
        MUL_5_mult_17_n678) );
  AOI222_X1 MUL_5_mult_17_U651 ( .A1(MUL_5_mult_17_n538), .A2(
        MUL_5_mult_17_n169), .B1(MUL_5_mult_17_n538), .B2(MUL_5_mult_17_n170), 
        .C1(MUL_5_mult_17_n170), .C2(MUL_5_mult_17_n169), .ZN(
        MUL_5_mult_17_n677) );
  AOI222_X1 MUL_5_mult_17_U650 ( .A1(MUL_5_mult_17_n537), .A2(
        MUL_5_mult_17_n165), .B1(MUL_5_mult_17_n537), .B2(MUL_5_mult_17_n168), 
        .C1(MUL_5_mult_17_n168), .C2(MUL_5_mult_17_n165), .ZN(
        MUL_5_mult_17_n676) );
  AOI222_X1 MUL_5_mult_17_U649 ( .A1(MUL_5_mult_17_n533), .A2(
        MUL_5_mult_17_n161), .B1(MUL_5_mult_17_n533), .B2(MUL_5_mult_17_n164), 
        .C1(MUL_5_mult_17_n164), .C2(MUL_5_mult_17_n161), .ZN(
        MUL_5_mult_17_n675) );
  AOI222_X1 MUL_5_mult_17_U648 ( .A1(MUL_5_mult_17_n532), .A2(
        MUL_5_mult_17_n155), .B1(MUL_5_mult_17_n532), .B2(MUL_5_mult_17_n160), 
        .C1(MUL_5_mult_17_n160), .C2(MUL_5_mult_17_n155), .ZN(
        MUL_5_mult_17_n674) );
  AOI222_X1 MUL_5_mult_17_U647 ( .A1(MUL_5_mult_17_n528), .A2(
        MUL_5_mult_17_n149), .B1(MUL_5_mult_17_n528), .B2(MUL_5_mult_17_n154), 
        .C1(MUL_5_mult_17_n154), .C2(MUL_5_mult_17_n149), .ZN(
        MUL_5_mult_17_n673) );
  AOI222_X1 MUL_5_mult_17_U646 ( .A1(MUL_5_mult_17_n527), .A2(
        MUL_5_mult_17_n141), .B1(MUL_5_mult_17_n527), .B2(MUL_5_mult_17_n148), 
        .C1(MUL_5_mult_17_n148), .C2(MUL_5_mult_17_n141), .ZN(
        MUL_5_mult_17_n672) );
  AOI222_X1 MUL_5_mult_17_U645 ( .A1(MUL_5_mult_17_n523), .A2(
        MUL_5_mult_17_n133), .B1(MUL_5_mult_17_n523), .B2(MUL_5_mult_17_n140), 
        .C1(MUL_5_mult_17_n140), .C2(MUL_5_mult_17_n133), .ZN(
        MUL_5_mult_17_n671) );
  AOI222_X1 MUL_5_mult_17_U644 ( .A1(MUL_5_mult_17_n522), .A2(
        MUL_5_mult_17_n123), .B1(MUL_5_mult_17_n522), .B2(MUL_5_mult_17_n132), 
        .C1(MUL_5_mult_17_n132), .C2(MUL_5_mult_17_n123), .ZN(
        MUL_5_mult_17_n670) );
  AOI222_X1 MUL_5_mult_17_U643 ( .A1(MUL_5_mult_17_n517), .A2(
        MUL_5_mult_17_n113), .B1(MUL_5_mult_17_n517), .B2(MUL_5_mult_17_n122), 
        .C1(MUL_5_mult_17_n122), .C2(MUL_5_mult_17_n113), .ZN(
        MUL_5_mult_17_n669) );
  AOI222_X1 MUL_5_mult_17_U642 ( .A1(MUL_5_mult_17_n515), .A2(
        MUL_5_mult_17_n101), .B1(MUL_5_mult_17_n515), .B2(MUL_5_mult_17_n112), 
        .C1(MUL_5_mult_17_n112), .C2(MUL_5_mult_17_n101), .ZN(
        MUL_5_mult_17_n668) );
  AOI222_X1 MUL_5_mult_17_U641 ( .A1(MUL_5_mult_17_n513), .A2(
        MUL_5_mult_17_n89), .B1(MUL_5_mult_17_n513), .B2(MUL_5_mult_17_n100), 
        .C1(MUL_5_mult_17_n100), .C2(MUL_5_mult_17_n89), .ZN(
        MUL_5_mult_17_n667) );
  AOI222_X1 MUL_5_mult_17_U640 ( .A1(MUL_5_mult_17_n512), .A2(
        MUL_5_mult_17_n79), .B1(MUL_5_mult_17_n512), .B2(MUL_5_mult_17_n88), 
        .C1(MUL_5_mult_17_n88), .C2(MUL_5_mult_17_n79), .ZN(MUL_5_mult_17_n666) );
  AOI222_X1 MUL_5_mult_17_U639 ( .A1(MUL_5_mult_17_n511), .A2(
        MUL_5_mult_17_n69), .B1(MUL_5_mult_17_n511), .B2(MUL_5_mult_17_n78), 
        .C1(MUL_5_mult_17_n78), .C2(MUL_5_mult_17_n69), .ZN(MUL_5_mult_17_n665) );
  AOI222_X1 MUL_5_mult_17_U638 ( .A1(MUL_5_mult_17_n510), .A2(
        MUL_5_mult_17_n61), .B1(MUL_5_mult_17_n510), .B2(MUL_5_mult_17_n68), 
        .C1(MUL_5_mult_17_n68), .C2(MUL_5_mult_17_n61), .ZN(MUL_5_mult_17_n664) );
  XNOR2_X1 MUL_5_mult_17_U637 ( .A(A[67]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n633) );
  XNOR2_X1 MUL_5_mult_17_U636 ( .A(MUL_5_mult_17_n521), .B(SAMPLES[75]), .ZN(
        MUL_5_mult_17_n663) );
  NAND2_X1 MUL_5_mult_17_U635 ( .A1(MUL_5_mult_17_n568), .A2(
        MUL_5_mult_17_n663), .ZN(MUL_5_mult_17_n567) );
  XNOR2_X1 MUL_5_mult_17_U634 ( .A(A[68]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n634) );
  OAI22_X1 MUL_5_mult_17_U633 ( .A1(MUL_5_mult_17_n633), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n634), 
        .ZN(MUL_5_mult_17_n662) );
  XNOR2_X1 MUL_5_mult_17_U632 ( .A(MUL_5_mult_17_n545), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n661) );
  XNOR2_X1 MUL_5_mult_17_U631 ( .A(SAMPLES[77]), .B(MUL_5_mult_17_n521), .ZN(
        MUL_5_mult_17_n549) );
  NAND2_X1 MUL_5_mult_17_U630 ( .A1(MUL_5_mult_17_n661), .A2(
        MUL_5_mult_17_n549), .ZN(MUL_5_mult_17_n660) );
  NAND2_X1 MUL_5_mult_17_U629 ( .A1(MUL_5_mult_17_n520), .A2(
        MUL_5_mult_17_n660), .ZN(MUL_5_mult_17_n110) );
  XNOR2_X1 MUL_5_mult_17_U628 ( .A(MUL_5_mult_17_n660), .B(MUL_5_mult_17_n520), 
        .ZN(MUL_5_mult_17_n111) );
  NOR3_X1 MUL_5_mult_17_U627 ( .A1(MUL_5_mult_17_n514), .A2(A[65]), .A3(
        MUL_5_mult_17_n516), .ZN(MUL_5_mult_17_n193) );
  OR3_X1 MUL_5_mult_17_U626 ( .A1(MUL_5_mult_17_n568), .A2(A[65]), .A3(
        MUL_5_mult_17_n521), .ZN(MUL_5_mult_17_n659) );
  OAI21_X1 MUL_5_mult_17_U625 ( .B1(MUL_5_mult_17_n521), .B2(
        MUL_5_mult_17_n567), .A(MUL_5_mult_17_n659), .ZN(MUL_5_mult_17_n194)
         );
  XNOR2_X1 MUL_5_mult_17_U624 ( .A(MUL_5_mult_17_n526), .B(SAMPLES[73]), .ZN(
        MUL_5_mult_17_n658) );
  NAND2_X1 MUL_5_mult_17_U623 ( .A1(MUL_5_mult_17_n564), .A2(
        MUL_5_mult_17_n658), .ZN(MUL_5_mult_17_n563) );
  OR3_X1 MUL_5_mult_17_U622 ( .A1(MUL_5_mult_17_n564), .A2(A[65]), .A3(
        MUL_5_mult_17_n526), .ZN(MUL_5_mult_17_n657) );
  OAI21_X1 MUL_5_mult_17_U621 ( .B1(MUL_5_mult_17_n526), .B2(
        MUL_5_mult_17_n563), .A(MUL_5_mult_17_n657), .ZN(MUL_5_mult_17_n195)
         );
  XNOR2_X1 MUL_5_mult_17_U620 ( .A(MUL_5_mult_17_n531), .B(SAMPLES[71]), .ZN(
        MUL_5_mult_17_n656) );
  NAND2_X1 MUL_5_mult_17_U619 ( .A1(MUL_5_mult_17_n560), .A2(
        MUL_5_mult_17_n656), .ZN(MUL_5_mult_17_n559) );
  OR3_X1 MUL_5_mult_17_U618 ( .A1(MUL_5_mult_17_n560), .A2(A[65]), .A3(
        MUL_5_mult_17_n531), .ZN(MUL_5_mult_17_n655) );
  OAI21_X1 MUL_5_mult_17_U617 ( .B1(MUL_5_mult_17_n531), .B2(
        MUL_5_mult_17_n559), .A(MUL_5_mult_17_n655), .ZN(MUL_5_mult_17_n196)
         );
  XNOR2_X1 MUL_5_mult_17_U616 ( .A(MUL_5_mult_17_n536), .B(SAMPLES[69]), .ZN(
        MUL_5_mult_17_n654) );
  NAND2_X1 MUL_5_mult_17_U615 ( .A1(MUL_5_mult_17_n556), .A2(
        MUL_5_mult_17_n654), .ZN(MUL_5_mult_17_n555) );
  OR3_X1 MUL_5_mult_17_U614 ( .A1(MUL_5_mult_17_n556), .A2(A[65]), .A3(
        MUL_5_mult_17_n536), .ZN(MUL_5_mult_17_n653) );
  OAI21_X1 MUL_5_mult_17_U613 ( .B1(MUL_5_mult_17_n536), .B2(
        MUL_5_mult_17_n555), .A(MUL_5_mult_17_n653), .ZN(MUL_5_mult_17_n197)
         );
  XNOR2_X1 MUL_5_mult_17_U612 ( .A(A[76]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n652) );
  NOR2_X1 MUL_5_mult_17_U611 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n652), .ZN(MUL_5_mult_17_n201) );
  XNOR2_X1 MUL_5_mult_17_U610 ( .A(A[75]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n651) );
  NOR2_X1 MUL_5_mult_17_U609 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n651), .ZN(MUL_5_mult_17_n202) );
  XNOR2_X1 MUL_5_mult_17_U608 ( .A(A[74]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n650) );
  NOR2_X1 MUL_5_mult_17_U607 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n650), .ZN(MUL_5_mult_17_n203) );
  XNOR2_X1 MUL_5_mult_17_U606 ( .A(A[73]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n649) );
  NOR2_X1 MUL_5_mult_17_U605 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n649), .ZN(MUL_5_mult_17_n204) );
  XNOR2_X1 MUL_5_mult_17_U604 ( .A(A[72]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n648) );
  NOR2_X1 MUL_5_mult_17_U603 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n648), .ZN(MUL_5_mult_17_n205) );
  XNOR2_X1 MUL_5_mult_17_U602 ( .A(A[71]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n647) );
  NOR2_X1 MUL_5_mult_17_U601 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n647), .ZN(MUL_5_mult_17_n206) );
  XNOR2_X1 MUL_5_mult_17_U600 ( .A(A[70]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n646) );
  NOR2_X1 MUL_5_mult_17_U599 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n646), .ZN(MUL_5_mult_17_n207) );
  XNOR2_X1 MUL_5_mult_17_U598 ( .A(A[69]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n645) );
  NOR2_X1 MUL_5_mult_17_U597 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n645), .ZN(MUL_5_mult_17_n208) );
  XNOR2_X1 MUL_5_mult_17_U596 ( .A(A[68]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n644) );
  NOR2_X1 MUL_5_mult_17_U595 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n644), .ZN(MUL_5_mult_17_n209) );
  XNOR2_X1 MUL_5_mult_17_U594 ( .A(A[67]), .B(SAMPLES[77]), .ZN(
        MUL_5_mult_17_n643) );
  NOR2_X1 MUL_5_mult_17_U593 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n643), .ZN(MUL_5_mult_17_n210) );
  NOR2_X1 MUL_5_mult_17_U592 ( .A1(MUL_5_mult_17_n516), .A2(MUL_5_mult_17_n546), .ZN(MUL_5_mult_17_n212) );
  XNOR2_X1 MUL_5_mult_17_U591 ( .A(A[77]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n569) );
  OAI22_X1 MUL_5_mult_17_U590 ( .A1(MUL_5_mult_17_n569), .A2(
        MUL_5_mult_17_n568), .B1(MUL_5_mult_17_n567), .B2(MUL_5_mult_17_n569), 
        .ZN(MUL_5_mult_17_n642) );
  XNOR2_X1 MUL_5_mult_17_U589 ( .A(A[75]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n641) );
  XNOR2_X1 MUL_5_mult_17_U588 ( .A(A[76]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n566) );
  OAI22_X1 MUL_5_mult_17_U587 ( .A1(MUL_5_mult_17_n641), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n566), 
        .ZN(MUL_5_mult_17_n214) );
  XNOR2_X1 MUL_5_mult_17_U586 ( .A(A[74]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n640) );
  OAI22_X1 MUL_5_mult_17_U585 ( .A1(MUL_5_mult_17_n640), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n641), 
        .ZN(MUL_5_mult_17_n215) );
  XNOR2_X1 MUL_5_mult_17_U584 ( .A(A[73]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n639) );
  OAI22_X1 MUL_5_mult_17_U583 ( .A1(MUL_5_mult_17_n639), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n640), 
        .ZN(MUL_5_mult_17_n216) );
  XNOR2_X1 MUL_5_mult_17_U582 ( .A(A[72]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n638) );
  OAI22_X1 MUL_5_mult_17_U581 ( .A1(MUL_5_mult_17_n638), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n639), 
        .ZN(MUL_5_mult_17_n217) );
  XNOR2_X1 MUL_5_mult_17_U580 ( .A(A[71]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n637) );
  OAI22_X1 MUL_5_mult_17_U579 ( .A1(MUL_5_mult_17_n637), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n638), 
        .ZN(MUL_5_mult_17_n218) );
  XNOR2_X1 MUL_5_mult_17_U578 ( .A(A[70]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n636) );
  OAI22_X1 MUL_5_mult_17_U577 ( .A1(MUL_5_mult_17_n636), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n637), 
        .ZN(MUL_5_mult_17_n219) );
  XNOR2_X1 MUL_5_mult_17_U576 ( .A(A[69]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n635) );
  OAI22_X1 MUL_5_mult_17_U575 ( .A1(MUL_5_mult_17_n635), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n636), 
        .ZN(MUL_5_mult_17_n220) );
  OAI22_X1 MUL_5_mult_17_U574 ( .A1(MUL_5_mult_17_n634), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n635), 
        .ZN(MUL_5_mult_17_n221) );
  XNOR2_X1 MUL_5_mult_17_U573 ( .A(A[66]), .B(SAMPLES[76]), .ZN(
        MUL_5_mult_17_n632) );
  OAI22_X1 MUL_5_mult_17_U572 ( .A1(MUL_5_mult_17_n632), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n633), 
        .ZN(MUL_5_mult_17_n223) );
  XNOR2_X1 MUL_5_mult_17_U571 ( .A(SAMPLES[76]), .B(A[65]), .ZN(
        MUL_5_mult_17_n631) );
  OAI22_X1 MUL_5_mult_17_U570 ( .A1(MUL_5_mult_17_n631), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n632), 
        .ZN(MUL_5_mult_17_n224) );
  NOR2_X1 MUL_5_mult_17_U569 ( .A1(MUL_5_mult_17_n568), .A2(MUL_5_mult_17_n546), .ZN(MUL_5_mult_17_n225) );
  XNOR2_X1 MUL_5_mult_17_U568 ( .A(A[77]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n565) );
  OAI22_X1 MUL_5_mult_17_U567 ( .A1(MUL_5_mult_17_n565), .A2(
        MUL_5_mult_17_n564), .B1(MUL_5_mult_17_n563), .B2(MUL_5_mult_17_n565), 
        .ZN(MUL_5_mult_17_n630) );
  XNOR2_X1 MUL_5_mult_17_U566 ( .A(A[75]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n629) );
  XNOR2_X1 MUL_5_mult_17_U565 ( .A(A[76]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n562) );
  OAI22_X1 MUL_5_mult_17_U564 ( .A1(MUL_5_mult_17_n629), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n562), 
        .ZN(MUL_5_mult_17_n227) );
  XNOR2_X1 MUL_5_mult_17_U563 ( .A(A[74]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n628) );
  OAI22_X1 MUL_5_mult_17_U562 ( .A1(MUL_5_mult_17_n628), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n629), 
        .ZN(MUL_5_mult_17_n228) );
  XNOR2_X1 MUL_5_mult_17_U561 ( .A(A[73]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n627) );
  OAI22_X1 MUL_5_mult_17_U560 ( .A1(MUL_5_mult_17_n627), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n628), 
        .ZN(MUL_5_mult_17_n229) );
  XNOR2_X1 MUL_5_mult_17_U559 ( .A(A[72]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n626) );
  OAI22_X1 MUL_5_mult_17_U558 ( .A1(MUL_5_mult_17_n626), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n627), 
        .ZN(MUL_5_mult_17_n230) );
  XNOR2_X1 MUL_5_mult_17_U557 ( .A(A[71]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n625) );
  OAI22_X1 MUL_5_mult_17_U556 ( .A1(MUL_5_mult_17_n625), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n626), 
        .ZN(MUL_5_mult_17_n231) );
  XNOR2_X1 MUL_5_mult_17_U555 ( .A(A[70]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n624) );
  OAI22_X1 MUL_5_mult_17_U554 ( .A1(MUL_5_mult_17_n624), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n625), 
        .ZN(MUL_5_mult_17_n232) );
  XNOR2_X1 MUL_5_mult_17_U553 ( .A(A[69]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n623) );
  OAI22_X1 MUL_5_mult_17_U552 ( .A1(MUL_5_mult_17_n623), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n624), 
        .ZN(MUL_5_mult_17_n233) );
  XNOR2_X1 MUL_5_mult_17_U551 ( .A(A[68]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n622) );
  OAI22_X1 MUL_5_mult_17_U550 ( .A1(MUL_5_mult_17_n622), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n623), 
        .ZN(MUL_5_mult_17_n234) );
  XNOR2_X1 MUL_5_mult_17_U549 ( .A(A[67]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n621) );
  OAI22_X1 MUL_5_mult_17_U548 ( .A1(MUL_5_mult_17_n621), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n622), 
        .ZN(MUL_5_mult_17_n235) );
  XNOR2_X1 MUL_5_mult_17_U547 ( .A(A[66]), .B(SAMPLES[74]), .ZN(
        MUL_5_mult_17_n620) );
  OAI22_X1 MUL_5_mult_17_U546 ( .A1(MUL_5_mult_17_n620), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n621), 
        .ZN(MUL_5_mult_17_n236) );
  XNOR2_X1 MUL_5_mult_17_U545 ( .A(SAMPLES[74]), .B(A[65]), .ZN(
        MUL_5_mult_17_n619) );
  OAI22_X1 MUL_5_mult_17_U544 ( .A1(MUL_5_mult_17_n619), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n620), 
        .ZN(MUL_5_mult_17_n237) );
  NOR2_X1 MUL_5_mult_17_U543 ( .A1(MUL_5_mult_17_n564), .A2(MUL_5_mult_17_n546), .ZN(MUL_5_mult_17_n238) );
  XNOR2_X1 MUL_5_mult_17_U542 ( .A(A[77]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n561) );
  OAI22_X1 MUL_5_mult_17_U541 ( .A1(MUL_5_mult_17_n561), .A2(
        MUL_5_mult_17_n560), .B1(MUL_5_mult_17_n559), .B2(MUL_5_mult_17_n561), 
        .ZN(MUL_5_mult_17_n618) );
  XNOR2_X1 MUL_5_mult_17_U540 ( .A(A[75]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n617) );
  XNOR2_X1 MUL_5_mult_17_U539 ( .A(A[76]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n558) );
  OAI22_X1 MUL_5_mult_17_U538 ( .A1(MUL_5_mult_17_n617), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n558), 
        .ZN(MUL_5_mult_17_n240) );
  XNOR2_X1 MUL_5_mult_17_U537 ( .A(A[74]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n616) );
  OAI22_X1 MUL_5_mult_17_U536 ( .A1(MUL_5_mult_17_n616), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n617), 
        .ZN(MUL_5_mult_17_n241) );
  XNOR2_X1 MUL_5_mult_17_U535 ( .A(A[73]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n615) );
  OAI22_X1 MUL_5_mult_17_U534 ( .A1(MUL_5_mult_17_n615), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n616), 
        .ZN(MUL_5_mult_17_n242) );
  XNOR2_X1 MUL_5_mult_17_U533 ( .A(A[72]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n614) );
  OAI22_X1 MUL_5_mult_17_U532 ( .A1(MUL_5_mult_17_n614), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n615), 
        .ZN(MUL_5_mult_17_n243) );
  XNOR2_X1 MUL_5_mult_17_U531 ( .A(A[71]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n613) );
  OAI22_X1 MUL_5_mult_17_U530 ( .A1(MUL_5_mult_17_n613), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n614), 
        .ZN(MUL_5_mult_17_n244) );
  XNOR2_X1 MUL_5_mult_17_U529 ( .A(A[70]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n612) );
  OAI22_X1 MUL_5_mult_17_U528 ( .A1(MUL_5_mult_17_n612), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n613), 
        .ZN(MUL_5_mult_17_n245) );
  XNOR2_X1 MUL_5_mult_17_U527 ( .A(A[69]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n611) );
  OAI22_X1 MUL_5_mult_17_U526 ( .A1(MUL_5_mult_17_n611), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n612), 
        .ZN(MUL_5_mult_17_n246) );
  XNOR2_X1 MUL_5_mult_17_U525 ( .A(A[68]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n610) );
  OAI22_X1 MUL_5_mult_17_U524 ( .A1(MUL_5_mult_17_n610), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n611), 
        .ZN(MUL_5_mult_17_n247) );
  XNOR2_X1 MUL_5_mult_17_U523 ( .A(A[67]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n609) );
  OAI22_X1 MUL_5_mult_17_U522 ( .A1(MUL_5_mult_17_n609), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n610), 
        .ZN(MUL_5_mult_17_n248) );
  XNOR2_X1 MUL_5_mult_17_U521 ( .A(A[66]), .B(SAMPLES[72]), .ZN(
        MUL_5_mult_17_n608) );
  OAI22_X1 MUL_5_mult_17_U520 ( .A1(MUL_5_mult_17_n608), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n609), 
        .ZN(MUL_5_mult_17_n249) );
  XNOR2_X1 MUL_5_mult_17_U519 ( .A(SAMPLES[72]), .B(A[65]), .ZN(
        MUL_5_mult_17_n607) );
  OAI22_X1 MUL_5_mult_17_U518 ( .A1(MUL_5_mult_17_n607), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n608), 
        .ZN(MUL_5_mult_17_n250) );
  NOR2_X1 MUL_5_mult_17_U517 ( .A1(MUL_5_mult_17_n560), .A2(MUL_5_mult_17_n546), .ZN(MUL_5_mult_17_n251) );
  XNOR2_X1 MUL_5_mult_17_U516 ( .A(A[77]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n557) );
  OAI22_X1 MUL_5_mult_17_U515 ( .A1(MUL_5_mult_17_n557), .A2(
        MUL_5_mult_17_n556), .B1(MUL_5_mult_17_n555), .B2(MUL_5_mult_17_n557), 
        .ZN(MUL_5_mult_17_n606) );
  XNOR2_X1 MUL_5_mult_17_U514 ( .A(A[75]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n605) );
  XNOR2_X1 MUL_5_mult_17_U513 ( .A(A[76]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n554) );
  OAI22_X1 MUL_5_mult_17_U512 ( .A1(MUL_5_mult_17_n605), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n554), 
        .ZN(MUL_5_mult_17_n253) );
  XNOR2_X1 MUL_5_mult_17_U511 ( .A(A[74]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n604) );
  OAI22_X1 MUL_5_mult_17_U510 ( .A1(MUL_5_mult_17_n604), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n605), 
        .ZN(MUL_5_mult_17_n254) );
  XNOR2_X1 MUL_5_mult_17_U509 ( .A(A[73]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n603) );
  OAI22_X1 MUL_5_mult_17_U508 ( .A1(MUL_5_mult_17_n603), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n604), 
        .ZN(MUL_5_mult_17_n255) );
  XNOR2_X1 MUL_5_mult_17_U507 ( .A(A[72]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n602) );
  OAI22_X1 MUL_5_mult_17_U506 ( .A1(MUL_5_mult_17_n602), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n603), 
        .ZN(MUL_5_mult_17_n256) );
  XNOR2_X1 MUL_5_mult_17_U505 ( .A(A[71]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n601) );
  OAI22_X1 MUL_5_mult_17_U504 ( .A1(MUL_5_mult_17_n601), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n602), 
        .ZN(MUL_5_mult_17_n257) );
  XNOR2_X1 MUL_5_mult_17_U503 ( .A(A[70]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n600) );
  OAI22_X1 MUL_5_mult_17_U502 ( .A1(MUL_5_mult_17_n600), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n601), 
        .ZN(MUL_5_mult_17_n258) );
  XNOR2_X1 MUL_5_mult_17_U501 ( .A(A[69]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n599) );
  OAI22_X1 MUL_5_mult_17_U500 ( .A1(MUL_5_mult_17_n599), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n600), 
        .ZN(MUL_5_mult_17_n259) );
  XNOR2_X1 MUL_5_mult_17_U499 ( .A(A[68]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n598) );
  OAI22_X1 MUL_5_mult_17_U498 ( .A1(MUL_5_mult_17_n598), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n599), 
        .ZN(MUL_5_mult_17_n260) );
  XNOR2_X1 MUL_5_mult_17_U497 ( .A(A[67]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n597) );
  OAI22_X1 MUL_5_mult_17_U496 ( .A1(MUL_5_mult_17_n597), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n598), 
        .ZN(MUL_5_mult_17_n261) );
  XNOR2_X1 MUL_5_mult_17_U495 ( .A(A[66]), .B(SAMPLES[70]), .ZN(
        MUL_5_mult_17_n596) );
  OAI22_X1 MUL_5_mult_17_U494 ( .A1(MUL_5_mult_17_n596), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n597), 
        .ZN(MUL_5_mult_17_n262) );
  XNOR2_X1 MUL_5_mult_17_U493 ( .A(SAMPLES[70]), .B(A[65]), .ZN(
        MUL_5_mult_17_n595) );
  OAI22_X1 MUL_5_mult_17_U492 ( .A1(MUL_5_mult_17_n595), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n596), 
        .ZN(MUL_5_mult_17_n263) );
  NOR2_X1 MUL_5_mult_17_U491 ( .A1(MUL_5_mult_17_n556), .A2(MUL_5_mult_17_n546), .ZN(MUL_5_mult_17_n264) );
  XOR2_X1 MUL_5_mult_17_U490 ( .A(A[77]), .B(MUL_5_mult_17_n541), .Z(
        MUL_5_mult_17_n553) );
  OAI22_X1 MUL_5_mult_17_U489 ( .A1(MUL_5_mult_17_n553), .A2(
        MUL_5_mult_17_n542), .B1(MUL_5_mult_17_n552), .B2(MUL_5_mult_17_n553), 
        .ZN(MUL_5_mult_17_n594) );
  XNOR2_X1 MUL_5_mult_17_U488 ( .A(A[75]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n593) );
  XNOR2_X1 MUL_5_mult_17_U487 ( .A(A[76]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n551) );
  OAI22_X1 MUL_5_mult_17_U486 ( .A1(MUL_5_mult_17_n593), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n551), 
        .ZN(MUL_5_mult_17_n266) );
  XNOR2_X1 MUL_5_mult_17_U485 ( .A(A[74]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n592) );
  OAI22_X1 MUL_5_mult_17_U484 ( .A1(MUL_5_mult_17_n592), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n593), 
        .ZN(MUL_5_mult_17_n267) );
  XNOR2_X1 MUL_5_mult_17_U483 ( .A(A[73]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n591) );
  OAI22_X1 MUL_5_mult_17_U482 ( .A1(MUL_5_mult_17_n591), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n592), 
        .ZN(MUL_5_mult_17_n268) );
  XNOR2_X1 MUL_5_mult_17_U481 ( .A(A[72]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n590) );
  OAI22_X1 MUL_5_mult_17_U480 ( .A1(MUL_5_mult_17_n590), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n591), 
        .ZN(MUL_5_mult_17_n269) );
  XNOR2_X1 MUL_5_mult_17_U479 ( .A(A[71]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n589) );
  OAI22_X1 MUL_5_mult_17_U478 ( .A1(MUL_5_mult_17_n589), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n590), 
        .ZN(MUL_5_mult_17_n270) );
  XNOR2_X1 MUL_5_mult_17_U477 ( .A(A[70]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n588) );
  OAI22_X1 MUL_5_mult_17_U476 ( .A1(MUL_5_mult_17_n588), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n589), 
        .ZN(MUL_5_mult_17_n271) );
  XNOR2_X1 MUL_5_mult_17_U475 ( .A(A[69]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n587) );
  OAI22_X1 MUL_5_mult_17_U474 ( .A1(MUL_5_mult_17_n587), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n588), 
        .ZN(MUL_5_mult_17_n272) );
  XNOR2_X1 MUL_5_mult_17_U473 ( .A(A[68]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n586) );
  OAI22_X1 MUL_5_mult_17_U472 ( .A1(MUL_5_mult_17_n586), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n587), 
        .ZN(MUL_5_mult_17_n273) );
  XNOR2_X1 MUL_5_mult_17_U471 ( .A(A[67]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n585) );
  OAI22_X1 MUL_5_mult_17_U470 ( .A1(MUL_5_mult_17_n585), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n586), 
        .ZN(MUL_5_mult_17_n274) );
  XNOR2_X1 MUL_5_mult_17_U469 ( .A(A[66]), .B(SAMPLES[68]), .ZN(
        MUL_5_mult_17_n584) );
  OAI22_X1 MUL_5_mult_17_U468 ( .A1(MUL_5_mult_17_n584), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n585), 
        .ZN(MUL_5_mult_17_n275) );
  XNOR2_X1 MUL_5_mult_17_U467 ( .A(SAMPLES[68]), .B(A[65]), .ZN(
        MUL_5_mult_17_n583) );
  OAI22_X1 MUL_5_mult_17_U466 ( .A1(MUL_5_mult_17_n583), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n584), 
        .ZN(MUL_5_mult_17_n276) );
  XNOR2_X1 MUL_5_mult_17_U465 ( .A(A[77]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n581) );
  OAI22_X1 MUL_5_mult_17_U464 ( .A1(MUL_5_mult_17_n544), .A2(
        MUL_5_mult_17_n581), .B1(MUL_5_mult_17_n571), .B2(MUL_5_mult_17_n581), 
        .ZN(MUL_5_mult_17_n582) );
  XNOR2_X1 MUL_5_mult_17_U463 ( .A(A[76]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n580) );
  OAI22_X1 MUL_5_mult_17_U462 ( .A1(MUL_5_mult_17_n580), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n581), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n279) );
  XNOR2_X1 MUL_5_mult_17_U461 ( .A(A[75]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n579) );
  OAI22_X1 MUL_5_mult_17_U460 ( .A1(MUL_5_mult_17_n579), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n580), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n280) );
  XNOR2_X1 MUL_5_mult_17_U459 ( .A(A[74]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n578) );
  OAI22_X1 MUL_5_mult_17_U458 ( .A1(MUL_5_mult_17_n578), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n579), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n281) );
  XNOR2_X1 MUL_5_mult_17_U457 ( .A(A[73]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n577) );
  OAI22_X1 MUL_5_mult_17_U456 ( .A1(MUL_5_mult_17_n577), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n578), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n282) );
  XNOR2_X1 MUL_5_mult_17_U455 ( .A(A[72]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n576) );
  OAI22_X1 MUL_5_mult_17_U454 ( .A1(MUL_5_mult_17_n576), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n577), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n283) );
  XNOR2_X1 MUL_5_mult_17_U453 ( .A(A[71]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n575) );
  OAI22_X1 MUL_5_mult_17_U452 ( .A1(MUL_5_mult_17_n575), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n576), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n284) );
  XNOR2_X1 MUL_5_mult_17_U451 ( .A(A[70]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n574) );
  OAI22_X1 MUL_5_mult_17_U450 ( .A1(MUL_5_mult_17_n574), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n575), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n285) );
  XNOR2_X1 MUL_5_mult_17_U449 ( .A(A[69]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n573) );
  OAI22_X1 MUL_5_mult_17_U448 ( .A1(MUL_5_mult_17_n573), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n574), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n286) );
  XNOR2_X1 MUL_5_mult_17_U447 ( .A(A[68]), .B(SAMPLES[66]), .ZN(
        MUL_5_mult_17_n572) );
  OAI22_X1 MUL_5_mult_17_U446 ( .A1(MUL_5_mult_17_n572), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n573), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n287) );
  OAI22_X1 MUL_5_mult_17_U445 ( .A1(MUL_5_mult_17_n570), .A2(
        MUL_5_mult_17_n571), .B1(MUL_5_mult_17_n572), .B2(MUL_5_mult_17_n544), 
        .ZN(MUL_5_mult_17_n288) );
  XNOR2_X1 MUL_5_mult_17_U444 ( .A(A[77]), .B(MUL_5_mult_17_n514), .ZN(
        MUL_5_mult_17_n550) );
  NAND2_X1 MUL_5_mult_17_U443 ( .A1(MUL_5_mult_17_n550), .A2(
        MUL_5_mult_17_n549), .ZN(MUL_5_mult_17_n29) );
  OAI22_X1 MUL_5_mult_17_U442 ( .A1(MUL_5_mult_17_n566), .A2(
        MUL_5_mult_17_n567), .B1(MUL_5_mult_17_n568), .B2(MUL_5_mult_17_n569), 
        .ZN(MUL_5_mult_17_n34) );
  OAI22_X1 MUL_5_mult_17_U441 ( .A1(MUL_5_mult_17_n562), .A2(
        MUL_5_mult_17_n563), .B1(MUL_5_mult_17_n564), .B2(MUL_5_mult_17_n565), 
        .ZN(MUL_5_mult_17_n44) );
  OAI22_X1 MUL_5_mult_17_U440 ( .A1(MUL_5_mult_17_n558), .A2(
        MUL_5_mult_17_n559), .B1(MUL_5_mult_17_n560), .B2(MUL_5_mult_17_n561), 
        .ZN(MUL_5_mult_17_n58) );
  OAI22_X1 MUL_5_mult_17_U439 ( .A1(MUL_5_mult_17_n554), .A2(
        MUL_5_mult_17_n555), .B1(MUL_5_mult_17_n556), .B2(MUL_5_mult_17_n557), 
        .ZN(MUL_5_mult_17_n76) );
  OAI22_X1 MUL_5_mult_17_U438 ( .A1(MUL_5_mult_17_n551), .A2(
        MUL_5_mult_17_n552), .B1(MUL_5_mult_17_n542), .B2(MUL_5_mult_17_n553), 
        .ZN(MUL_5_mult_17_n98) );
  NOR2_X1 MUL_5_mult_17_U437 ( .A1(MUL_5_mult_17_n544), .A2(MUL_5_mult_17_n546), .ZN(MUL_5_O_0_) );
  XOR2_X1 MUL_5_mult_17_U436 ( .A(MUL_5_mult_17_n29), .B(MUL_5_mult_17_n4), 
        .Z(MUL_5_mult_17_n547) );
  AND2_X1 MUL_5_mult_17_U435 ( .A1(MUL_5_mult_17_n549), .A2(MUL_5_mult_17_n550), .ZN(MUL_5_mult_17_n548) );
  XOR2_X1 MUL_5_mult_17_U434 ( .A(MUL_5_mult_17_n547), .B(MUL_5_mult_17_n548), 
        .Z(TRUNCATED_MULT_RES_5__7_) );
  XOR2_X2 MUL_5_mult_17_U433 ( .A(SAMPLES[75]), .B(MUL_5_mult_17_n526), .Z(
        MUL_5_mult_17_n568) );
  XOR2_X2 MUL_5_mult_17_U432 ( .A(SAMPLES[73]), .B(MUL_5_mult_17_n531), .Z(
        MUL_5_mult_17_n564) );
  XOR2_X2 MUL_5_mult_17_U431 ( .A(SAMPLES[71]), .B(MUL_5_mult_17_n536), .Z(
        MUL_5_mult_17_n560) );
  XOR2_X2 MUL_5_mult_17_U430 ( .A(SAMPLES[69]), .B(MUL_5_mult_17_n541), .Z(
        MUL_5_mult_17_n556) );
  INV_X1 MUL_5_mult_17_U429 ( .A(MUL_5_mult_17_n642), .ZN(MUL_5_mult_17_n519)
         );
  INV_X1 MUL_5_mult_17_U428 ( .A(MUL_5_mult_17_n34), .ZN(MUL_5_mult_17_n518)
         );
  INV_X1 MUL_5_mult_17_U427 ( .A(MUL_5_mult_17_n594), .ZN(MUL_5_mult_17_n540)
         );
  INV_X1 MUL_5_mult_17_U426 ( .A(SAMPLES[77]), .ZN(MUL_5_mult_17_n514) );
  INV_X1 MUL_5_mult_17_U425 ( .A(SAMPLES[76]), .ZN(MUL_5_mult_17_n521) );
  INV_X1 MUL_5_mult_17_U424 ( .A(SAMPLES[74]), .ZN(MUL_5_mult_17_n526) );
  INV_X1 MUL_5_mult_17_U423 ( .A(SAMPLES[72]), .ZN(MUL_5_mult_17_n531) );
  INV_X1 MUL_5_mult_17_U422 ( .A(A[66]), .ZN(MUL_5_mult_17_n545) );
  AND3_X1 MUL_5_mult_17_U421 ( .A1(MUL_5_mult_17_n683), .A2(MUL_5_mult_17_n545), .A3(SAMPLES[66]), .ZN(MUL_5_mult_17_n508) );
  AND2_X1 MUL_5_mult_17_U420 ( .A1(MUL_5_mult_17_n681), .A2(MUL_5_mult_17_n683), .ZN(MUL_5_mult_17_n507) );
  MUX2_X1 MUL_5_mult_17_U419 ( .A(MUL_5_mult_17_n507), .B(MUL_5_mult_17_n508), 
        .S(MUL_5_mult_17_n546), .Z(MUL_5_mult_17_n506) );
  INV_X1 MUL_5_mult_17_U418 ( .A(A[65]), .ZN(MUL_5_mult_17_n546) );
  INV_X1 MUL_5_mult_17_U417 ( .A(SAMPLES[70]), .ZN(MUL_5_mult_17_n536) );
  INV_X1 MUL_5_mult_17_U416 ( .A(SAMPLES[68]), .ZN(MUL_5_mult_17_n541) );
  INV_X1 MUL_5_mult_17_U415 ( .A(SAMPLES[65]), .ZN(MUL_5_mult_17_n544) );
  INV_X1 MUL_5_mult_17_U414 ( .A(MUL_5_mult_17_n76), .ZN(MUL_5_mult_17_n534)
         );
  INV_X1 MUL_5_mult_17_U413 ( .A(MUL_5_mult_17_n630), .ZN(MUL_5_mult_17_n525)
         );
  INV_X1 MUL_5_mult_17_U412 ( .A(MUL_5_mult_17_n606), .ZN(MUL_5_mult_17_n535)
         );
  INV_X1 MUL_5_mult_17_U411 ( .A(MUL_5_mult_17_n618), .ZN(MUL_5_mult_17_n530)
         );
  INV_X1 MUL_5_mult_17_U410 ( .A(MUL_5_mult_17_n44), .ZN(MUL_5_mult_17_n524)
         );
  INV_X1 MUL_5_mult_17_U409 ( .A(MUL_5_mult_17_n662), .ZN(MUL_5_mult_17_n520)
         );
  INV_X1 MUL_5_mult_17_U408 ( .A(MUL_5_mult_17_n98), .ZN(MUL_5_mult_17_n539)
         );
  INV_X1 MUL_5_mult_17_U407 ( .A(MUL_5_mult_17_n582), .ZN(MUL_5_mult_17_n543)
         );
  INV_X1 MUL_5_mult_17_U406 ( .A(MUL_5_mult_17_n549), .ZN(MUL_5_mult_17_n516)
         );
  INV_X1 MUL_5_mult_17_U405 ( .A(MUL_5_mult_17_n681), .ZN(MUL_5_mult_17_n542)
         );
  INV_X1 MUL_5_mult_17_U404 ( .A(MUL_5_mult_17_n678), .ZN(MUL_5_mult_17_n538)
         );
  INV_X1 MUL_5_mult_17_U403 ( .A(MUL_5_mult_17_n677), .ZN(MUL_5_mult_17_n537)
         );
  INV_X1 MUL_5_mult_17_U402 ( .A(MUL_5_mult_17_n58), .ZN(MUL_5_mult_17_n529)
         );
  INV_X1 MUL_5_mult_17_U401 ( .A(MUL_5_mult_17_n674), .ZN(MUL_5_mult_17_n528)
         );
  INV_X1 MUL_5_mult_17_U400 ( .A(MUL_5_mult_17_n673), .ZN(MUL_5_mult_17_n527)
         );
  INV_X1 MUL_5_mult_17_U399 ( .A(MUL_5_mult_17_n676), .ZN(MUL_5_mult_17_n533)
         );
  INV_X1 MUL_5_mult_17_U398 ( .A(MUL_5_mult_17_n675), .ZN(MUL_5_mult_17_n532)
         );
  INV_X1 MUL_5_mult_17_U397 ( .A(MUL_5_mult_17_n664), .ZN(MUL_5_mult_17_n509)
         );
  INV_X1 MUL_5_mult_17_U396 ( .A(MUL_5_mult_17_n666), .ZN(MUL_5_mult_17_n511)
         );
  INV_X1 MUL_5_mult_17_U395 ( .A(MUL_5_mult_17_n665), .ZN(MUL_5_mult_17_n510)
         );
  INV_X1 MUL_5_mult_17_U394 ( .A(MUL_5_mult_17_n670), .ZN(MUL_5_mult_17_n517)
         );
  INV_X1 MUL_5_mult_17_U393 ( .A(MUL_5_mult_17_n669), .ZN(MUL_5_mult_17_n515)
         );
  INV_X1 MUL_5_mult_17_U392 ( .A(MUL_5_mult_17_n668), .ZN(MUL_5_mult_17_n513)
         );
  INV_X1 MUL_5_mult_17_U391 ( .A(MUL_5_mult_17_n667), .ZN(MUL_5_mult_17_n512)
         );
  INV_X1 MUL_5_mult_17_U390 ( .A(MUL_5_mult_17_n672), .ZN(MUL_5_mult_17_n523)
         );
  INV_X1 MUL_5_mult_17_U389 ( .A(MUL_5_mult_17_n671), .ZN(MUL_5_mult_17_n522)
         );
  HA_X1 MUL_5_mult_17_U101 ( .A(MUL_5_mult_17_n276), .B(MUL_5_mult_17_n288), 
        .CO(MUL_5_mult_17_n170), .S(MUL_5_mult_17_n171) );
  FA_X1 MUL_5_mult_17_U100 ( .A(MUL_5_mult_17_n287), .B(MUL_5_mult_17_n264), 
        .CI(MUL_5_mult_17_n275), .CO(MUL_5_mult_17_n168), .S(
        MUL_5_mult_17_n169) );
  HA_X1 MUL_5_mult_17_U99 ( .A(MUL_5_mult_17_n197), .B(MUL_5_mult_17_n263), 
        .CO(MUL_5_mult_17_n166), .S(MUL_5_mult_17_n167) );
  FA_X1 MUL_5_mult_17_U98 ( .A(MUL_5_mult_17_n274), .B(MUL_5_mult_17_n286), 
        .CI(MUL_5_mult_17_n167), .CO(MUL_5_mult_17_n164), .S(
        MUL_5_mult_17_n165) );
  FA_X1 MUL_5_mult_17_U97 ( .A(MUL_5_mult_17_n285), .B(MUL_5_mult_17_n251), 
        .CI(MUL_5_mult_17_n273), .CO(MUL_5_mult_17_n162), .S(
        MUL_5_mult_17_n163) );
  FA_X1 MUL_5_mult_17_U96 ( .A(MUL_5_mult_17_n166), .B(MUL_5_mult_17_n262), 
        .CI(MUL_5_mult_17_n163), .CO(MUL_5_mult_17_n160), .S(
        MUL_5_mult_17_n161) );
  HA_X1 MUL_5_mult_17_U95 ( .A(MUL_5_mult_17_n196), .B(MUL_5_mult_17_n250), 
        .CO(MUL_5_mult_17_n158), .S(MUL_5_mult_17_n159) );
  FA_X1 MUL_5_mult_17_U94 ( .A(MUL_5_mult_17_n261), .B(MUL_5_mult_17_n284), 
        .CI(MUL_5_mult_17_n272), .CO(MUL_5_mult_17_n156), .S(
        MUL_5_mult_17_n157) );
  FA_X1 MUL_5_mult_17_U93 ( .A(MUL_5_mult_17_n162), .B(MUL_5_mult_17_n159), 
        .CI(MUL_5_mult_17_n157), .CO(MUL_5_mult_17_n154), .S(
        MUL_5_mult_17_n155) );
  FA_X1 MUL_5_mult_17_U92 ( .A(MUL_5_mult_17_n260), .B(MUL_5_mult_17_n238), 
        .CI(MUL_5_mult_17_n283), .CO(MUL_5_mult_17_n152), .S(
        MUL_5_mult_17_n153) );
  FA_X1 MUL_5_mult_17_U91 ( .A(MUL_5_mult_17_n249), .B(MUL_5_mult_17_n271), 
        .CI(MUL_5_mult_17_n158), .CO(MUL_5_mult_17_n150), .S(
        MUL_5_mult_17_n151) );
  FA_X1 MUL_5_mult_17_U90 ( .A(MUL_5_mult_17_n153), .B(MUL_5_mult_17_n156), 
        .CI(MUL_5_mult_17_n151), .CO(MUL_5_mult_17_n148), .S(
        MUL_5_mult_17_n149) );
  HA_X1 MUL_5_mult_17_U89 ( .A(MUL_5_mult_17_n195), .B(MUL_5_mult_17_n237), 
        .CO(MUL_5_mult_17_n146), .S(MUL_5_mult_17_n147) );
  FA_X1 MUL_5_mult_17_U88 ( .A(MUL_5_mult_17_n248), .B(MUL_5_mult_17_n259), 
        .CI(MUL_5_mult_17_n270), .CO(MUL_5_mult_17_n144), .S(
        MUL_5_mult_17_n145) );
  FA_X1 MUL_5_mult_17_U87 ( .A(MUL_5_mult_17_n147), .B(MUL_5_mult_17_n282), 
        .CI(MUL_5_mult_17_n152), .CO(MUL_5_mult_17_n142), .S(
        MUL_5_mult_17_n143) );
  FA_X1 MUL_5_mult_17_U86 ( .A(MUL_5_mult_17_n145), .B(MUL_5_mult_17_n150), 
        .CI(MUL_5_mult_17_n143), .CO(MUL_5_mult_17_n140), .S(
        MUL_5_mult_17_n141) );
  FA_X1 MUL_5_mult_17_U85 ( .A(MUL_5_mult_17_n247), .B(MUL_5_mult_17_n225), 
        .CI(MUL_5_mult_17_n281), .CO(MUL_5_mult_17_n138), .S(
        MUL_5_mult_17_n139) );
  FA_X1 MUL_5_mult_17_U84 ( .A(MUL_5_mult_17_n236), .B(MUL_5_mult_17_n269), 
        .CI(MUL_5_mult_17_n258), .CO(MUL_5_mult_17_n136), .S(
        MUL_5_mult_17_n137) );
  FA_X1 MUL_5_mult_17_U83 ( .A(MUL_5_mult_17_n144), .B(MUL_5_mult_17_n146), 
        .CI(MUL_5_mult_17_n139), .CO(MUL_5_mult_17_n134), .S(
        MUL_5_mult_17_n135) );
  FA_X1 MUL_5_mult_17_U82 ( .A(MUL_5_mult_17_n142), .B(MUL_5_mult_17_n137), 
        .CI(MUL_5_mult_17_n135), .CO(MUL_5_mult_17_n132), .S(
        MUL_5_mult_17_n133) );
  HA_X1 MUL_5_mult_17_U81 ( .A(MUL_5_mult_17_n194), .B(MUL_5_mult_17_n224), 
        .CO(MUL_5_mult_17_n130), .S(MUL_5_mult_17_n131) );
  FA_X1 MUL_5_mult_17_U80 ( .A(MUL_5_mult_17_n235), .B(MUL_5_mult_17_n257), 
        .CI(MUL_5_mult_17_n280), .CO(MUL_5_mult_17_n128), .S(
        MUL_5_mult_17_n129) );
  FA_X1 MUL_5_mult_17_U79 ( .A(MUL_5_mult_17_n246), .B(MUL_5_mult_17_n268), 
        .CI(MUL_5_mult_17_n131), .CO(MUL_5_mult_17_n126), .S(
        MUL_5_mult_17_n127) );
  FA_X1 MUL_5_mult_17_U78 ( .A(MUL_5_mult_17_n136), .B(MUL_5_mult_17_n138), 
        .CI(MUL_5_mult_17_n129), .CO(MUL_5_mult_17_n124), .S(
        MUL_5_mult_17_n125) );
  FA_X1 MUL_5_mult_17_U77 ( .A(MUL_5_mult_17_n134), .B(MUL_5_mult_17_n127), 
        .CI(MUL_5_mult_17_n125), .CO(MUL_5_mult_17_n122), .S(
        MUL_5_mult_17_n123) );
  FA_X1 MUL_5_mult_17_U76 ( .A(MUL_5_mult_17_n234), .B(MUL_5_mult_17_n212), 
        .CI(MUL_5_mult_17_n279), .CO(MUL_5_mult_17_n120), .S(
        MUL_5_mult_17_n121) );
  FA_X1 MUL_5_mult_17_U75 ( .A(MUL_5_mult_17_n223), .B(MUL_5_mult_17_n267), 
        .CI(MUL_5_mult_17_n245), .CO(MUL_5_mult_17_n118), .S(
        MUL_5_mult_17_n119) );
  FA_X1 MUL_5_mult_17_U74 ( .A(MUL_5_mult_17_n130), .B(MUL_5_mult_17_n256), 
        .CI(MUL_5_mult_17_n128), .CO(MUL_5_mult_17_n116), .S(
        MUL_5_mult_17_n117) );
  FA_X1 MUL_5_mult_17_U73 ( .A(MUL_5_mult_17_n119), .B(MUL_5_mult_17_n121), 
        .CI(MUL_5_mult_17_n126), .CO(MUL_5_mult_17_n114), .S(
        MUL_5_mult_17_n115) );
  FA_X1 MUL_5_mult_17_U72 ( .A(MUL_5_mult_17_n117), .B(MUL_5_mult_17_n124), 
        .CI(MUL_5_mult_17_n115), .CO(MUL_5_mult_17_n112), .S(
        MUL_5_mult_17_n113) );
  FA_X1 MUL_5_mult_17_U69 ( .A(MUL_5_mult_17_n233), .B(MUL_5_mult_17_n244), 
        .CI(MUL_5_mult_17_n543), .CO(MUL_5_mult_17_n108), .S(
        MUL_5_mult_17_n109) );
  FA_X1 MUL_5_mult_17_U68 ( .A(MUL_5_mult_17_n193), .B(MUL_5_mult_17_n266), 
        .CI(MUL_5_mult_17_n255), .CO(MUL_5_mult_17_n106), .S(
        MUL_5_mult_17_n107) );
  FA_X1 MUL_5_mult_17_U67 ( .A(MUL_5_mult_17_n120), .B(MUL_5_mult_17_n111), 
        .CI(MUL_5_mult_17_n118), .CO(MUL_5_mult_17_n104), .S(
        MUL_5_mult_17_n105) );
  FA_X1 MUL_5_mult_17_U66 ( .A(MUL_5_mult_17_n109), .B(MUL_5_mult_17_n107), 
        .CI(MUL_5_mult_17_n116), .CO(MUL_5_mult_17_n102), .S(
        MUL_5_mult_17_n103) );
  FA_X1 MUL_5_mult_17_U65 ( .A(MUL_5_mult_17_n114), .B(MUL_5_mult_17_n105), 
        .CI(MUL_5_mult_17_n103), .CO(MUL_5_mult_17_n100), .S(
        MUL_5_mult_17_n101) );
  FA_X1 MUL_5_mult_17_U63 ( .A(MUL_5_mult_17_n210), .B(MUL_5_mult_17_n221), 
        .CI(MUL_5_mult_17_n254), .CO(MUL_5_mult_17_n96), .S(MUL_5_mult_17_n97)
         );
  FA_X1 MUL_5_mult_17_U62 ( .A(MUL_5_mult_17_n232), .B(MUL_5_mult_17_n243), 
        .CI(MUL_5_mult_17_n539), .CO(MUL_5_mult_17_n94), .S(MUL_5_mult_17_n95)
         );
  FA_X1 MUL_5_mult_17_U61 ( .A(MUL_5_mult_17_n108), .B(MUL_5_mult_17_n110), 
        .CI(MUL_5_mult_17_n106), .CO(MUL_5_mult_17_n92), .S(MUL_5_mult_17_n93)
         );
  FA_X1 MUL_5_mult_17_U60 ( .A(MUL_5_mult_17_n95), .B(MUL_5_mult_17_n97), .CI(
        MUL_5_mult_17_n104), .CO(MUL_5_mult_17_n90), .S(MUL_5_mult_17_n91) );
  FA_X1 MUL_5_mult_17_U59 ( .A(MUL_5_mult_17_n102), .B(MUL_5_mult_17_n93), 
        .CI(MUL_5_mult_17_n91), .CO(MUL_5_mult_17_n88), .S(MUL_5_mult_17_n89)
         );
  FA_X1 MUL_5_mult_17_U58 ( .A(MUL_5_mult_17_n98), .B(MUL_5_mult_17_n209), 
        .CI(MUL_5_mult_17_n540), .CO(MUL_5_mult_17_n86), .S(MUL_5_mult_17_n87)
         );
  FA_X1 MUL_5_mult_17_U57 ( .A(MUL_5_mult_17_n220), .B(MUL_5_mult_17_n253), 
        .CI(MUL_5_mult_17_n231), .CO(MUL_5_mult_17_n84), .S(MUL_5_mult_17_n85)
         );
  FA_X1 MUL_5_mult_17_U56 ( .A(MUL_5_mult_17_n96), .B(MUL_5_mult_17_n242), 
        .CI(MUL_5_mult_17_n94), .CO(MUL_5_mult_17_n82), .S(MUL_5_mult_17_n83)
         );
  FA_X1 MUL_5_mult_17_U55 ( .A(MUL_5_mult_17_n87), .B(MUL_5_mult_17_n85), .CI(
        MUL_5_mult_17_n92), .CO(MUL_5_mult_17_n80), .S(MUL_5_mult_17_n81) );
  FA_X1 MUL_5_mult_17_U54 ( .A(MUL_5_mult_17_n90), .B(MUL_5_mult_17_n83), .CI(
        MUL_5_mult_17_n81), .CO(MUL_5_mult_17_n78), .S(MUL_5_mult_17_n79) );
  FA_X1 MUL_5_mult_17_U52 ( .A(MUL_5_mult_17_n241), .B(MUL_5_mult_17_n219), 
        .CI(MUL_5_mult_17_n208), .CO(MUL_5_mult_17_n74), .S(MUL_5_mult_17_n75)
         );
  FA_X1 MUL_5_mult_17_U51 ( .A(MUL_5_mult_17_n534), .B(MUL_5_mult_17_n230), 
        .CI(MUL_5_mult_17_n86), .CO(MUL_5_mult_17_n72), .S(MUL_5_mult_17_n73)
         );
  FA_X1 MUL_5_mult_17_U50 ( .A(MUL_5_mult_17_n75), .B(MUL_5_mult_17_n84), .CI(
        MUL_5_mult_17_n82), .CO(MUL_5_mult_17_n70), .S(MUL_5_mult_17_n71) );
  FA_X1 MUL_5_mult_17_U49 ( .A(MUL_5_mult_17_n80), .B(MUL_5_mult_17_n73), .CI(
        MUL_5_mult_17_n71), .CO(MUL_5_mult_17_n68), .S(MUL_5_mult_17_n69) );
  FA_X1 MUL_5_mult_17_U48 ( .A(MUL_5_mult_17_n240), .B(MUL_5_mult_17_n207), 
        .CI(MUL_5_mult_17_n535), .CO(MUL_5_mult_17_n66), .S(MUL_5_mult_17_n67)
         );
  FA_X1 MUL_5_mult_17_U47 ( .A(MUL_5_mult_17_n218), .B(MUL_5_mult_17_n76), 
        .CI(MUL_5_mult_17_n229), .CO(MUL_5_mult_17_n64), .S(MUL_5_mult_17_n65)
         );
  FA_X1 MUL_5_mult_17_U46 ( .A(MUL_5_mult_17_n65), .B(MUL_5_mult_17_n74), .CI(
        MUL_5_mult_17_n67), .CO(MUL_5_mult_17_n62), .S(MUL_5_mult_17_n63) );
  FA_X1 MUL_5_mult_17_U45 ( .A(MUL_5_mult_17_n70), .B(MUL_5_mult_17_n72), .CI(
        MUL_5_mult_17_n63), .CO(MUL_5_mult_17_n60), .S(MUL_5_mult_17_n61) );
  FA_X1 MUL_5_mult_17_U43 ( .A(MUL_5_mult_17_n206), .B(MUL_5_mult_17_n217), 
        .CI(MUL_5_mult_17_n228), .CO(MUL_5_mult_17_n56), .S(MUL_5_mult_17_n57)
         );
  FA_X1 MUL_5_mult_17_U42 ( .A(MUL_5_mult_17_n66), .B(MUL_5_mult_17_n529), 
        .CI(MUL_5_mult_17_n64), .CO(MUL_5_mult_17_n54), .S(MUL_5_mult_17_n55)
         );
  FA_X1 MUL_5_mult_17_U41 ( .A(MUL_5_mult_17_n55), .B(MUL_5_mult_17_n57), .CI(
        MUL_5_mult_17_n62), .CO(MUL_5_mult_17_n52), .S(MUL_5_mult_17_n53) );
  FA_X1 MUL_5_mult_17_U40 ( .A(MUL_5_mult_17_n216), .B(MUL_5_mult_17_n205), 
        .CI(MUL_5_mult_17_n530), .CO(MUL_5_mult_17_n50), .S(MUL_5_mult_17_n51)
         );
  FA_X1 MUL_5_mult_17_U39 ( .A(MUL_5_mult_17_n58), .B(MUL_5_mult_17_n227), 
        .CI(MUL_5_mult_17_n56), .CO(MUL_5_mult_17_n48), .S(MUL_5_mult_17_n49)
         );
  FA_X1 MUL_5_mult_17_U38 ( .A(MUL_5_mult_17_n54), .B(MUL_5_mult_17_n51), .CI(
        MUL_5_mult_17_n49), .CO(MUL_5_mult_17_n46), .S(MUL_5_mult_17_n47) );
  FA_X1 MUL_5_mult_17_U36 ( .A(MUL_5_mult_17_n204), .B(MUL_5_mult_17_n215), 
        .CI(MUL_5_mult_17_n524), .CO(MUL_5_mult_17_n42), .S(MUL_5_mult_17_n43)
         );
  FA_X1 MUL_5_mult_17_U35 ( .A(MUL_5_mult_17_n43), .B(MUL_5_mult_17_n50), .CI(
        MUL_5_mult_17_n48), .CO(MUL_5_mult_17_n40), .S(MUL_5_mult_17_n41) );
  FA_X1 MUL_5_mult_17_U34 ( .A(MUL_5_mult_17_n214), .B(MUL_5_mult_17_n44), 
        .CI(MUL_5_mult_17_n525), .CO(MUL_5_mult_17_n38), .S(MUL_5_mult_17_n39)
         );
  FA_X1 MUL_5_mult_17_U33 ( .A(MUL_5_mult_17_n42), .B(MUL_5_mult_17_n203), 
        .CI(MUL_5_mult_17_n39), .CO(MUL_5_mult_17_n36), .S(MUL_5_mult_17_n37)
         );
  FA_X1 MUL_5_mult_17_U31 ( .A(MUL_5_mult_17_n518), .B(MUL_5_mult_17_n202), 
        .CI(MUL_5_mult_17_n38), .CO(MUL_5_mult_17_n32), .S(MUL_5_mult_17_n33)
         );
  FA_X1 MUL_5_mult_17_U30 ( .A(MUL_5_mult_17_n201), .B(MUL_5_mult_17_n34), 
        .CI(MUL_5_mult_17_n519), .CO(MUL_5_mult_17_n30), .S(MUL_5_mult_17_n31)
         );
  FA_X1 MUL_5_mult_17_U11 ( .A(MUL_5_mult_17_n53), .B(MUL_5_mult_17_n60), .CI(
        MUL_5_mult_17_n509), .CO(MUL_5_mult_17_n10), .S(
        TRUNCATED_MULT_RES_5__0_) );
  FA_X1 MUL_5_mult_17_U10 ( .A(MUL_5_mult_17_n47), .B(MUL_5_mult_17_n52), .CI(
        MUL_5_mult_17_n10), .CO(MUL_5_mult_17_n9), .S(TRUNCATED_MULT_RES_5__1_) );
  FA_X1 MUL_5_mult_17_U9 ( .A(MUL_5_mult_17_n41), .B(MUL_5_mult_17_n46), .CI(
        MUL_5_mult_17_n9), .CO(MUL_5_mult_17_n8), .S(TRUNCATED_MULT_RES_5__2_)
         );
  FA_X1 MUL_5_mult_17_U8 ( .A(MUL_5_mult_17_n37), .B(MUL_5_mult_17_n40), .CI(
        MUL_5_mult_17_n8), .CO(MUL_5_mult_17_n7), .S(TRUNCATED_MULT_RES_5__3_)
         );
  FA_X1 MUL_5_mult_17_U7 ( .A(MUL_5_mult_17_n33), .B(MUL_5_mult_17_n36), .CI(
        MUL_5_mult_17_n7), .CO(MUL_5_mult_17_n6), .S(TRUNCATED_MULT_RES_5__4_)
         );
  FA_X1 MUL_5_mult_17_U6 ( .A(MUL_5_mult_17_n32), .B(MUL_5_mult_17_n31), .CI(
        MUL_5_mult_17_n6), .CO(MUL_5_mult_17_n5), .S(TRUNCATED_MULT_RES_5__5_)
         );
  FA_X1 MUL_5_mult_17_U5 ( .A(MUL_5_mult_17_n30), .B(MUL_5_mult_17_n29), .CI(
        MUL_5_mult_17_n5), .CO(MUL_5_mult_17_n4), .S(TRUNCATED_MULT_RES_5__6_)
         );
  XOR2_X1 ADD_5_add_18_U2 ( .A(SUM_RESULTS_4__0_), .B(TRUNCATED_MULT_RES_5__0_), .Z(SUM_RESULTS_5__0_) );
  AND2_X1 ADD_5_add_18_U1 ( .A1(SUM_RESULTS_4__0_), .A2(
        TRUNCATED_MULT_RES_5__0_), .ZN(ADD_5_add_18_n1) );
  FA_X1 ADD_5_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_5__1_), .B(SUM_RESULTS_4__1_), .CI(ADD_5_add_18_n1), .CO(ADD_5_add_18_carry[2]), .S(SUM_RESULTS_5__1_) );
  FA_X1 ADD_5_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_5__2_), .B(SUM_RESULTS_4__2_), .CI(ADD_5_add_18_carry[2]), .CO(ADD_5_add_18_carry[3]), .S(SUM_RESULTS_5__2_) );
  FA_X1 ADD_5_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_5__3_), .B(SUM_RESULTS_4__3_), .CI(ADD_5_add_18_carry[3]), .CO(ADD_5_add_18_carry[4]), .S(SUM_RESULTS_5__3_) );
  FA_X1 ADD_5_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_5__4_), .B(SUM_RESULTS_4__4_), .CI(ADD_5_add_18_carry[4]), .CO(ADD_5_add_18_carry[5]), .S(SUM_RESULTS_5__4_) );
  FA_X1 ADD_5_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_5__5_), .B(SUM_RESULTS_4__5_), .CI(ADD_5_add_18_carry[5]), .CO(ADD_5_add_18_carry[6]), .S(SUM_RESULTS_5__5_) );
  FA_X1 ADD_5_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_5__6_), .B(SUM_RESULTS_4__6_), .CI(ADD_5_add_18_carry[6]), .CO(ADD_5_add_18_carry[7]), .S(SUM_RESULTS_5__6_) );
  FA_X1 ADD_5_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_5__7_), .B(SUM_RESULTS_4__7_), .CI(ADD_5_add_18_carry[7]), .CO(ADD_5_add_18_carry[8]), .S(SUM_RESULTS_5__7_) );
  FA_X1 ADD_5_add_18_U1_8 ( .A(TRUNCATED_MULT_RES_5__7_), .B(SUM_RESULTS_4__8_), .CI(ADD_5_add_18_carry[8]), .CO(ADD_5_add_18_carry[9]), .S(SUM_RESULTS_5__8_) );
  FA_X1 ADD_5_add_18_U1_9 ( .A(TRUNCATED_MULT_RES_5__7_), .B(
        SUM_RESULTS_4__12_), .CI(ADD_5_add_18_carry[9]), .S(SUM_RESULTS_5__12_) );
  BUF_X1 SAMPLE_REG_6_U31 ( .A(n545), .Z(SAMPLE_REG_6_n42) );
  NAND2_X1 SAMPLE_REG_6_U30 ( .A1(SAMPLE_REG_6_n42), .A2(SAMPLES[65]), .ZN(
        SAMPLE_REG_6_n82) );
  OAI21_X1 SAMPLE_REG_6_U29 ( .B1(SAMPLE_REG_6_n69), .B2(SAMPLE_REG_6_n42), 
        .A(SAMPLE_REG_6_n82), .ZN(SAMPLE_REG_6_n56) );
  NAND2_X1 SAMPLE_REG_6_U28 ( .A1(SAMPLES[67]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n80) );
  OAI21_X1 SAMPLE_REG_6_U27 ( .B1(SAMPLE_REG_6_n67), .B2(SAMPLE_REG_6_n41), 
        .A(SAMPLE_REG_6_n80), .ZN(SAMPLE_REG_6_n54) );
  NAND2_X1 SAMPLE_REG_6_U26 ( .A1(SAMPLES[77]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n70) );
  OAI21_X1 SAMPLE_REG_6_U25 ( .B1(SAMPLE_REG_6_n57), .B2(SAMPLE_REG_6_n41), 
        .A(SAMPLE_REG_6_n70), .ZN(SAMPLE_REG_6_n44) );
  NAND2_X1 SAMPLE_REG_6_U24 ( .A1(SAMPLES[76]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n71) );
  OAI21_X1 SAMPLE_REG_6_U23 ( .B1(SAMPLE_REG_6_n58), .B2(SAMPLE_REG_6_n41), 
        .A(SAMPLE_REG_6_n71), .ZN(SAMPLE_REG_6_n45) );
  NAND2_X1 SAMPLE_REG_6_U22 ( .A1(SAMPLES[75]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n72) );
  OAI21_X1 SAMPLE_REG_6_U21 ( .B1(SAMPLE_REG_6_n59), .B2(SAMPLE_REG_6_n41), 
        .A(SAMPLE_REG_6_n72), .ZN(SAMPLE_REG_6_n46) );
  NAND2_X1 SAMPLE_REG_6_U20 ( .A1(SAMPLES[74]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n73) );
  OAI21_X1 SAMPLE_REG_6_U19 ( .B1(SAMPLE_REG_6_n60), .B2(SAMPLE_REG_6_n41), 
        .A(SAMPLE_REG_6_n73), .ZN(SAMPLE_REG_6_n47) );
  NAND2_X1 SAMPLE_REG_6_U18 ( .A1(SAMPLES[73]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n74) );
  OAI21_X1 SAMPLE_REG_6_U17 ( .B1(SAMPLE_REG_6_n61), .B2(SAMPLE_REG_6_n41), 
        .A(SAMPLE_REG_6_n74), .ZN(SAMPLE_REG_6_n48) );
  NAND2_X1 SAMPLE_REG_6_U16 ( .A1(SAMPLES[72]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n75) );
  OAI21_X1 SAMPLE_REG_6_U15 ( .B1(SAMPLE_REG_6_n62), .B2(SAMPLE_REG_6_n41), 
        .A(SAMPLE_REG_6_n75), .ZN(SAMPLE_REG_6_n49) );
  NAND2_X1 SAMPLE_REG_6_U14 ( .A1(SAMPLES[71]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n76) );
  OAI21_X1 SAMPLE_REG_6_U13 ( .B1(SAMPLE_REG_6_n63), .B2(SAMPLE_REG_6_n41), 
        .A(SAMPLE_REG_6_n76), .ZN(SAMPLE_REG_6_n50) );
  NAND2_X1 SAMPLE_REG_6_U12 ( .A1(SAMPLES[70]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n77) );
  OAI21_X1 SAMPLE_REG_6_U11 ( .B1(SAMPLE_REG_6_n64), .B2(SAMPLE_REG_6_n41), 
        .A(SAMPLE_REG_6_n77), .ZN(SAMPLE_REG_6_n51) );
  NAND2_X1 SAMPLE_REG_6_U10 ( .A1(SAMPLES[69]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n78) );
  OAI21_X1 SAMPLE_REG_6_U9 ( .B1(SAMPLE_REG_6_n65), .B2(SAMPLE_REG_6_n41), .A(
        SAMPLE_REG_6_n78), .ZN(SAMPLE_REG_6_n52) );
  NAND2_X1 SAMPLE_REG_6_U8 ( .A1(SAMPLES[68]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n79) );
  OAI21_X1 SAMPLE_REG_6_U7 ( .B1(SAMPLE_REG_6_n66), .B2(SAMPLE_REG_6_n41), .A(
        SAMPLE_REG_6_n79), .ZN(SAMPLE_REG_6_n53) );
  NAND2_X1 SAMPLE_REG_6_U6 ( .A1(SAMPLES[66]), .A2(SAMPLE_REG_6_n40), .ZN(
        SAMPLE_REG_6_n81) );
  OAI21_X1 SAMPLE_REG_6_U5 ( .B1(SAMPLE_REG_6_n68), .B2(SAMPLE_REG_6_n41), .A(
        SAMPLE_REG_6_n81), .ZN(SAMPLE_REG_6_n55) );
  BUF_X1 SAMPLE_REG_6_U4 ( .A(n545), .Z(SAMPLE_REG_6_n41) );
  BUF_X1 SAMPLE_REG_6_U3 ( .A(n545), .Z(SAMPLE_REG_6_n40) );
  BUF_X1 SAMPLE_REG_6_U2 ( .A(n546), .Z(SAMPLE_REG_6_n43) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_12_ ( .D(SAMPLE_REG_6_n44), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[64]), .QN(SAMPLE_REG_6_n57) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_2_ ( .D(SAMPLE_REG_6_n54), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[54]), .QN(SAMPLE_REG_6_n67) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_4_ ( .D(SAMPLE_REG_6_n52), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[56]), .QN(SAMPLE_REG_6_n65) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_6_ ( .D(SAMPLE_REG_6_n50), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[58]), .QN(SAMPLE_REG_6_n63) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_8_ ( .D(SAMPLE_REG_6_n48), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[60]), .QN(SAMPLE_REG_6_n61) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_10_ ( .D(SAMPLE_REG_6_n46), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[62]), .QN(SAMPLE_REG_6_n59) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_0_ ( .D(SAMPLE_REG_6_n56), .CK(CLK), .RN(n546), 
        .Q(SAMPLES[52]), .QN(SAMPLE_REG_6_n69) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_1_ ( .D(SAMPLE_REG_6_n55), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[53]), .QN(SAMPLE_REG_6_n68) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_3_ ( .D(SAMPLE_REG_6_n53), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[55]), .QN(SAMPLE_REG_6_n66) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_5_ ( .D(SAMPLE_REG_6_n51), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[57]), .QN(SAMPLE_REG_6_n64) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_7_ ( .D(SAMPLE_REG_6_n49), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[59]), .QN(SAMPLE_REG_6_n62) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_9_ ( .D(SAMPLE_REG_6_n47), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[61]), .QN(SAMPLE_REG_6_n60) );
  DFFR_X1 SAMPLE_REG_6_DOUT_reg_11_ ( .D(SAMPLE_REG_6_n45), .CK(CLK), .RN(
        SAMPLE_REG_6_n43), .Q(SAMPLES[63]), .QN(SAMPLE_REG_6_n58) );
  XOR2_X1 MUL_6_mult_17_U660 ( .A(SAMPLES[54]), .B(SAMPLES[53]), .Z(
        MUL_6_mult_17_n681) );
  NAND2_X1 MUL_6_mult_17_U659 ( .A1(SAMPLES[53]), .A2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n571) );
  XNOR2_X1 MUL_6_mult_17_U658 ( .A(A[54]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n570) );
  OAI22_X1 MUL_6_mult_17_U657 ( .A1(A[53]), .A2(MUL_6_mult_17_n571), .B1(
        MUL_6_mult_17_n570), .B2(MUL_6_mult_17_n544), .ZN(MUL_6_mult_17_n683)
         );
  XNOR2_X1 MUL_6_mult_17_U656 ( .A(MUL_6_mult_17_n541), .B(SAMPLES[54]), .ZN(
        MUL_6_mult_17_n682) );
  NAND2_X1 MUL_6_mult_17_U655 ( .A1(MUL_6_mult_17_n542), .A2(
        MUL_6_mult_17_n682), .ZN(MUL_6_mult_17_n552) );
  NAND3_X1 MUL_6_mult_17_U654 ( .A1(MUL_6_mult_17_n681), .A2(
        MUL_6_mult_17_n546), .A3(SAMPLES[55]), .ZN(MUL_6_mult_17_n680) );
  OAI21_X1 MUL_6_mult_17_U653 ( .B1(MUL_6_mult_17_n541), .B2(
        MUL_6_mult_17_n552), .A(MUL_6_mult_17_n680), .ZN(MUL_6_mult_17_n679)
         );
  AOI222_X1 MUL_6_mult_17_U652 ( .A1(MUL_6_mult_17_n506), .A2(
        MUL_6_mult_17_n171), .B1(MUL_6_mult_17_n679), .B2(MUL_6_mult_17_n506), 
        .C1(MUL_6_mult_17_n679), .C2(MUL_6_mult_17_n171), .ZN(
        MUL_6_mult_17_n678) );
  AOI222_X1 MUL_6_mult_17_U651 ( .A1(MUL_6_mult_17_n538), .A2(
        MUL_6_mult_17_n169), .B1(MUL_6_mult_17_n538), .B2(MUL_6_mult_17_n170), 
        .C1(MUL_6_mult_17_n170), .C2(MUL_6_mult_17_n169), .ZN(
        MUL_6_mult_17_n677) );
  AOI222_X1 MUL_6_mult_17_U650 ( .A1(MUL_6_mult_17_n537), .A2(
        MUL_6_mult_17_n165), .B1(MUL_6_mult_17_n537), .B2(MUL_6_mult_17_n168), 
        .C1(MUL_6_mult_17_n168), .C2(MUL_6_mult_17_n165), .ZN(
        MUL_6_mult_17_n676) );
  AOI222_X1 MUL_6_mult_17_U649 ( .A1(MUL_6_mult_17_n533), .A2(
        MUL_6_mult_17_n161), .B1(MUL_6_mult_17_n533), .B2(MUL_6_mult_17_n164), 
        .C1(MUL_6_mult_17_n164), .C2(MUL_6_mult_17_n161), .ZN(
        MUL_6_mult_17_n675) );
  AOI222_X1 MUL_6_mult_17_U648 ( .A1(MUL_6_mult_17_n532), .A2(
        MUL_6_mult_17_n155), .B1(MUL_6_mult_17_n532), .B2(MUL_6_mult_17_n160), 
        .C1(MUL_6_mult_17_n160), .C2(MUL_6_mult_17_n155), .ZN(
        MUL_6_mult_17_n674) );
  AOI222_X1 MUL_6_mult_17_U647 ( .A1(MUL_6_mult_17_n528), .A2(
        MUL_6_mult_17_n149), .B1(MUL_6_mult_17_n528), .B2(MUL_6_mult_17_n154), 
        .C1(MUL_6_mult_17_n154), .C2(MUL_6_mult_17_n149), .ZN(
        MUL_6_mult_17_n673) );
  AOI222_X1 MUL_6_mult_17_U646 ( .A1(MUL_6_mult_17_n527), .A2(
        MUL_6_mult_17_n141), .B1(MUL_6_mult_17_n527), .B2(MUL_6_mult_17_n148), 
        .C1(MUL_6_mult_17_n148), .C2(MUL_6_mult_17_n141), .ZN(
        MUL_6_mult_17_n672) );
  AOI222_X1 MUL_6_mult_17_U645 ( .A1(MUL_6_mult_17_n523), .A2(
        MUL_6_mult_17_n133), .B1(MUL_6_mult_17_n523), .B2(MUL_6_mult_17_n140), 
        .C1(MUL_6_mult_17_n140), .C2(MUL_6_mult_17_n133), .ZN(
        MUL_6_mult_17_n671) );
  AOI222_X1 MUL_6_mult_17_U644 ( .A1(MUL_6_mult_17_n522), .A2(
        MUL_6_mult_17_n123), .B1(MUL_6_mult_17_n522), .B2(MUL_6_mult_17_n132), 
        .C1(MUL_6_mult_17_n132), .C2(MUL_6_mult_17_n123), .ZN(
        MUL_6_mult_17_n670) );
  AOI222_X1 MUL_6_mult_17_U643 ( .A1(MUL_6_mult_17_n517), .A2(
        MUL_6_mult_17_n113), .B1(MUL_6_mult_17_n517), .B2(MUL_6_mult_17_n122), 
        .C1(MUL_6_mult_17_n122), .C2(MUL_6_mult_17_n113), .ZN(
        MUL_6_mult_17_n669) );
  AOI222_X1 MUL_6_mult_17_U642 ( .A1(MUL_6_mult_17_n515), .A2(
        MUL_6_mult_17_n101), .B1(MUL_6_mult_17_n515), .B2(MUL_6_mult_17_n112), 
        .C1(MUL_6_mult_17_n112), .C2(MUL_6_mult_17_n101), .ZN(
        MUL_6_mult_17_n668) );
  AOI222_X1 MUL_6_mult_17_U641 ( .A1(MUL_6_mult_17_n513), .A2(
        MUL_6_mult_17_n89), .B1(MUL_6_mult_17_n513), .B2(MUL_6_mult_17_n100), 
        .C1(MUL_6_mult_17_n100), .C2(MUL_6_mult_17_n89), .ZN(
        MUL_6_mult_17_n667) );
  AOI222_X1 MUL_6_mult_17_U640 ( .A1(MUL_6_mult_17_n512), .A2(
        MUL_6_mult_17_n79), .B1(MUL_6_mult_17_n512), .B2(MUL_6_mult_17_n88), 
        .C1(MUL_6_mult_17_n88), .C2(MUL_6_mult_17_n79), .ZN(MUL_6_mult_17_n666) );
  AOI222_X1 MUL_6_mult_17_U639 ( .A1(MUL_6_mult_17_n511), .A2(
        MUL_6_mult_17_n69), .B1(MUL_6_mult_17_n511), .B2(MUL_6_mult_17_n78), 
        .C1(MUL_6_mult_17_n78), .C2(MUL_6_mult_17_n69), .ZN(MUL_6_mult_17_n665) );
  AOI222_X1 MUL_6_mult_17_U638 ( .A1(MUL_6_mult_17_n510), .A2(
        MUL_6_mult_17_n61), .B1(MUL_6_mult_17_n510), .B2(MUL_6_mult_17_n68), 
        .C1(MUL_6_mult_17_n68), .C2(MUL_6_mult_17_n61), .ZN(MUL_6_mult_17_n664) );
  XNOR2_X1 MUL_6_mult_17_U637 ( .A(A[54]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n633) );
  XNOR2_X1 MUL_6_mult_17_U636 ( .A(MUL_6_mult_17_n521), .B(SAMPLES[62]), .ZN(
        MUL_6_mult_17_n663) );
  NAND2_X1 MUL_6_mult_17_U635 ( .A1(MUL_6_mult_17_n568), .A2(
        MUL_6_mult_17_n663), .ZN(MUL_6_mult_17_n567) );
  XNOR2_X1 MUL_6_mult_17_U634 ( .A(A[55]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n634) );
  OAI22_X1 MUL_6_mult_17_U633 ( .A1(MUL_6_mult_17_n633), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n634), 
        .ZN(MUL_6_mult_17_n662) );
  XNOR2_X1 MUL_6_mult_17_U632 ( .A(MUL_6_mult_17_n545), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n661) );
  XNOR2_X1 MUL_6_mult_17_U631 ( .A(SAMPLES[64]), .B(MUL_6_mult_17_n521), .ZN(
        MUL_6_mult_17_n549) );
  NAND2_X1 MUL_6_mult_17_U630 ( .A1(MUL_6_mult_17_n661), .A2(
        MUL_6_mult_17_n549), .ZN(MUL_6_mult_17_n660) );
  NAND2_X1 MUL_6_mult_17_U629 ( .A1(MUL_6_mult_17_n520), .A2(
        MUL_6_mult_17_n660), .ZN(MUL_6_mult_17_n110) );
  XNOR2_X1 MUL_6_mult_17_U628 ( .A(MUL_6_mult_17_n660), .B(MUL_6_mult_17_n520), 
        .ZN(MUL_6_mult_17_n111) );
  NOR3_X1 MUL_6_mult_17_U627 ( .A1(MUL_6_mult_17_n514), .A2(A[52]), .A3(
        MUL_6_mult_17_n516), .ZN(MUL_6_mult_17_n193) );
  OR3_X1 MUL_6_mult_17_U626 ( .A1(MUL_6_mult_17_n568), .A2(A[52]), .A3(
        MUL_6_mult_17_n521), .ZN(MUL_6_mult_17_n659) );
  OAI21_X1 MUL_6_mult_17_U625 ( .B1(MUL_6_mult_17_n521), .B2(
        MUL_6_mult_17_n567), .A(MUL_6_mult_17_n659), .ZN(MUL_6_mult_17_n194)
         );
  XNOR2_X1 MUL_6_mult_17_U624 ( .A(MUL_6_mult_17_n526), .B(SAMPLES[60]), .ZN(
        MUL_6_mult_17_n658) );
  NAND2_X1 MUL_6_mult_17_U623 ( .A1(MUL_6_mult_17_n564), .A2(
        MUL_6_mult_17_n658), .ZN(MUL_6_mult_17_n563) );
  OR3_X1 MUL_6_mult_17_U622 ( .A1(MUL_6_mult_17_n564), .A2(A[52]), .A3(
        MUL_6_mult_17_n526), .ZN(MUL_6_mult_17_n657) );
  OAI21_X1 MUL_6_mult_17_U621 ( .B1(MUL_6_mult_17_n526), .B2(
        MUL_6_mult_17_n563), .A(MUL_6_mult_17_n657), .ZN(MUL_6_mult_17_n195)
         );
  XNOR2_X1 MUL_6_mult_17_U620 ( .A(MUL_6_mult_17_n531), .B(SAMPLES[58]), .ZN(
        MUL_6_mult_17_n656) );
  NAND2_X1 MUL_6_mult_17_U619 ( .A1(MUL_6_mult_17_n560), .A2(
        MUL_6_mult_17_n656), .ZN(MUL_6_mult_17_n559) );
  OR3_X1 MUL_6_mult_17_U618 ( .A1(MUL_6_mult_17_n560), .A2(A[52]), .A3(
        MUL_6_mult_17_n531), .ZN(MUL_6_mult_17_n655) );
  OAI21_X1 MUL_6_mult_17_U617 ( .B1(MUL_6_mult_17_n531), .B2(
        MUL_6_mult_17_n559), .A(MUL_6_mult_17_n655), .ZN(MUL_6_mult_17_n196)
         );
  XNOR2_X1 MUL_6_mult_17_U616 ( .A(MUL_6_mult_17_n536), .B(SAMPLES[56]), .ZN(
        MUL_6_mult_17_n654) );
  NAND2_X1 MUL_6_mult_17_U615 ( .A1(MUL_6_mult_17_n556), .A2(
        MUL_6_mult_17_n654), .ZN(MUL_6_mult_17_n555) );
  OR3_X1 MUL_6_mult_17_U614 ( .A1(MUL_6_mult_17_n556), .A2(A[52]), .A3(
        MUL_6_mult_17_n536), .ZN(MUL_6_mult_17_n653) );
  OAI21_X1 MUL_6_mult_17_U613 ( .B1(MUL_6_mult_17_n536), .B2(
        MUL_6_mult_17_n555), .A(MUL_6_mult_17_n653), .ZN(MUL_6_mult_17_n197)
         );
  XNOR2_X1 MUL_6_mult_17_U612 ( .A(A[63]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n652) );
  NOR2_X1 MUL_6_mult_17_U611 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n652), .ZN(MUL_6_mult_17_n201) );
  XNOR2_X1 MUL_6_mult_17_U610 ( .A(A[62]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n651) );
  NOR2_X1 MUL_6_mult_17_U609 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n651), .ZN(MUL_6_mult_17_n202) );
  XNOR2_X1 MUL_6_mult_17_U608 ( .A(A[61]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n650) );
  NOR2_X1 MUL_6_mult_17_U607 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n650), .ZN(MUL_6_mult_17_n203) );
  XNOR2_X1 MUL_6_mult_17_U606 ( .A(A[60]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n649) );
  NOR2_X1 MUL_6_mult_17_U605 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n649), .ZN(MUL_6_mult_17_n204) );
  XNOR2_X1 MUL_6_mult_17_U604 ( .A(A[59]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n648) );
  NOR2_X1 MUL_6_mult_17_U603 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n648), .ZN(MUL_6_mult_17_n205) );
  XNOR2_X1 MUL_6_mult_17_U602 ( .A(A[58]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n647) );
  NOR2_X1 MUL_6_mult_17_U601 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n647), .ZN(MUL_6_mult_17_n206) );
  XNOR2_X1 MUL_6_mult_17_U600 ( .A(A[57]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n646) );
  NOR2_X1 MUL_6_mult_17_U599 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n646), .ZN(MUL_6_mult_17_n207) );
  XNOR2_X1 MUL_6_mult_17_U598 ( .A(A[56]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n645) );
  NOR2_X1 MUL_6_mult_17_U597 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n645), .ZN(MUL_6_mult_17_n208) );
  XNOR2_X1 MUL_6_mult_17_U596 ( .A(A[55]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n644) );
  NOR2_X1 MUL_6_mult_17_U595 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n644), .ZN(MUL_6_mult_17_n209) );
  XNOR2_X1 MUL_6_mult_17_U594 ( .A(A[54]), .B(SAMPLES[64]), .ZN(
        MUL_6_mult_17_n643) );
  NOR2_X1 MUL_6_mult_17_U593 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n643), .ZN(MUL_6_mult_17_n210) );
  NOR2_X1 MUL_6_mult_17_U592 ( .A1(MUL_6_mult_17_n516), .A2(MUL_6_mult_17_n546), .ZN(MUL_6_mult_17_n212) );
  XNOR2_X1 MUL_6_mult_17_U591 ( .A(A[64]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n569) );
  OAI22_X1 MUL_6_mult_17_U590 ( .A1(MUL_6_mult_17_n569), .A2(
        MUL_6_mult_17_n568), .B1(MUL_6_mult_17_n567), .B2(MUL_6_mult_17_n569), 
        .ZN(MUL_6_mult_17_n642) );
  XNOR2_X1 MUL_6_mult_17_U589 ( .A(A[62]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n641) );
  XNOR2_X1 MUL_6_mult_17_U588 ( .A(A[63]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n566) );
  OAI22_X1 MUL_6_mult_17_U587 ( .A1(MUL_6_mult_17_n641), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n566), 
        .ZN(MUL_6_mult_17_n214) );
  XNOR2_X1 MUL_6_mult_17_U586 ( .A(A[61]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n640) );
  OAI22_X1 MUL_6_mult_17_U585 ( .A1(MUL_6_mult_17_n640), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n641), 
        .ZN(MUL_6_mult_17_n215) );
  XNOR2_X1 MUL_6_mult_17_U584 ( .A(A[60]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n639) );
  OAI22_X1 MUL_6_mult_17_U583 ( .A1(MUL_6_mult_17_n639), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n640), 
        .ZN(MUL_6_mult_17_n216) );
  XNOR2_X1 MUL_6_mult_17_U582 ( .A(A[59]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n638) );
  OAI22_X1 MUL_6_mult_17_U581 ( .A1(MUL_6_mult_17_n638), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n639), 
        .ZN(MUL_6_mult_17_n217) );
  XNOR2_X1 MUL_6_mult_17_U580 ( .A(A[58]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n637) );
  OAI22_X1 MUL_6_mult_17_U579 ( .A1(MUL_6_mult_17_n637), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n638), 
        .ZN(MUL_6_mult_17_n218) );
  XNOR2_X1 MUL_6_mult_17_U578 ( .A(A[57]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n636) );
  OAI22_X1 MUL_6_mult_17_U577 ( .A1(MUL_6_mult_17_n636), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n637), 
        .ZN(MUL_6_mult_17_n219) );
  XNOR2_X1 MUL_6_mult_17_U576 ( .A(A[56]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n635) );
  OAI22_X1 MUL_6_mult_17_U575 ( .A1(MUL_6_mult_17_n635), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n636), 
        .ZN(MUL_6_mult_17_n220) );
  OAI22_X1 MUL_6_mult_17_U574 ( .A1(MUL_6_mult_17_n634), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n635), 
        .ZN(MUL_6_mult_17_n221) );
  XNOR2_X1 MUL_6_mult_17_U573 ( .A(A[53]), .B(SAMPLES[63]), .ZN(
        MUL_6_mult_17_n632) );
  OAI22_X1 MUL_6_mult_17_U572 ( .A1(MUL_6_mult_17_n632), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n633), 
        .ZN(MUL_6_mult_17_n223) );
  XNOR2_X1 MUL_6_mult_17_U571 ( .A(SAMPLES[63]), .B(A[52]), .ZN(
        MUL_6_mult_17_n631) );
  OAI22_X1 MUL_6_mult_17_U570 ( .A1(MUL_6_mult_17_n631), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n632), 
        .ZN(MUL_6_mult_17_n224) );
  NOR2_X1 MUL_6_mult_17_U569 ( .A1(MUL_6_mult_17_n568), .A2(MUL_6_mult_17_n546), .ZN(MUL_6_mult_17_n225) );
  XNOR2_X1 MUL_6_mult_17_U568 ( .A(A[64]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n565) );
  OAI22_X1 MUL_6_mult_17_U567 ( .A1(MUL_6_mult_17_n565), .A2(
        MUL_6_mult_17_n564), .B1(MUL_6_mult_17_n563), .B2(MUL_6_mult_17_n565), 
        .ZN(MUL_6_mult_17_n630) );
  XNOR2_X1 MUL_6_mult_17_U566 ( .A(A[62]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n629) );
  XNOR2_X1 MUL_6_mult_17_U565 ( .A(A[63]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n562) );
  OAI22_X1 MUL_6_mult_17_U564 ( .A1(MUL_6_mult_17_n629), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n562), 
        .ZN(MUL_6_mult_17_n227) );
  XNOR2_X1 MUL_6_mult_17_U563 ( .A(A[61]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n628) );
  OAI22_X1 MUL_6_mult_17_U562 ( .A1(MUL_6_mult_17_n628), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n629), 
        .ZN(MUL_6_mult_17_n228) );
  XNOR2_X1 MUL_6_mult_17_U561 ( .A(A[60]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n627) );
  OAI22_X1 MUL_6_mult_17_U560 ( .A1(MUL_6_mult_17_n627), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n628), 
        .ZN(MUL_6_mult_17_n229) );
  XNOR2_X1 MUL_6_mult_17_U559 ( .A(A[59]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n626) );
  OAI22_X1 MUL_6_mult_17_U558 ( .A1(MUL_6_mult_17_n626), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n627), 
        .ZN(MUL_6_mult_17_n230) );
  XNOR2_X1 MUL_6_mult_17_U557 ( .A(A[58]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n625) );
  OAI22_X1 MUL_6_mult_17_U556 ( .A1(MUL_6_mult_17_n625), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n626), 
        .ZN(MUL_6_mult_17_n231) );
  XNOR2_X1 MUL_6_mult_17_U555 ( .A(A[57]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n624) );
  OAI22_X1 MUL_6_mult_17_U554 ( .A1(MUL_6_mult_17_n624), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n625), 
        .ZN(MUL_6_mult_17_n232) );
  XNOR2_X1 MUL_6_mult_17_U553 ( .A(A[56]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n623) );
  OAI22_X1 MUL_6_mult_17_U552 ( .A1(MUL_6_mult_17_n623), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n624), 
        .ZN(MUL_6_mult_17_n233) );
  XNOR2_X1 MUL_6_mult_17_U551 ( .A(A[55]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n622) );
  OAI22_X1 MUL_6_mult_17_U550 ( .A1(MUL_6_mult_17_n622), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n623), 
        .ZN(MUL_6_mult_17_n234) );
  XNOR2_X1 MUL_6_mult_17_U549 ( .A(A[54]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n621) );
  OAI22_X1 MUL_6_mult_17_U548 ( .A1(MUL_6_mult_17_n621), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n622), 
        .ZN(MUL_6_mult_17_n235) );
  XNOR2_X1 MUL_6_mult_17_U547 ( .A(A[53]), .B(SAMPLES[61]), .ZN(
        MUL_6_mult_17_n620) );
  OAI22_X1 MUL_6_mult_17_U546 ( .A1(MUL_6_mult_17_n620), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n621), 
        .ZN(MUL_6_mult_17_n236) );
  XNOR2_X1 MUL_6_mult_17_U545 ( .A(SAMPLES[61]), .B(A[52]), .ZN(
        MUL_6_mult_17_n619) );
  OAI22_X1 MUL_6_mult_17_U544 ( .A1(MUL_6_mult_17_n619), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n620), 
        .ZN(MUL_6_mult_17_n237) );
  NOR2_X1 MUL_6_mult_17_U543 ( .A1(MUL_6_mult_17_n564), .A2(MUL_6_mult_17_n546), .ZN(MUL_6_mult_17_n238) );
  XNOR2_X1 MUL_6_mult_17_U542 ( .A(A[64]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n561) );
  OAI22_X1 MUL_6_mult_17_U541 ( .A1(MUL_6_mult_17_n561), .A2(
        MUL_6_mult_17_n560), .B1(MUL_6_mult_17_n559), .B2(MUL_6_mult_17_n561), 
        .ZN(MUL_6_mult_17_n618) );
  XNOR2_X1 MUL_6_mult_17_U540 ( .A(A[62]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n617) );
  XNOR2_X1 MUL_6_mult_17_U539 ( .A(A[63]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n558) );
  OAI22_X1 MUL_6_mult_17_U538 ( .A1(MUL_6_mult_17_n617), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n558), 
        .ZN(MUL_6_mult_17_n240) );
  XNOR2_X1 MUL_6_mult_17_U537 ( .A(A[61]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n616) );
  OAI22_X1 MUL_6_mult_17_U536 ( .A1(MUL_6_mult_17_n616), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n617), 
        .ZN(MUL_6_mult_17_n241) );
  XNOR2_X1 MUL_6_mult_17_U535 ( .A(A[60]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n615) );
  OAI22_X1 MUL_6_mult_17_U534 ( .A1(MUL_6_mult_17_n615), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n616), 
        .ZN(MUL_6_mult_17_n242) );
  XNOR2_X1 MUL_6_mult_17_U533 ( .A(A[59]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n614) );
  OAI22_X1 MUL_6_mult_17_U532 ( .A1(MUL_6_mult_17_n614), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n615), 
        .ZN(MUL_6_mult_17_n243) );
  XNOR2_X1 MUL_6_mult_17_U531 ( .A(A[58]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n613) );
  OAI22_X1 MUL_6_mult_17_U530 ( .A1(MUL_6_mult_17_n613), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n614), 
        .ZN(MUL_6_mult_17_n244) );
  XNOR2_X1 MUL_6_mult_17_U529 ( .A(A[57]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n612) );
  OAI22_X1 MUL_6_mult_17_U528 ( .A1(MUL_6_mult_17_n612), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n613), 
        .ZN(MUL_6_mult_17_n245) );
  XNOR2_X1 MUL_6_mult_17_U527 ( .A(A[56]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n611) );
  OAI22_X1 MUL_6_mult_17_U526 ( .A1(MUL_6_mult_17_n611), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n612), 
        .ZN(MUL_6_mult_17_n246) );
  XNOR2_X1 MUL_6_mult_17_U525 ( .A(A[55]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n610) );
  OAI22_X1 MUL_6_mult_17_U524 ( .A1(MUL_6_mult_17_n610), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n611), 
        .ZN(MUL_6_mult_17_n247) );
  XNOR2_X1 MUL_6_mult_17_U523 ( .A(A[54]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n609) );
  OAI22_X1 MUL_6_mult_17_U522 ( .A1(MUL_6_mult_17_n609), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n610), 
        .ZN(MUL_6_mult_17_n248) );
  XNOR2_X1 MUL_6_mult_17_U521 ( .A(A[53]), .B(SAMPLES[59]), .ZN(
        MUL_6_mult_17_n608) );
  OAI22_X1 MUL_6_mult_17_U520 ( .A1(MUL_6_mult_17_n608), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n609), 
        .ZN(MUL_6_mult_17_n249) );
  XNOR2_X1 MUL_6_mult_17_U519 ( .A(SAMPLES[59]), .B(A[52]), .ZN(
        MUL_6_mult_17_n607) );
  OAI22_X1 MUL_6_mult_17_U518 ( .A1(MUL_6_mult_17_n607), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n608), 
        .ZN(MUL_6_mult_17_n250) );
  NOR2_X1 MUL_6_mult_17_U517 ( .A1(MUL_6_mult_17_n560), .A2(MUL_6_mult_17_n546), .ZN(MUL_6_mult_17_n251) );
  XNOR2_X1 MUL_6_mult_17_U516 ( .A(A[64]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n557) );
  OAI22_X1 MUL_6_mult_17_U515 ( .A1(MUL_6_mult_17_n557), .A2(
        MUL_6_mult_17_n556), .B1(MUL_6_mult_17_n555), .B2(MUL_6_mult_17_n557), 
        .ZN(MUL_6_mult_17_n606) );
  XNOR2_X1 MUL_6_mult_17_U514 ( .A(A[62]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n605) );
  XNOR2_X1 MUL_6_mult_17_U513 ( .A(A[63]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n554) );
  OAI22_X1 MUL_6_mult_17_U512 ( .A1(MUL_6_mult_17_n605), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n554), 
        .ZN(MUL_6_mult_17_n253) );
  XNOR2_X1 MUL_6_mult_17_U511 ( .A(A[61]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n604) );
  OAI22_X1 MUL_6_mult_17_U510 ( .A1(MUL_6_mult_17_n604), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n605), 
        .ZN(MUL_6_mult_17_n254) );
  XNOR2_X1 MUL_6_mult_17_U509 ( .A(A[60]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n603) );
  OAI22_X1 MUL_6_mult_17_U508 ( .A1(MUL_6_mult_17_n603), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n604), 
        .ZN(MUL_6_mult_17_n255) );
  XNOR2_X1 MUL_6_mult_17_U507 ( .A(A[59]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n602) );
  OAI22_X1 MUL_6_mult_17_U506 ( .A1(MUL_6_mult_17_n602), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n603), 
        .ZN(MUL_6_mult_17_n256) );
  XNOR2_X1 MUL_6_mult_17_U505 ( .A(A[58]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n601) );
  OAI22_X1 MUL_6_mult_17_U504 ( .A1(MUL_6_mult_17_n601), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n602), 
        .ZN(MUL_6_mult_17_n257) );
  XNOR2_X1 MUL_6_mult_17_U503 ( .A(A[57]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n600) );
  OAI22_X1 MUL_6_mult_17_U502 ( .A1(MUL_6_mult_17_n600), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n601), 
        .ZN(MUL_6_mult_17_n258) );
  XNOR2_X1 MUL_6_mult_17_U501 ( .A(A[56]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n599) );
  OAI22_X1 MUL_6_mult_17_U500 ( .A1(MUL_6_mult_17_n599), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n600), 
        .ZN(MUL_6_mult_17_n259) );
  XNOR2_X1 MUL_6_mult_17_U499 ( .A(A[55]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n598) );
  OAI22_X1 MUL_6_mult_17_U498 ( .A1(MUL_6_mult_17_n598), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n599), 
        .ZN(MUL_6_mult_17_n260) );
  XNOR2_X1 MUL_6_mult_17_U497 ( .A(A[54]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n597) );
  OAI22_X1 MUL_6_mult_17_U496 ( .A1(MUL_6_mult_17_n597), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n598), 
        .ZN(MUL_6_mult_17_n261) );
  XNOR2_X1 MUL_6_mult_17_U495 ( .A(A[53]), .B(SAMPLES[57]), .ZN(
        MUL_6_mult_17_n596) );
  OAI22_X1 MUL_6_mult_17_U494 ( .A1(MUL_6_mult_17_n596), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n597), 
        .ZN(MUL_6_mult_17_n262) );
  XNOR2_X1 MUL_6_mult_17_U493 ( .A(SAMPLES[57]), .B(A[52]), .ZN(
        MUL_6_mult_17_n595) );
  OAI22_X1 MUL_6_mult_17_U492 ( .A1(MUL_6_mult_17_n595), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n596), 
        .ZN(MUL_6_mult_17_n263) );
  NOR2_X1 MUL_6_mult_17_U491 ( .A1(MUL_6_mult_17_n556), .A2(MUL_6_mult_17_n546), .ZN(MUL_6_mult_17_n264) );
  XOR2_X1 MUL_6_mult_17_U490 ( .A(A[64]), .B(MUL_6_mult_17_n541), .Z(
        MUL_6_mult_17_n553) );
  OAI22_X1 MUL_6_mult_17_U489 ( .A1(MUL_6_mult_17_n553), .A2(
        MUL_6_mult_17_n542), .B1(MUL_6_mult_17_n552), .B2(MUL_6_mult_17_n553), 
        .ZN(MUL_6_mult_17_n594) );
  XNOR2_X1 MUL_6_mult_17_U488 ( .A(A[62]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n593) );
  XNOR2_X1 MUL_6_mult_17_U487 ( .A(A[63]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n551) );
  OAI22_X1 MUL_6_mult_17_U486 ( .A1(MUL_6_mult_17_n593), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n551), 
        .ZN(MUL_6_mult_17_n266) );
  XNOR2_X1 MUL_6_mult_17_U485 ( .A(A[61]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n592) );
  OAI22_X1 MUL_6_mult_17_U484 ( .A1(MUL_6_mult_17_n592), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n593), 
        .ZN(MUL_6_mult_17_n267) );
  XNOR2_X1 MUL_6_mult_17_U483 ( .A(A[60]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n591) );
  OAI22_X1 MUL_6_mult_17_U482 ( .A1(MUL_6_mult_17_n591), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n592), 
        .ZN(MUL_6_mult_17_n268) );
  XNOR2_X1 MUL_6_mult_17_U481 ( .A(A[59]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n590) );
  OAI22_X1 MUL_6_mult_17_U480 ( .A1(MUL_6_mult_17_n590), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n591), 
        .ZN(MUL_6_mult_17_n269) );
  XNOR2_X1 MUL_6_mult_17_U479 ( .A(A[58]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n589) );
  OAI22_X1 MUL_6_mult_17_U478 ( .A1(MUL_6_mult_17_n589), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n590), 
        .ZN(MUL_6_mult_17_n270) );
  XNOR2_X1 MUL_6_mult_17_U477 ( .A(A[57]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n588) );
  OAI22_X1 MUL_6_mult_17_U476 ( .A1(MUL_6_mult_17_n588), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n589), 
        .ZN(MUL_6_mult_17_n271) );
  XNOR2_X1 MUL_6_mult_17_U475 ( .A(A[56]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n587) );
  OAI22_X1 MUL_6_mult_17_U474 ( .A1(MUL_6_mult_17_n587), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n588), 
        .ZN(MUL_6_mult_17_n272) );
  XNOR2_X1 MUL_6_mult_17_U473 ( .A(A[55]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n586) );
  OAI22_X1 MUL_6_mult_17_U472 ( .A1(MUL_6_mult_17_n586), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n587), 
        .ZN(MUL_6_mult_17_n273) );
  XNOR2_X1 MUL_6_mult_17_U471 ( .A(A[54]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n585) );
  OAI22_X1 MUL_6_mult_17_U470 ( .A1(MUL_6_mult_17_n585), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n586), 
        .ZN(MUL_6_mult_17_n274) );
  XNOR2_X1 MUL_6_mult_17_U469 ( .A(A[53]), .B(SAMPLES[55]), .ZN(
        MUL_6_mult_17_n584) );
  OAI22_X1 MUL_6_mult_17_U468 ( .A1(MUL_6_mult_17_n584), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n585), 
        .ZN(MUL_6_mult_17_n275) );
  XNOR2_X1 MUL_6_mult_17_U467 ( .A(SAMPLES[55]), .B(A[52]), .ZN(
        MUL_6_mult_17_n583) );
  OAI22_X1 MUL_6_mult_17_U466 ( .A1(MUL_6_mult_17_n583), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n584), 
        .ZN(MUL_6_mult_17_n276) );
  XNOR2_X1 MUL_6_mult_17_U465 ( .A(A[64]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n581) );
  OAI22_X1 MUL_6_mult_17_U464 ( .A1(MUL_6_mult_17_n544), .A2(
        MUL_6_mult_17_n581), .B1(MUL_6_mult_17_n571), .B2(MUL_6_mult_17_n581), 
        .ZN(MUL_6_mult_17_n582) );
  XNOR2_X1 MUL_6_mult_17_U463 ( .A(A[63]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n580) );
  OAI22_X1 MUL_6_mult_17_U462 ( .A1(MUL_6_mult_17_n580), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n581), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n279) );
  XNOR2_X1 MUL_6_mult_17_U461 ( .A(A[62]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n579) );
  OAI22_X1 MUL_6_mult_17_U460 ( .A1(MUL_6_mult_17_n579), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n580), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n280) );
  XNOR2_X1 MUL_6_mult_17_U459 ( .A(A[61]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n578) );
  OAI22_X1 MUL_6_mult_17_U458 ( .A1(MUL_6_mult_17_n578), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n579), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n281) );
  XNOR2_X1 MUL_6_mult_17_U457 ( .A(A[60]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n577) );
  OAI22_X1 MUL_6_mult_17_U456 ( .A1(MUL_6_mult_17_n577), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n578), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n282) );
  XNOR2_X1 MUL_6_mult_17_U455 ( .A(A[59]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n576) );
  OAI22_X1 MUL_6_mult_17_U454 ( .A1(MUL_6_mult_17_n576), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n577), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n283) );
  XNOR2_X1 MUL_6_mult_17_U453 ( .A(A[58]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n575) );
  OAI22_X1 MUL_6_mult_17_U452 ( .A1(MUL_6_mult_17_n575), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n576), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n284) );
  XNOR2_X1 MUL_6_mult_17_U451 ( .A(A[57]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n574) );
  OAI22_X1 MUL_6_mult_17_U450 ( .A1(MUL_6_mult_17_n574), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n575), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n285) );
  XNOR2_X1 MUL_6_mult_17_U449 ( .A(A[56]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n573) );
  OAI22_X1 MUL_6_mult_17_U448 ( .A1(MUL_6_mult_17_n573), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n574), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n286) );
  XNOR2_X1 MUL_6_mult_17_U447 ( .A(A[55]), .B(SAMPLES[53]), .ZN(
        MUL_6_mult_17_n572) );
  OAI22_X1 MUL_6_mult_17_U446 ( .A1(MUL_6_mult_17_n572), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n573), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n287) );
  OAI22_X1 MUL_6_mult_17_U445 ( .A1(MUL_6_mult_17_n570), .A2(
        MUL_6_mult_17_n571), .B1(MUL_6_mult_17_n572), .B2(MUL_6_mult_17_n544), 
        .ZN(MUL_6_mult_17_n288) );
  XNOR2_X1 MUL_6_mult_17_U444 ( .A(A[64]), .B(MUL_6_mult_17_n514), .ZN(
        MUL_6_mult_17_n550) );
  NAND2_X1 MUL_6_mult_17_U443 ( .A1(MUL_6_mult_17_n550), .A2(
        MUL_6_mult_17_n549), .ZN(MUL_6_mult_17_n29) );
  OAI22_X1 MUL_6_mult_17_U442 ( .A1(MUL_6_mult_17_n566), .A2(
        MUL_6_mult_17_n567), .B1(MUL_6_mult_17_n568), .B2(MUL_6_mult_17_n569), 
        .ZN(MUL_6_mult_17_n34) );
  OAI22_X1 MUL_6_mult_17_U441 ( .A1(MUL_6_mult_17_n562), .A2(
        MUL_6_mult_17_n563), .B1(MUL_6_mult_17_n564), .B2(MUL_6_mult_17_n565), 
        .ZN(MUL_6_mult_17_n44) );
  OAI22_X1 MUL_6_mult_17_U440 ( .A1(MUL_6_mult_17_n558), .A2(
        MUL_6_mult_17_n559), .B1(MUL_6_mult_17_n560), .B2(MUL_6_mult_17_n561), 
        .ZN(MUL_6_mult_17_n58) );
  OAI22_X1 MUL_6_mult_17_U439 ( .A1(MUL_6_mult_17_n554), .A2(
        MUL_6_mult_17_n555), .B1(MUL_6_mult_17_n556), .B2(MUL_6_mult_17_n557), 
        .ZN(MUL_6_mult_17_n76) );
  OAI22_X1 MUL_6_mult_17_U438 ( .A1(MUL_6_mult_17_n551), .A2(
        MUL_6_mult_17_n552), .B1(MUL_6_mult_17_n542), .B2(MUL_6_mult_17_n553), 
        .ZN(MUL_6_mult_17_n98) );
  NOR2_X1 MUL_6_mult_17_U437 ( .A1(MUL_6_mult_17_n544), .A2(MUL_6_mult_17_n546), .ZN(MUL_6_O_0_) );
  XOR2_X1 MUL_6_mult_17_U436 ( .A(MUL_6_mult_17_n29), .B(MUL_6_mult_17_n4), 
        .Z(MUL_6_mult_17_n547) );
  AND2_X1 MUL_6_mult_17_U435 ( .A1(MUL_6_mult_17_n549), .A2(MUL_6_mult_17_n550), .ZN(MUL_6_mult_17_n548) );
  XOR2_X1 MUL_6_mult_17_U434 ( .A(MUL_6_mult_17_n547), .B(MUL_6_mult_17_n548), 
        .Z(TRUNCATED_MULT_RES_6__7_) );
  XOR2_X2 MUL_6_mult_17_U433 ( .A(SAMPLES[62]), .B(MUL_6_mult_17_n526), .Z(
        MUL_6_mult_17_n568) );
  XOR2_X2 MUL_6_mult_17_U432 ( .A(SAMPLES[60]), .B(MUL_6_mult_17_n531), .Z(
        MUL_6_mult_17_n564) );
  XOR2_X2 MUL_6_mult_17_U431 ( .A(SAMPLES[58]), .B(MUL_6_mult_17_n536), .Z(
        MUL_6_mult_17_n560) );
  XOR2_X2 MUL_6_mult_17_U430 ( .A(SAMPLES[56]), .B(MUL_6_mult_17_n541), .Z(
        MUL_6_mult_17_n556) );
  INV_X1 MUL_6_mult_17_U429 ( .A(MUL_6_mult_17_n642), .ZN(MUL_6_mult_17_n519)
         );
  INV_X1 MUL_6_mult_17_U428 ( .A(MUL_6_mult_17_n34), .ZN(MUL_6_mult_17_n518)
         );
  INV_X1 MUL_6_mult_17_U427 ( .A(MUL_6_mult_17_n594), .ZN(MUL_6_mult_17_n540)
         );
  INV_X1 MUL_6_mult_17_U426 ( .A(SAMPLES[64]), .ZN(MUL_6_mult_17_n514) );
  INV_X1 MUL_6_mult_17_U425 ( .A(A[53]), .ZN(MUL_6_mult_17_n545) );
  INV_X1 MUL_6_mult_17_U424 ( .A(A[52]), .ZN(MUL_6_mult_17_n546) );
  INV_X1 MUL_6_mult_17_U423 ( .A(SAMPLES[63]), .ZN(MUL_6_mult_17_n521) );
  INV_X1 MUL_6_mult_17_U422 ( .A(SAMPLES[61]), .ZN(MUL_6_mult_17_n526) );
  INV_X1 MUL_6_mult_17_U421 ( .A(SAMPLES[59]), .ZN(MUL_6_mult_17_n531) );
  AND3_X1 MUL_6_mult_17_U420 ( .A1(MUL_6_mult_17_n683), .A2(MUL_6_mult_17_n545), .A3(SAMPLES[53]), .ZN(MUL_6_mult_17_n508) );
  AND2_X1 MUL_6_mult_17_U419 ( .A1(MUL_6_mult_17_n681), .A2(MUL_6_mult_17_n683), .ZN(MUL_6_mult_17_n507) );
  MUX2_X1 MUL_6_mult_17_U418 ( .A(MUL_6_mult_17_n507), .B(MUL_6_mult_17_n508), 
        .S(MUL_6_mult_17_n546), .Z(MUL_6_mult_17_n506) );
  INV_X1 MUL_6_mult_17_U417 ( .A(SAMPLES[57]), .ZN(MUL_6_mult_17_n536) );
  INV_X1 MUL_6_mult_17_U416 ( .A(SAMPLES[55]), .ZN(MUL_6_mult_17_n541) );
  INV_X1 MUL_6_mult_17_U415 ( .A(SAMPLES[52]), .ZN(MUL_6_mult_17_n544) );
  INV_X1 MUL_6_mult_17_U414 ( .A(MUL_6_mult_17_n76), .ZN(MUL_6_mult_17_n534)
         );
  INV_X1 MUL_6_mult_17_U413 ( .A(MUL_6_mult_17_n630), .ZN(MUL_6_mult_17_n525)
         );
  INV_X1 MUL_6_mult_17_U412 ( .A(MUL_6_mult_17_n606), .ZN(MUL_6_mult_17_n535)
         );
  INV_X1 MUL_6_mult_17_U411 ( .A(MUL_6_mult_17_n618), .ZN(MUL_6_mult_17_n530)
         );
  INV_X1 MUL_6_mult_17_U410 ( .A(MUL_6_mult_17_n44), .ZN(MUL_6_mult_17_n524)
         );
  INV_X1 MUL_6_mult_17_U409 ( .A(MUL_6_mult_17_n662), .ZN(MUL_6_mult_17_n520)
         );
  INV_X1 MUL_6_mult_17_U408 ( .A(MUL_6_mult_17_n98), .ZN(MUL_6_mult_17_n539)
         );
  INV_X1 MUL_6_mult_17_U407 ( .A(MUL_6_mult_17_n582), .ZN(MUL_6_mult_17_n543)
         );
  INV_X1 MUL_6_mult_17_U406 ( .A(MUL_6_mult_17_n549), .ZN(MUL_6_mult_17_n516)
         );
  INV_X1 MUL_6_mult_17_U405 ( .A(MUL_6_mult_17_n681), .ZN(MUL_6_mult_17_n542)
         );
  INV_X1 MUL_6_mult_17_U404 ( .A(MUL_6_mult_17_n678), .ZN(MUL_6_mult_17_n538)
         );
  INV_X1 MUL_6_mult_17_U403 ( .A(MUL_6_mult_17_n677), .ZN(MUL_6_mult_17_n537)
         );
  INV_X1 MUL_6_mult_17_U402 ( .A(MUL_6_mult_17_n58), .ZN(MUL_6_mult_17_n529)
         );
  INV_X1 MUL_6_mult_17_U401 ( .A(MUL_6_mult_17_n674), .ZN(MUL_6_mult_17_n528)
         );
  INV_X1 MUL_6_mult_17_U400 ( .A(MUL_6_mult_17_n673), .ZN(MUL_6_mult_17_n527)
         );
  INV_X1 MUL_6_mult_17_U399 ( .A(MUL_6_mult_17_n676), .ZN(MUL_6_mult_17_n533)
         );
  INV_X1 MUL_6_mult_17_U398 ( .A(MUL_6_mult_17_n675), .ZN(MUL_6_mult_17_n532)
         );
  INV_X1 MUL_6_mult_17_U397 ( .A(MUL_6_mult_17_n664), .ZN(MUL_6_mult_17_n509)
         );
  INV_X1 MUL_6_mult_17_U396 ( .A(MUL_6_mult_17_n666), .ZN(MUL_6_mult_17_n511)
         );
  INV_X1 MUL_6_mult_17_U395 ( .A(MUL_6_mult_17_n665), .ZN(MUL_6_mult_17_n510)
         );
  INV_X1 MUL_6_mult_17_U394 ( .A(MUL_6_mult_17_n670), .ZN(MUL_6_mult_17_n517)
         );
  INV_X1 MUL_6_mult_17_U393 ( .A(MUL_6_mult_17_n669), .ZN(MUL_6_mult_17_n515)
         );
  INV_X1 MUL_6_mult_17_U392 ( .A(MUL_6_mult_17_n668), .ZN(MUL_6_mult_17_n513)
         );
  INV_X1 MUL_6_mult_17_U391 ( .A(MUL_6_mult_17_n667), .ZN(MUL_6_mult_17_n512)
         );
  INV_X1 MUL_6_mult_17_U390 ( .A(MUL_6_mult_17_n672), .ZN(MUL_6_mult_17_n523)
         );
  INV_X1 MUL_6_mult_17_U389 ( .A(MUL_6_mult_17_n671), .ZN(MUL_6_mult_17_n522)
         );
  HA_X1 MUL_6_mult_17_U101 ( .A(MUL_6_mult_17_n276), .B(MUL_6_mult_17_n288), 
        .CO(MUL_6_mult_17_n170), .S(MUL_6_mult_17_n171) );
  FA_X1 MUL_6_mult_17_U100 ( .A(MUL_6_mult_17_n287), .B(MUL_6_mult_17_n264), 
        .CI(MUL_6_mult_17_n275), .CO(MUL_6_mult_17_n168), .S(
        MUL_6_mult_17_n169) );
  HA_X1 MUL_6_mult_17_U99 ( .A(MUL_6_mult_17_n197), .B(MUL_6_mult_17_n263), 
        .CO(MUL_6_mult_17_n166), .S(MUL_6_mult_17_n167) );
  FA_X1 MUL_6_mult_17_U98 ( .A(MUL_6_mult_17_n274), .B(MUL_6_mult_17_n286), 
        .CI(MUL_6_mult_17_n167), .CO(MUL_6_mult_17_n164), .S(
        MUL_6_mult_17_n165) );
  FA_X1 MUL_6_mult_17_U97 ( .A(MUL_6_mult_17_n285), .B(MUL_6_mult_17_n251), 
        .CI(MUL_6_mult_17_n273), .CO(MUL_6_mult_17_n162), .S(
        MUL_6_mult_17_n163) );
  FA_X1 MUL_6_mult_17_U96 ( .A(MUL_6_mult_17_n166), .B(MUL_6_mult_17_n262), 
        .CI(MUL_6_mult_17_n163), .CO(MUL_6_mult_17_n160), .S(
        MUL_6_mult_17_n161) );
  HA_X1 MUL_6_mult_17_U95 ( .A(MUL_6_mult_17_n196), .B(MUL_6_mult_17_n250), 
        .CO(MUL_6_mult_17_n158), .S(MUL_6_mult_17_n159) );
  FA_X1 MUL_6_mult_17_U94 ( .A(MUL_6_mult_17_n261), .B(MUL_6_mult_17_n284), 
        .CI(MUL_6_mult_17_n272), .CO(MUL_6_mult_17_n156), .S(
        MUL_6_mult_17_n157) );
  FA_X1 MUL_6_mult_17_U93 ( .A(MUL_6_mult_17_n162), .B(MUL_6_mult_17_n159), 
        .CI(MUL_6_mult_17_n157), .CO(MUL_6_mult_17_n154), .S(
        MUL_6_mult_17_n155) );
  FA_X1 MUL_6_mult_17_U92 ( .A(MUL_6_mult_17_n260), .B(MUL_6_mult_17_n238), 
        .CI(MUL_6_mult_17_n283), .CO(MUL_6_mult_17_n152), .S(
        MUL_6_mult_17_n153) );
  FA_X1 MUL_6_mult_17_U91 ( .A(MUL_6_mult_17_n249), .B(MUL_6_mult_17_n271), 
        .CI(MUL_6_mult_17_n158), .CO(MUL_6_mult_17_n150), .S(
        MUL_6_mult_17_n151) );
  FA_X1 MUL_6_mult_17_U90 ( .A(MUL_6_mult_17_n153), .B(MUL_6_mult_17_n156), 
        .CI(MUL_6_mult_17_n151), .CO(MUL_6_mult_17_n148), .S(
        MUL_6_mult_17_n149) );
  HA_X1 MUL_6_mult_17_U89 ( .A(MUL_6_mult_17_n195), .B(MUL_6_mult_17_n237), 
        .CO(MUL_6_mult_17_n146), .S(MUL_6_mult_17_n147) );
  FA_X1 MUL_6_mult_17_U88 ( .A(MUL_6_mult_17_n248), .B(MUL_6_mult_17_n259), 
        .CI(MUL_6_mult_17_n270), .CO(MUL_6_mult_17_n144), .S(
        MUL_6_mult_17_n145) );
  FA_X1 MUL_6_mult_17_U87 ( .A(MUL_6_mult_17_n147), .B(MUL_6_mult_17_n282), 
        .CI(MUL_6_mult_17_n152), .CO(MUL_6_mult_17_n142), .S(
        MUL_6_mult_17_n143) );
  FA_X1 MUL_6_mult_17_U86 ( .A(MUL_6_mult_17_n145), .B(MUL_6_mult_17_n150), 
        .CI(MUL_6_mult_17_n143), .CO(MUL_6_mult_17_n140), .S(
        MUL_6_mult_17_n141) );
  FA_X1 MUL_6_mult_17_U85 ( .A(MUL_6_mult_17_n247), .B(MUL_6_mult_17_n225), 
        .CI(MUL_6_mult_17_n281), .CO(MUL_6_mult_17_n138), .S(
        MUL_6_mult_17_n139) );
  FA_X1 MUL_6_mult_17_U84 ( .A(MUL_6_mult_17_n236), .B(MUL_6_mult_17_n269), 
        .CI(MUL_6_mult_17_n258), .CO(MUL_6_mult_17_n136), .S(
        MUL_6_mult_17_n137) );
  FA_X1 MUL_6_mult_17_U83 ( .A(MUL_6_mult_17_n144), .B(MUL_6_mult_17_n146), 
        .CI(MUL_6_mult_17_n139), .CO(MUL_6_mult_17_n134), .S(
        MUL_6_mult_17_n135) );
  FA_X1 MUL_6_mult_17_U82 ( .A(MUL_6_mult_17_n142), .B(MUL_6_mult_17_n137), 
        .CI(MUL_6_mult_17_n135), .CO(MUL_6_mult_17_n132), .S(
        MUL_6_mult_17_n133) );
  HA_X1 MUL_6_mult_17_U81 ( .A(MUL_6_mult_17_n194), .B(MUL_6_mult_17_n224), 
        .CO(MUL_6_mult_17_n130), .S(MUL_6_mult_17_n131) );
  FA_X1 MUL_6_mult_17_U80 ( .A(MUL_6_mult_17_n235), .B(MUL_6_mult_17_n257), 
        .CI(MUL_6_mult_17_n280), .CO(MUL_6_mult_17_n128), .S(
        MUL_6_mult_17_n129) );
  FA_X1 MUL_6_mult_17_U79 ( .A(MUL_6_mult_17_n246), .B(MUL_6_mult_17_n268), 
        .CI(MUL_6_mult_17_n131), .CO(MUL_6_mult_17_n126), .S(
        MUL_6_mult_17_n127) );
  FA_X1 MUL_6_mult_17_U78 ( .A(MUL_6_mult_17_n136), .B(MUL_6_mult_17_n138), 
        .CI(MUL_6_mult_17_n129), .CO(MUL_6_mult_17_n124), .S(
        MUL_6_mult_17_n125) );
  FA_X1 MUL_6_mult_17_U77 ( .A(MUL_6_mult_17_n134), .B(MUL_6_mult_17_n127), 
        .CI(MUL_6_mult_17_n125), .CO(MUL_6_mult_17_n122), .S(
        MUL_6_mult_17_n123) );
  FA_X1 MUL_6_mult_17_U76 ( .A(MUL_6_mult_17_n234), .B(MUL_6_mult_17_n212), 
        .CI(MUL_6_mult_17_n279), .CO(MUL_6_mult_17_n120), .S(
        MUL_6_mult_17_n121) );
  FA_X1 MUL_6_mult_17_U75 ( .A(MUL_6_mult_17_n223), .B(MUL_6_mult_17_n267), 
        .CI(MUL_6_mult_17_n245), .CO(MUL_6_mult_17_n118), .S(
        MUL_6_mult_17_n119) );
  FA_X1 MUL_6_mult_17_U74 ( .A(MUL_6_mult_17_n130), .B(MUL_6_mult_17_n256), 
        .CI(MUL_6_mult_17_n128), .CO(MUL_6_mult_17_n116), .S(
        MUL_6_mult_17_n117) );
  FA_X1 MUL_6_mult_17_U73 ( .A(MUL_6_mult_17_n119), .B(MUL_6_mult_17_n121), 
        .CI(MUL_6_mult_17_n126), .CO(MUL_6_mult_17_n114), .S(
        MUL_6_mult_17_n115) );
  FA_X1 MUL_6_mult_17_U72 ( .A(MUL_6_mult_17_n117), .B(MUL_6_mult_17_n124), 
        .CI(MUL_6_mult_17_n115), .CO(MUL_6_mult_17_n112), .S(
        MUL_6_mult_17_n113) );
  FA_X1 MUL_6_mult_17_U69 ( .A(MUL_6_mult_17_n233), .B(MUL_6_mult_17_n244), 
        .CI(MUL_6_mult_17_n543), .CO(MUL_6_mult_17_n108), .S(
        MUL_6_mult_17_n109) );
  FA_X1 MUL_6_mult_17_U68 ( .A(MUL_6_mult_17_n193), .B(MUL_6_mult_17_n266), 
        .CI(MUL_6_mult_17_n255), .CO(MUL_6_mult_17_n106), .S(
        MUL_6_mult_17_n107) );
  FA_X1 MUL_6_mult_17_U67 ( .A(MUL_6_mult_17_n120), .B(MUL_6_mult_17_n111), 
        .CI(MUL_6_mult_17_n118), .CO(MUL_6_mult_17_n104), .S(
        MUL_6_mult_17_n105) );
  FA_X1 MUL_6_mult_17_U66 ( .A(MUL_6_mult_17_n109), .B(MUL_6_mult_17_n107), 
        .CI(MUL_6_mult_17_n116), .CO(MUL_6_mult_17_n102), .S(
        MUL_6_mult_17_n103) );
  FA_X1 MUL_6_mult_17_U65 ( .A(MUL_6_mult_17_n114), .B(MUL_6_mult_17_n105), 
        .CI(MUL_6_mult_17_n103), .CO(MUL_6_mult_17_n100), .S(
        MUL_6_mult_17_n101) );
  FA_X1 MUL_6_mult_17_U63 ( .A(MUL_6_mult_17_n210), .B(MUL_6_mult_17_n221), 
        .CI(MUL_6_mult_17_n254), .CO(MUL_6_mult_17_n96), .S(MUL_6_mult_17_n97)
         );
  FA_X1 MUL_6_mult_17_U62 ( .A(MUL_6_mult_17_n232), .B(MUL_6_mult_17_n243), 
        .CI(MUL_6_mult_17_n539), .CO(MUL_6_mult_17_n94), .S(MUL_6_mult_17_n95)
         );
  FA_X1 MUL_6_mult_17_U61 ( .A(MUL_6_mult_17_n108), .B(MUL_6_mult_17_n110), 
        .CI(MUL_6_mult_17_n106), .CO(MUL_6_mult_17_n92), .S(MUL_6_mult_17_n93)
         );
  FA_X1 MUL_6_mult_17_U60 ( .A(MUL_6_mult_17_n95), .B(MUL_6_mult_17_n97), .CI(
        MUL_6_mult_17_n104), .CO(MUL_6_mult_17_n90), .S(MUL_6_mult_17_n91) );
  FA_X1 MUL_6_mult_17_U59 ( .A(MUL_6_mult_17_n102), .B(MUL_6_mult_17_n93), 
        .CI(MUL_6_mult_17_n91), .CO(MUL_6_mult_17_n88), .S(MUL_6_mult_17_n89)
         );
  FA_X1 MUL_6_mult_17_U58 ( .A(MUL_6_mult_17_n98), .B(MUL_6_mult_17_n209), 
        .CI(MUL_6_mult_17_n540), .CO(MUL_6_mult_17_n86), .S(MUL_6_mult_17_n87)
         );
  FA_X1 MUL_6_mult_17_U57 ( .A(MUL_6_mult_17_n220), .B(MUL_6_mult_17_n253), 
        .CI(MUL_6_mult_17_n231), .CO(MUL_6_mult_17_n84), .S(MUL_6_mult_17_n85)
         );
  FA_X1 MUL_6_mult_17_U56 ( .A(MUL_6_mult_17_n96), .B(MUL_6_mult_17_n242), 
        .CI(MUL_6_mult_17_n94), .CO(MUL_6_mult_17_n82), .S(MUL_6_mult_17_n83)
         );
  FA_X1 MUL_6_mult_17_U55 ( .A(MUL_6_mult_17_n87), .B(MUL_6_mult_17_n85), .CI(
        MUL_6_mult_17_n92), .CO(MUL_6_mult_17_n80), .S(MUL_6_mult_17_n81) );
  FA_X1 MUL_6_mult_17_U54 ( .A(MUL_6_mult_17_n90), .B(MUL_6_mult_17_n83), .CI(
        MUL_6_mult_17_n81), .CO(MUL_6_mult_17_n78), .S(MUL_6_mult_17_n79) );
  FA_X1 MUL_6_mult_17_U52 ( .A(MUL_6_mult_17_n241), .B(MUL_6_mult_17_n219), 
        .CI(MUL_6_mult_17_n208), .CO(MUL_6_mult_17_n74), .S(MUL_6_mult_17_n75)
         );
  FA_X1 MUL_6_mult_17_U51 ( .A(MUL_6_mult_17_n534), .B(MUL_6_mult_17_n230), 
        .CI(MUL_6_mult_17_n86), .CO(MUL_6_mult_17_n72), .S(MUL_6_mult_17_n73)
         );
  FA_X1 MUL_6_mult_17_U50 ( .A(MUL_6_mult_17_n75), .B(MUL_6_mult_17_n84), .CI(
        MUL_6_mult_17_n82), .CO(MUL_6_mult_17_n70), .S(MUL_6_mult_17_n71) );
  FA_X1 MUL_6_mult_17_U49 ( .A(MUL_6_mult_17_n80), .B(MUL_6_mult_17_n73), .CI(
        MUL_6_mult_17_n71), .CO(MUL_6_mult_17_n68), .S(MUL_6_mult_17_n69) );
  FA_X1 MUL_6_mult_17_U48 ( .A(MUL_6_mult_17_n240), .B(MUL_6_mult_17_n207), 
        .CI(MUL_6_mult_17_n535), .CO(MUL_6_mult_17_n66), .S(MUL_6_mult_17_n67)
         );
  FA_X1 MUL_6_mult_17_U47 ( .A(MUL_6_mult_17_n218), .B(MUL_6_mult_17_n76), 
        .CI(MUL_6_mult_17_n229), .CO(MUL_6_mult_17_n64), .S(MUL_6_mult_17_n65)
         );
  FA_X1 MUL_6_mult_17_U46 ( .A(MUL_6_mult_17_n65), .B(MUL_6_mult_17_n74), .CI(
        MUL_6_mult_17_n67), .CO(MUL_6_mult_17_n62), .S(MUL_6_mult_17_n63) );
  FA_X1 MUL_6_mult_17_U45 ( .A(MUL_6_mult_17_n70), .B(MUL_6_mult_17_n72), .CI(
        MUL_6_mult_17_n63), .CO(MUL_6_mult_17_n60), .S(MUL_6_mult_17_n61) );
  FA_X1 MUL_6_mult_17_U43 ( .A(MUL_6_mult_17_n206), .B(MUL_6_mult_17_n217), 
        .CI(MUL_6_mult_17_n228), .CO(MUL_6_mult_17_n56), .S(MUL_6_mult_17_n57)
         );
  FA_X1 MUL_6_mult_17_U42 ( .A(MUL_6_mult_17_n66), .B(MUL_6_mult_17_n529), 
        .CI(MUL_6_mult_17_n64), .CO(MUL_6_mult_17_n54), .S(MUL_6_mult_17_n55)
         );
  FA_X1 MUL_6_mult_17_U41 ( .A(MUL_6_mult_17_n55), .B(MUL_6_mult_17_n57), .CI(
        MUL_6_mult_17_n62), .CO(MUL_6_mult_17_n52), .S(MUL_6_mult_17_n53) );
  FA_X1 MUL_6_mult_17_U40 ( .A(MUL_6_mult_17_n216), .B(MUL_6_mult_17_n205), 
        .CI(MUL_6_mult_17_n530), .CO(MUL_6_mult_17_n50), .S(MUL_6_mult_17_n51)
         );
  FA_X1 MUL_6_mult_17_U39 ( .A(MUL_6_mult_17_n58), .B(MUL_6_mult_17_n227), 
        .CI(MUL_6_mult_17_n56), .CO(MUL_6_mult_17_n48), .S(MUL_6_mult_17_n49)
         );
  FA_X1 MUL_6_mult_17_U38 ( .A(MUL_6_mult_17_n54), .B(MUL_6_mult_17_n51), .CI(
        MUL_6_mult_17_n49), .CO(MUL_6_mult_17_n46), .S(MUL_6_mult_17_n47) );
  FA_X1 MUL_6_mult_17_U36 ( .A(MUL_6_mult_17_n204), .B(MUL_6_mult_17_n215), 
        .CI(MUL_6_mult_17_n524), .CO(MUL_6_mult_17_n42), .S(MUL_6_mult_17_n43)
         );
  FA_X1 MUL_6_mult_17_U35 ( .A(MUL_6_mult_17_n43), .B(MUL_6_mult_17_n50), .CI(
        MUL_6_mult_17_n48), .CO(MUL_6_mult_17_n40), .S(MUL_6_mult_17_n41) );
  FA_X1 MUL_6_mult_17_U34 ( .A(MUL_6_mult_17_n214), .B(MUL_6_mult_17_n44), 
        .CI(MUL_6_mult_17_n525), .CO(MUL_6_mult_17_n38), .S(MUL_6_mult_17_n39)
         );
  FA_X1 MUL_6_mult_17_U33 ( .A(MUL_6_mult_17_n42), .B(MUL_6_mult_17_n203), 
        .CI(MUL_6_mult_17_n39), .CO(MUL_6_mult_17_n36), .S(MUL_6_mult_17_n37)
         );
  FA_X1 MUL_6_mult_17_U31 ( .A(MUL_6_mult_17_n518), .B(MUL_6_mult_17_n202), 
        .CI(MUL_6_mult_17_n38), .CO(MUL_6_mult_17_n32), .S(MUL_6_mult_17_n33)
         );
  FA_X1 MUL_6_mult_17_U30 ( .A(MUL_6_mult_17_n201), .B(MUL_6_mult_17_n34), 
        .CI(MUL_6_mult_17_n519), .CO(MUL_6_mult_17_n30), .S(MUL_6_mult_17_n31)
         );
  FA_X1 MUL_6_mult_17_U11 ( .A(MUL_6_mult_17_n53), .B(MUL_6_mult_17_n60), .CI(
        MUL_6_mult_17_n509), .CO(MUL_6_mult_17_n10), .S(
        TRUNCATED_MULT_RES_6__0_) );
  FA_X1 MUL_6_mult_17_U10 ( .A(MUL_6_mult_17_n47), .B(MUL_6_mult_17_n52), .CI(
        MUL_6_mult_17_n10), .CO(MUL_6_mult_17_n9), .S(TRUNCATED_MULT_RES_6__1_) );
  FA_X1 MUL_6_mult_17_U9 ( .A(MUL_6_mult_17_n41), .B(MUL_6_mult_17_n46), .CI(
        MUL_6_mult_17_n9), .CO(MUL_6_mult_17_n8), .S(TRUNCATED_MULT_RES_6__2_)
         );
  FA_X1 MUL_6_mult_17_U8 ( .A(MUL_6_mult_17_n37), .B(MUL_6_mult_17_n40), .CI(
        MUL_6_mult_17_n8), .CO(MUL_6_mult_17_n7), .S(TRUNCATED_MULT_RES_6__3_)
         );
  FA_X1 MUL_6_mult_17_U7 ( .A(MUL_6_mult_17_n33), .B(MUL_6_mult_17_n36), .CI(
        MUL_6_mult_17_n7), .CO(MUL_6_mult_17_n6), .S(TRUNCATED_MULT_RES_6__4_)
         );
  FA_X1 MUL_6_mult_17_U6 ( .A(MUL_6_mult_17_n32), .B(MUL_6_mult_17_n31), .CI(
        MUL_6_mult_17_n6), .CO(MUL_6_mult_17_n5), .S(TRUNCATED_MULT_RES_6__5_)
         );
  FA_X1 MUL_6_mult_17_U5 ( .A(MUL_6_mult_17_n30), .B(MUL_6_mult_17_n29), .CI(
        MUL_6_mult_17_n5), .CO(MUL_6_mult_17_n4), .S(TRUNCATED_MULT_RES_6__6_)
         );
  XOR2_X1 ADD_6_add_18_U2 ( .A(SUM_RESULTS_5__0_), .B(TRUNCATED_MULT_RES_6__0_), .Z(SUM_RESULTS_6__0_) );
  AND2_X1 ADD_6_add_18_U1 ( .A1(SUM_RESULTS_5__0_), .A2(
        TRUNCATED_MULT_RES_6__0_), .ZN(ADD_6_add_18_n1) );
  FA_X1 ADD_6_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_6__1_), .B(SUM_RESULTS_5__1_), .CI(ADD_6_add_18_n1), .CO(ADD_6_add_18_carry[2]), .S(SUM_RESULTS_6__1_) );
  FA_X1 ADD_6_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_6__2_), .B(SUM_RESULTS_5__2_), .CI(ADD_6_add_18_carry[2]), .CO(ADD_6_add_18_carry[3]), .S(SUM_RESULTS_6__2_) );
  FA_X1 ADD_6_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_6__3_), .B(SUM_RESULTS_5__3_), .CI(ADD_6_add_18_carry[3]), .CO(ADD_6_add_18_carry[4]), .S(SUM_RESULTS_6__3_) );
  FA_X1 ADD_6_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_6__4_), .B(SUM_RESULTS_5__4_), .CI(ADD_6_add_18_carry[4]), .CO(ADD_6_add_18_carry[5]), .S(SUM_RESULTS_6__4_) );
  FA_X1 ADD_6_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_6__5_), .B(SUM_RESULTS_5__5_), .CI(ADD_6_add_18_carry[5]), .CO(ADD_6_add_18_carry[6]), .S(SUM_RESULTS_6__5_) );
  FA_X1 ADD_6_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_6__6_), .B(SUM_RESULTS_5__6_), .CI(ADD_6_add_18_carry[6]), .CO(ADD_6_add_18_carry[7]), .S(SUM_RESULTS_6__6_) );
  FA_X1 ADD_6_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_6__7_), .B(SUM_RESULTS_5__7_), .CI(ADD_6_add_18_carry[7]), .CO(ADD_6_add_18_carry[8]), .S(SUM_RESULTS_6__7_) );
  FA_X1 ADD_6_add_18_U1_8 ( .A(TRUNCATED_MULT_RES_6__7_), .B(SUM_RESULTS_5__8_), .CI(ADD_6_add_18_carry[8]), .CO(ADD_6_add_18_carry[9]), .S(SUM_RESULTS_6__8_) );
  FA_X1 ADD_6_add_18_U1_9 ( .A(TRUNCATED_MULT_RES_6__7_), .B(
        SUM_RESULTS_5__12_), .CI(ADD_6_add_18_carry[9]), .S(SUM_RESULTS_6__12_) );
  BUF_X1 SAMPLE_REG_7_U31 ( .A(n545), .Z(SAMPLE_REG_7_n42) );
  NAND2_X1 SAMPLE_REG_7_U30 ( .A1(SAMPLE_REG_7_n42), .A2(SAMPLES[52]), .ZN(
        SAMPLE_REG_7_n82) );
  OAI21_X1 SAMPLE_REG_7_U29 ( .B1(SAMPLE_REG_7_n69), .B2(SAMPLE_REG_7_n42), 
        .A(SAMPLE_REG_7_n82), .ZN(SAMPLE_REG_7_n56) );
  NAND2_X1 SAMPLE_REG_7_U28 ( .A1(SAMPLES[54]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n80) );
  OAI21_X1 SAMPLE_REG_7_U27 ( .B1(SAMPLE_REG_7_n67), .B2(SAMPLE_REG_7_n41), 
        .A(SAMPLE_REG_7_n80), .ZN(SAMPLE_REG_7_n54) );
  NAND2_X1 SAMPLE_REG_7_U26 ( .A1(SAMPLES[64]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n70) );
  OAI21_X1 SAMPLE_REG_7_U25 ( .B1(SAMPLE_REG_7_n57), .B2(SAMPLE_REG_7_n41), 
        .A(SAMPLE_REG_7_n70), .ZN(SAMPLE_REG_7_n44) );
  NAND2_X1 SAMPLE_REG_7_U24 ( .A1(SAMPLES[63]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n71) );
  OAI21_X1 SAMPLE_REG_7_U23 ( .B1(SAMPLE_REG_7_n58), .B2(SAMPLE_REG_7_n41), 
        .A(SAMPLE_REG_7_n71), .ZN(SAMPLE_REG_7_n45) );
  NAND2_X1 SAMPLE_REG_7_U22 ( .A1(SAMPLES[62]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n72) );
  OAI21_X1 SAMPLE_REG_7_U21 ( .B1(SAMPLE_REG_7_n59), .B2(SAMPLE_REG_7_n41), 
        .A(SAMPLE_REG_7_n72), .ZN(SAMPLE_REG_7_n46) );
  NAND2_X1 SAMPLE_REG_7_U20 ( .A1(SAMPLES[61]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n73) );
  OAI21_X1 SAMPLE_REG_7_U19 ( .B1(SAMPLE_REG_7_n60), .B2(SAMPLE_REG_7_n41), 
        .A(SAMPLE_REG_7_n73), .ZN(SAMPLE_REG_7_n47) );
  NAND2_X1 SAMPLE_REG_7_U18 ( .A1(SAMPLES[60]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n74) );
  OAI21_X1 SAMPLE_REG_7_U17 ( .B1(SAMPLE_REG_7_n61), .B2(SAMPLE_REG_7_n41), 
        .A(SAMPLE_REG_7_n74), .ZN(SAMPLE_REG_7_n48) );
  NAND2_X1 SAMPLE_REG_7_U16 ( .A1(SAMPLES[59]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n75) );
  OAI21_X1 SAMPLE_REG_7_U15 ( .B1(SAMPLE_REG_7_n62), .B2(SAMPLE_REG_7_n41), 
        .A(SAMPLE_REG_7_n75), .ZN(SAMPLE_REG_7_n49) );
  NAND2_X1 SAMPLE_REG_7_U14 ( .A1(SAMPLES[58]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n76) );
  OAI21_X1 SAMPLE_REG_7_U13 ( .B1(SAMPLE_REG_7_n63), .B2(SAMPLE_REG_7_n41), 
        .A(SAMPLE_REG_7_n76), .ZN(SAMPLE_REG_7_n50) );
  NAND2_X1 SAMPLE_REG_7_U12 ( .A1(SAMPLES[57]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n77) );
  OAI21_X1 SAMPLE_REG_7_U11 ( .B1(SAMPLE_REG_7_n64), .B2(SAMPLE_REG_7_n41), 
        .A(SAMPLE_REG_7_n77), .ZN(SAMPLE_REG_7_n51) );
  NAND2_X1 SAMPLE_REG_7_U10 ( .A1(SAMPLES[56]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n78) );
  OAI21_X1 SAMPLE_REG_7_U9 ( .B1(SAMPLE_REG_7_n65), .B2(SAMPLE_REG_7_n41), .A(
        SAMPLE_REG_7_n78), .ZN(SAMPLE_REG_7_n52) );
  NAND2_X1 SAMPLE_REG_7_U8 ( .A1(SAMPLES[55]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n79) );
  OAI21_X1 SAMPLE_REG_7_U7 ( .B1(SAMPLE_REG_7_n66), .B2(SAMPLE_REG_7_n41), .A(
        SAMPLE_REG_7_n79), .ZN(SAMPLE_REG_7_n53) );
  NAND2_X1 SAMPLE_REG_7_U6 ( .A1(SAMPLES[53]), .A2(SAMPLE_REG_7_n40), .ZN(
        SAMPLE_REG_7_n81) );
  OAI21_X1 SAMPLE_REG_7_U5 ( .B1(SAMPLE_REG_7_n68), .B2(SAMPLE_REG_7_n41), .A(
        SAMPLE_REG_7_n81), .ZN(SAMPLE_REG_7_n55) );
  BUF_X1 SAMPLE_REG_7_U4 ( .A(n545), .Z(SAMPLE_REG_7_n41) );
  BUF_X1 SAMPLE_REG_7_U3 ( .A(n545), .Z(SAMPLE_REG_7_n40) );
  BUF_X1 SAMPLE_REG_7_U2 ( .A(n546), .Z(SAMPLE_REG_7_n43) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_12_ ( .D(SAMPLE_REG_7_n44), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[51]), .QN(SAMPLE_REG_7_n57) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_2_ ( .D(SAMPLE_REG_7_n54), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[41]), .QN(SAMPLE_REG_7_n67) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_4_ ( .D(SAMPLE_REG_7_n52), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[43]), .QN(SAMPLE_REG_7_n65) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_6_ ( .D(SAMPLE_REG_7_n50), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[45]), .QN(SAMPLE_REG_7_n63) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_8_ ( .D(SAMPLE_REG_7_n48), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[47]), .QN(SAMPLE_REG_7_n61) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_10_ ( .D(SAMPLE_REG_7_n46), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[49]), .QN(SAMPLE_REG_7_n59) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_0_ ( .D(SAMPLE_REG_7_n56), .CK(CLK), .RN(n546), 
        .Q(SAMPLES[39]), .QN(SAMPLE_REG_7_n69) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_1_ ( .D(SAMPLE_REG_7_n55), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[40]), .QN(SAMPLE_REG_7_n68) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_3_ ( .D(SAMPLE_REG_7_n53), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[42]), .QN(SAMPLE_REG_7_n66) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_5_ ( .D(SAMPLE_REG_7_n51), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[44]), .QN(SAMPLE_REG_7_n64) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_7_ ( .D(SAMPLE_REG_7_n49), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[46]), .QN(SAMPLE_REG_7_n62) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_9_ ( .D(SAMPLE_REG_7_n47), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[48]), .QN(SAMPLE_REG_7_n60) );
  DFFR_X1 SAMPLE_REG_7_DOUT_reg_11_ ( .D(SAMPLE_REG_7_n45), .CK(CLK), .RN(
        SAMPLE_REG_7_n43), .Q(SAMPLES[50]), .QN(SAMPLE_REG_7_n58) );
  XOR2_X1 MUL_7_mult_17_U660 ( .A(SAMPLES[41]), .B(SAMPLES[40]), .Z(
        MUL_7_mult_17_n681) );
  NAND2_X1 MUL_7_mult_17_U659 ( .A1(SAMPLES[40]), .A2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n571) );
  XNOR2_X1 MUL_7_mult_17_U658 ( .A(A[41]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n570) );
  OAI22_X1 MUL_7_mult_17_U657 ( .A1(A[40]), .A2(MUL_7_mult_17_n571), .B1(
        MUL_7_mult_17_n570), .B2(MUL_7_mult_17_n544), .ZN(MUL_7_mult_17_n683)
         );
  XNOR2_X1 MUL_7_mult_17_U656 ( .A(MUL_7_mult_17_n541), .B(SAMPLES[41]), .ZN(
        MUL_7_mult_17_n682) );
  NAND2_X1 MUL_7_mult_17_U655 ( .A1(MUL_7_mult_17_n542), .A2(
        MUL_7_mult_17_n682), .ZN(MUL_7_mult_17_n552) );
  NAND3_X1 MUL_7_mult_17_U654 ( .A1(MUL_7_mult_17_n681), .A2(
        MUL_7_mult_17_n546), .A3(SAMPLES[42]), .ZN(MUL_7_mult_17_n680) );
  OAI21_X1 MUL_7_mult_17_U653 ( .B1(MUL_7_mult_17_n541), .B2(
        MUL_7_mult_17_n552), .A(MUL_7_mult_17_n680), .ZN(MUL_7_mult_17_n679)
         );
  AOI222_X1 MUL_7_mult_17_U652 ( .A1(MUL_7_mult_17_n506), .A2(
        MUL_7_mult_17_n171), .B1(MUL_7_mult_17_n679), .B2(MUL_7_mult_17_n506), 
        .C1(MUL_7_mult_17_n679), .C2(MUL_7_mult_17_n171), .ZN(
        MUL_7_mult_17_n678) );
  AOI222_X1 MUL_7_mult_17_U651 ( .A1(MUL_7_mult_17_n538), .A2(
        MUL_7_mult_17_n169), .B1(MUL_7_mult_17_n538), .B2(MUL_7_mult_17_n170), 
        .C1(MUL_7_mult_17_n170), .C2(MUL_7_mult_17_n169), .ZN(
        MUL_7_mult_17_n677) );
  AOI222_X1 MUL_7_mult_17_U650 ( .A1(MUL_7_mult_17_n537), .A2(
        MUL_7_mult_17_n165), .B1(MUL_7_mult_17_n537), .B2(MUL_7_mult_17_n168), 
        .C1(MUL_7_mult_17_n168), .C2(MUL_7_mult_17_n165), .ZN(
        MUL_7_mult_17_n676) );
  AOI222_X1 MUL_7_mult_17_U649 ( .A1(MUL_7_mult_17_n533), .A2(
        MUL_7_mult_17_n161), .B1(MUL_7_mult_17_n533), .B2(MUL_7_mult_17_n164), 
        .C1(MUL_7_mult_17_n164), .C2(MUL_7_mult_17_n161), .ZN(
        MUL_7_mult_17_n675) );
  AOI222_X1 MUL_7_mult_17_U648 ( .A1(MUL_7_mult_17_n532), .A2(
        MUL_7_mult_17_n155), .B1(MUL_7_mult_17_n532), .B2(MUL_7_mult_17_n160), 
        .C1(MUL_7_mult_17_n160), .C2(MUL_7_mult_17_n155), .ZN(
        MUL_7_mult_17_n674) );
  AOI222_X1 MUL_7_mult_17_U647 ( .A1(MUL_7_mult_17_n528), .A2(
        MUL_7_mult_17_n149), .B1(MUL_7_mult_17_n528), .B2(MUL_7_mult_17_n154), 
        .C1(MUL_7_mult_17_n154), .C2(MUL_7_mult_17_n149), .ZN(
        MUL_7_mult_17_n673) );
  AOI222_X1 MUL_7_mult_17_U646 ( .A1(MUL_7_mult_17_n527), .A2(
        MUL_7_mult_17_n141), .B1(MUL_7_mult_17_n527), .B2(MUL_7_mult_17_n148), 
        .C1(MUL_7_mult_17_n148), .C2(MUL_7_mult_17_n141), .ZN(
        MUL_7_mult_17_n672) );
  AOI222_X1 MUL_7_mult_17_U645 ( .A1(MUL_7_mult_17_n523), .A2(
        MUL_7_mult_17_n133), .B1(MUL_7_mult_17_n523), .B2(MUL_7_mult_17_n140), 
        .C1(MUL_7_mult_17_n140), .C2(MUL_7_mult_17_n133), .ZN(
        MUL_7_mult_17_n671) );
  AOI222_X1 MUL_7_mult_17_U644 ( .A1(MUL_7_mult_17_n522), .A2(
        MUL_7_mult_17_n123), .B1(MUL_7_mult_17_n522), .B2(MUL_7_mult_17_n132), 
        .C1(MUL_7_mult_17_n132), .C2(MUL_7_mult_17_n123), .ZN(
        MUL_7_mult_17_n670) );
  AOI222_X1 MUL_7_mult_17_U643 ( .A1(MUL_7_mult_17_n517), .A2(
        MUL_7_mult_17_n113), .B1(MUL_7_mult_17_n517), .B2(MUL_7_mult_17_n122), 
        .C1(MUL_7_mult_17_n122), .C2(MUL_7_mult_17_n113), .ZN(
        MUL_7_mult_17_n669) );
  AOI222_X1 MUL_7_mult_17_U642 ( .A1(MUL_7_mult_17_n515), .A2(
        MUL_7_mult_17_n101), .B1(MUL_7_mult_17_n515), .B2(MUL_7_mult_17_n112), 
        .C1(MUL_7_mult_17_n112), .C2(MUL_7_mult_17_n101), .ZN(
        MUL_7_mult_17_n668) );
  AOI222_X1 MUL_7_mult_17_U641 ( .A1(MUL_7_mult_17_n513), .A2(
        MUL_7_mult_17_n89), .B1(MUL_7_mult_17_n513), .B2(MUL_7_mult_17_n100), 
        .C1(MUL_7_mult_17_n100), .C2(MUL_7_mult_17_n89), .ZN(
        MUL_7_mult_17_n667) );
  AOI222_X1 MUL_7_mult_17_U640 ( .A1(MUL_7_mult_17_n512), .A2(
        MUL_7_mult_17_n79), .B1(MUL_7_mult_17_n512), .B2(MUL_7_mult_17_n88), 
        .C1(MUL_7_mult_17_n88), .C2(MUL_7_mult_17_n79), .ZN(MUL_7_mult_17_n666) );
  AOI222_X1 MUL_7_mult_17_U639 ( .A1(MUL_7_mult_17_n511), .A2(
        MUL_7_mult_17_n69), .B1(MUL_7_mult_17_n511), .B2(MUL_7_mult_17_n78), 
        .C1(MUL_7_mult_17_n78), .C2(MUL_7_mult_17_n69), .ZN(MUL_7_mult_17_n665) );
  AOI222_X1 MUL_7_mult_17_U638 ( .A1(MUL_7_mult_17_n510), .A2(
        MUL_7_mult_17_n61), .B1(MUL_7_mult_17_n510), .B2(MUL_7_mult_17_n68), 
        .C1(MUL_7_mult_17_n68), .C2(MUL_7_mult_17_n61), .ZN(MUL_7_mult_17_n664) );
  XNOR2_X1 MUL_7_mult_17_U637 ( .A(A[41]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n633) );
  XNOR2_X1 MUL_7_mult_17_U636 ( .A(MUL_7_mult_17_n521), .B(SAMPLES[49]), .ZN(
        MUL_7_mult_17_n663) );
  NAND2_X1 MUL_7_mult_17_U635 ( .A1(MUL_7_mult_17_n568), .A2(
        MUL_7_mult_17_n663), .ZN(MUL_7_mult_17_n567) );
  XNOR2_X1 MUL_7_mult_17_U634 ( .A(A[42]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n634) );
  OAI22_X1 MUL_7_mult_17_U633 ( .A1(MUL_7_mult_17_n633), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n634), 
        .ZN(MUL_7_mult_17_n662) );
  XNOR2_X1 MUL_7_mult_17_U632 ( .A(MUL_7_mult_17_n545), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n661) );
  XNOR2_X1 MUL_7_mult_17_U631 ( .A(SAMPLES[51]), .B(MUL_7_mult_17_n521), .ZN(
        MUL_7_mult_17_n549) );
  NAND2_X1 MUL_7_mult_17_U630 ( .A1(MUL_7_mult_17_n661), .A2(
        MUL_7_mult_17_n549), .ZN(MUL_7_mult_17_n660) );
  NAND2_X1 MUL_7_mult_17_U629 ( .A1(MUL_7_mult_17_n520), .A2(
        MUL_7_mult_17_n660), .ZN(MUL_7_mult_17_n110) );
  XNOR2_X1 MUL_7_mult_17_U628 ( .A(MUL_7_mult_17_n660), .B(MUL_7_mult_17_n520), 
        .ZN(MUL_7_mult_17_n111) );
  NOR3_X1 MUL_7_mult_17_U627 ( .A1(MUL_7_mult_17_n514), .A2(A[39]), .A3(
        MUL_7_mult_17_n516), .ZN(MUL_7_mult_17_n193) );
  OR3_X1 MUL_7_mult_17_U626 ( .A1(MUL_7_mult_17_n568), .A2(A[39]), .A3(
        MUL_7_mult_17_n521), .ZN(MUL_7_mult_17_n659) );
  OAI21_X1 MUL_7_mult_17_U625 ( .B1(MUL_7_mult_17_n521), .B2(
        MUL_7_mult_17_n567), .A(MUL_7_mult_17_n659), .ZN(MUL_7_mult_17_n194)
         );
  XNOR2_X1 MUL_7_mult_17_U624 ( .A(MUL_7_mult_17_n526), .B(SAMPLES[47]), .ZN(
        MUL_7_mult_17_n658) );
  NAND2_X1 MUL_7_mult_17_U623 ( .A1(MUL_7_mult_17_n564), .A2(
        MUL_7_mult_17_n658), .ZN(MUL_7_mult_17_n563) );
  OR3_X1 MUL_7_mult_17_U622 ( .A1(MUL_7_mult_17_n564), .A2(A[39]), .A3(
        MUL_7_mult_17_n526), .ZN(MUL_7_mult_17_n657) );
  OAI21_X1 MUL_7_mult_17_U621 ( .B1(MUL_7_mult_17_n526), .B2(
        MUL_7_mult_17_n563), .A(MUL_7_mult_17_n657), .ZN(MUL_7_mult_17_n195)
         );
  XNOR2_X1 MUL_7_mult_17_U620 ( .A(MUL_7_mult_17_n531), .B(SAMPLES[45]), .ZN(
        MUL_7_mult_17_n656) );
  NAND2_X1 MUL_7_mult_17_U619 ( .A1(MUL_7_mult_17_n560), .A2(
        MUL_7_mult_17_n656), .ZN(MUL_7_mult_17_n559) );
  OR3_X1 MUL_7_mult_17_U618 ( .A1(MUL_7_mult_17_n560), .A2(A[39]), .A3(
        MUL_7_mult_17_n531), .ZN(MUL_7_mult_17_n655) );
  OAI21_X1 MUL_7_mult_17_U617 ( .B1(MUL_7_mult_17_n531), .B2(
        MUL_7_mult_17_n559), .A(MUL_7_mult_17_n655), .ZN(MUL_7_mult_17_n196)
         );
  XNOR2_X1 MUL_7_mult_17_U616 ( .A(MUL_7_mult_17_n536), .B(SAMPLES[43]), .ZN(
        MUL_7_mult_17_n654) );
  NAND2_X1 MUL_7_mult_17_U615 ( .A1(MUL_7_mult_17_n556), .A2(
        MUL_7_mult_17_n654), .ZN(MUL_7_mult_17_n555) );
  OR3_X1 MUL_7_mult_17_U614 ( .A1(MUL_7_mult_17_n556), .A2(A[39]), .A3(
        MUL_7_mult_17_n536), .ZN(MUL_7_mult_17_n653) );
  OAI21_X1 MUL_7_mult_17_U613 ( .B1(MUL_7_mult_17_n536), .B2(
        MUL_7_mult_17_n555), .A(MUL_7_mult_17_n653), .ZN(MUL_7_mult_17_n197)
         );
  XNOR2_X1 MUL_7_mult_17_U612 ( .A(A[50]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n652) );
  NOR2_X1 MUL_7_mult_17_U611 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n652), .ZN(MUL_7_mult_17_n201) );
  XNOR2_X1 MUL_7_mult_17_U610 ( .A(A[49]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n651) );
  NOR2_X1 MUL_7_mult_17_U609 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n651), .ZN(MUL_7_mult_17_n202) );
  XNOR2_X1 MUL_7_mult_17_U608 ( .A(A[48]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n650) );
  NOR2_X1 MUL_7_mult_17_U607 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n650), .ZN(MUL_7_mult_17_n203) );
  XNOR2_X1 MUL_7_mult_17_U606 ( .A(A[47]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n649) );
  NOR2_X1 MUL_7_mult_17_U605 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n649), .ZN(MUL_7_mult_17_n204) );
  XNOR2_X1 MUL_7_mult_17_U604 ( .A(A[46]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n648) );
  NOR2_X1 MUL_7_mult_17_U603 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n648), .ZN(MUL_7_mult_17_n205) );
  XNOR2_X1 MUL_7_mult_17_U602 ( .A(A[45]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n647) );
  NOR2_X1 MUL_7_mult_17_U601 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n647), .ZN(MUL_7_mult_17_n206) );
  XNOR2_X1 MUL_7_mult_17_U600 ( .A(A[44]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n646) );
  NOR2_X1 MUL_7_mult_17_U599 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n646), .ZN(MUL_7_mult_17_n207) );
  XNOR2_X1 MUL_7_mult_17_U598 ( .A(A[43]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n645) );
  NOR2_X1 MUL_7_mult_17_U597 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n645), .ZN(MUL_7_mult_17_n208) );
  XNOR2_X1 MUL_7_mult_17_U596 ( .A(A[42]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n644) );
  NOR2_X1 MUL_7_mult_17_U595 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n644), .ZN(MUL_7_mult_17_n209) );
  XNOR2_X1 MUL_7_mult_17_U594 ( .A(A[41]), .B(SAMPLES[51]), .ZN(
        MUL_7_mult_17_n643) );
  NOR2_X1 MUL_7_mult_17_U593 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n643), .ZN(MUL_7_mult_17_n210) );
  NOR2_X1 MUL_7_mult_17_U592 ( .A1(MUL_7_mult_17_n516), .A2(MUL_7_mult_17_n546), .ZN(MUL_7_mult_17_n212) );
  XNOR2_X1 MUL_7_mult_17_U591 ( .A(A[51]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n569) );
  OAI22_X1 MUL_7_mult_17_U590 ( .A1(MUL_7_mult_17_n569), .A2(
        MUL_7_mult_17_n568), .B1(MUL_7_mult_17_n567), .B2(MUL_7_mult_17_n569), 
        .ZN(MUL_7_mult_17_n642) );
  XNOR2_X1 MUL_7_mult_17_U589 ( .A(A[49]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n641) );
  XNOR2_X1 MUL_7_mult_17_U588 ( .A(A[50]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n566) );
  OAI22_X1 MUL_7_mult_17_U587 ( .A1(MUL_7_mult_17_n641), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n566), 
        .ZN(MUL_7_mult_17_n214) );
  XNOR2_X1 MUL_7_mult_17_U586 ( .A(A[48]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n640) );
  OAI22_X1 MUL_7_mult_17_U585 ( .A1(MUL_7_mult_17_n640), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n641), 
        .ZN(MUL_7_mult_17_n215) );
  XNOR2_X1 MUL_7_mult_17_U584 ( .A(A[47]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n639) );
  OAI22_X1 MUL_7_mult_17_U583 ( .A1(MUL_7_mult_17_n639), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n640), 
        .ZN(MUL_7_mult_17_n216) );
  XNOR2_X1 MUL_7_mult_17_U582 ( .A(A[46]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n638) );
  OAI22_X1 MUL_7_mult_17_U581 ( .A1(MUL_7_mult_17_n638), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n639), 
        .ZN(MUL_7_mult_17_n217) );
  XNOR2_X1 MUL_7_mult_17_U580 ( .A(A[45]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n637) );
  OAI22_X1 MUL_7_mult_17_U579 ( .A1(MUL_7_mult_17_n637), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n638), 
        .ZN(MUL_7_mult_17_n218) );
  XNOR2_X1 MUL_7_mult_17_U578 ( .A(A[44]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n636) );
  OAI22_X1 MUL_7_mult_17_U577 ( .A1(MUL_7_mult_17_n636), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n637), 
        .ZN(MUL_7_mult_17_n219) );
  XNOR2_X1 MUL_7_mult_17_U576 ( .A(A[43]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n635) );
  OAI22_X1 MUL_7_mult_17_U575 ( .A1(MUL_7_mult_17_n635), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n636), 
        .ZN(MUL_7_mult_17_n220) );
  OAI22_X1 MUL_7_mult_17_U574 ( .A1(MUL_7_mult_17_n634), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n635), 
        .ZN(MUL_7_mult_17_n221) );
  XNOR2_X1 MUL_7_mult_17_U573 ( .A(A[40]), .B(SAMPLES[50]), .ZN(
        MUL_7_mult_17_n632) );
  OAI22_X1 MUL_7_mult_17_U572 ( .A1(MUL_7_mult_17_n632), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n633), 
        .ZN(MUL_7_mult_17_n223) );
  XNOR2_X1 MUL_7_mult_17_U571 ( .A(SAMPLES[50]), .B(A[39]), .ZN(
        MUL_7_mult_17_n631) );
  OAI22_X1 MUL_7_mult_17_U570 ( .A1(MUL_7_mult_17_n631), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n632), 
        .ZN(MUL_7_mult_17_n224) );
  NOR2_X1 MUL_7_mult_17_U569 ( .A1(MUL_7_mult_17_n568), .A2(MUL_7_mult_17_n546), .ZN(MUL_7_mult_17_n225) );
  XNOR2_X1 MUL_7_mult_17_U568 ( .A(A[51]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n565) );
  OAI22_X1 MUL_7_mult_17_U567 ( .A1(MUL_7_mult_17_n565), .A2(
        MUL_7_mult_17_n564), .B1(MUL_7_mult_17_n563), .B2(MUL_7_mult_17_n565), 
        .ZN(MUL_7_mult_17_n630) );
  XNOR2_X1 MUL_7_mult_17_U566 ( .A(A[49]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n629) );
  XNOR2_X1 MUL_7_mult_17_U565 ( .A(A[50]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n562) );
  OAI22_X1 MUL_7_mult_17_U564 ( .A1(MUL_7_mult_17_n629), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n562), 
        .ZN(MUL_7_mult_17_n227) );
  XNOR2_X1 MUL_7_mult_17_U563 ( .A(A[48]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n628) );
  OAI22_X1 MUL_7_mult_17_U562 ( .A1(MUL_7_mult_17_n628), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n629), 
        .ZN(MUL_7_mult_17_n228) );
  XNOR2_X1 MUL_7_mult_17_U561 ( .A(A[47]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n627) );
  OAI22_X1 MUL_7_mult_17_U560 ( .A1(MUL_7_mult_17_n627), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n628), 
        .ZN(MUL_7_mult_17_n229) );
  XNOR2_X1 MUL_7_mult_17_U559 ( .A(A[46]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n626) );
  OAI22_X1 MUL_7_mult_17_U558 ( .A1(MUL_7_mult_17_n626), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n627), 
        .ZN(MUL_7_mult_17_n230) );
  XNOR2_X1 MUL_7_mult_17_U557 ( .A(A[45]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n625) );
  OAI22_X1 MUL_7_mult_17_U556 ( .A1(MUL_7_mult_17_n625), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n626), 
        .ZN(MUL_7_mult_17_n231) );
  XNOR2_X1 MUL_7_mult_17_U555 ( .A(A[44]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n624) );
  OAI22_X1 MUL_7_mult_17_U554 ( .A1(MUL_7_mult_17_n624), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n625), 
        .ZN(MUL_7_mult_17_n232) );
  XNOR2_X1 MUL_7_mult_17_U553 ( .A(A[43]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n623) );
  OAI22_X1 MUL_7_mult_17_U552 ( .A1(MUL_7_mult_17_n623), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n624), 
        .ZN(MUL_7_mult_17_n233) );
  XNOR2_X1 MUL_7_mult_17_U551 ( .A(A[42]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n622) );
  OAI22_X1 MUL_7_mult_17_U550 ( .A1(MUL_7_mult_17_n622), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n623), 
        .ZN(MUL_7_mult_17_n234) );
  XNOR2_X1 MUL_7_mult_17_U549 ( .A(A[41]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n621) );
  OAI22_X1 MUL_7_mult_17_U548 ( .A1(MUL_7_mult_17_n621), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n622), 
        .ZN(MUL_7_mult_17_n235) );
  XNOR2_X1 MUL_7_mult_17_U547 ( .A(A[40]), .B(SAMPLES[48]), .ZN(
        MUL_7_mult_17_n620) );
  OAI22_X1 MUL_7_mult_17_U546 ( .A1(MUL_7_mult_17_n620), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n621), 
        .ZN(MUL_7_mult_17_n236) );
  XNOR2_X1 MUL_7_mult_17_U545 ( .A(SAMPLES[48]), .B(A[39]), .ZN(
        MUL_7_mult_17_n619) );
  OAI22_X1 MUL_7_mult_17_U544 ( .A1(MUL_7_mult_17_n619), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n620), 
        .ZN(MUL_7_mult_17_n237) );
  NOR2_X1 MUL_7_mult_17_U543 ( .A1(MUL_7_mult_17_n564), .A2(MUL_7_mult_17_n546), .ZN(MUL_7_mult_17_n238) );
  XNOR2_X1 MUL_7_mult_17_U542 ( .A(A[51]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n561) );
  OAI22_X1 MUL_7_mult_17_U541 ( .A1(MUL_7_mult_17_n561), .A2(
        MUL_7_mult_17_n560), .B1(MUL_7_mult_17_n559), .B2(MUL_7_mult_17_n561), 
        .ZN(MUL_7_mult_17_n618) );
  XNOR2_X1 MUL_7_mult_17_U540 ( .A(A[49]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n617) );
  XNOR2_X1 MUL_7_mult_17_U539 ( .A(A[50]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n558) );
  OAI22_X1 MUL_7_mult_17_U538 ( .A1(MUL_7_mult_17_n617), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n558), 
        .ZN(MUL_7_mult_17_n240) );
  XNOR2_X1 MUL_7_mult_17_U537 ( .A(A[48]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n616) );
  OAI22_X1 MUL_7_mult_17_U536 ( .A1(MUL_7_mult_17_n616), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n617), 
        .ZN(MUL_7_mult_17_n241) );
  XNOR2_X1 MUL_7_mult_17_U535 ( .A(A[47]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n615) );
  OAI22_X1 MUL_7_mult_17_U534 ( .A1(MUL_7_mult_17_n615), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n616), 
        .ZN(MUL_7_mult_17_n242) );
  XNOR2_X1 MUL_7_mult_17_U533 ( .A(A[46]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n614) );
  OAI22_X1 MUL_7_mult_17_U532 ( .A1(MUL_7_mult_17_n614), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n615), 
        .ZN(MUL_7_mult_17_n243) );
  XNOR2_X1 MUL_7_mult_17_U531 ( .A(A[45]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n613) );
  OAI22_X1 MUL_7_mult_17_U530 ( .A1(MUL_7_mult_17_n613), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n614), 
        .ZN(MUL_7_mult_17_n244) );
  XNOR2_X1 MUL_7_mult_17_U529 ( .A(A[44]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n612) );
  OAI22_X1 MUL_7_mult_17_U528 ( .A1(MUL_7_mult_17_n612), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n613), 
        .ZN(MUL_7_mult_17_n245) );
  XNOR2_X1 MUL_7_mult_17_U527 ( .A(A[43]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n611) );
  OAI22_X1 MUL_7_mult_17_U526 ( .A1(MUL_7_mult_17_n611), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n612), 
        .ZN(MUL_7_mult_17_n246) );
  XNOR2_X1 MUL_7_mult_17_U525 ( .A(A[42]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n610) );
  OAI22_X1 MUL_7_mult_17_U524 ( .A1(MUL_7_mult_17_n610), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n611), 
        .ZN(MUL_7_mult_17_n247) );
  XNOR2_X1 MUL_7_mult_17_U523 ( .A(A[41]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n609) );
  OAI22_X1 MUL_7_mult_17_U522 ( .A1(MUL_7_mult_17_n609), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n610), 
        .ZN(MUL_7_mult_17_n248) );
  XNOR2_X1 MUL_7_mult_17_U521 ( .A(A[40]), .B(SAMPLES[46]), .ZN(
        MUL_7_mult_17_n608) );
  OAI22_X1 MUL_7_mult_17_U520 ( .A1(MUL_7_mult_17_n608), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n609), 
        .ZN(MUL_7_mult_17_n249) );
  XNOR2_X1 MUL_7_mult_17_U519 ( .A(SAMPLES[46]), .B(A[39]), .ZN(
        MUL_7_mult_17_n607) );
  OAI22_X1 MUL_7_mult_17_U518 ( .A1(MUL_7_mult_17_n607), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n608), 
        .ZN(MUL_7_mult_17_n250) );
  NOR2_X1 MUL_7_mult_17_U517 ( .A1(MUL_7_mult_17_n560), .A2(MUL_7_mult_17_n546), .ZN(MUL_7_mult_17_n251) );
  XNOR2_X1 MUL_7_mult_17_U516 ( .A(A[51]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n557) );
  OAI22_X1 MUL_7_mult_17_U515 ( .A1(MUL_7_mult_17_n557), .A2(
        MUL_7_mult_17_n556), .B1(MUL_7_mult_17_n555), .B2(MUL_7_mult_17_n557), 
        .ZN(MUL_7_mult_17_n606) );
  XNOR2_X1 MUL_7_mult_17_U514 ( .A(A[49]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n605) );
  XNOR2_X1 MUL_7_mult_17_U513 ( .A(A[50]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n554) );
  OAI22_X1 MUL_7_mult_17_U512 ( .A1(MUL_7_mult_17_n605), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n554), 
        .ZN(MUL_7_mult_17_n253) );
  XNOR2_X1 MUL_7_mult_17_U511 ( .A(A[48]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n604) );
  OAI22_X1 MUL_7_mult_17_U510 ( .A1(MUL_7_mult_17_n604), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n605), 
        .ZN(MUL_7_mult_17_n254) );
  XNOR2_X1 MUL_7_mult_17_U509 ( .A(A[47]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n603) );
  OAI22_X1 MUL_7_mult_17_U508 ( .A1(MUL_7_mult_17_n603), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n604), 
        .ZN(MUL_7_mult_17_n255) );
  XNOR2_X1 MUL_7_mult_17_U507 ( .A(A[46]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n602) );
  OAI22_X1 MUL_7_mult_17_U506 ( .A1(MUL_7_mult_17_n602), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n603), 
        .ZN(MUL_7_mult_17_n256) );
  XNOR2_X1 MUL_7_mult_17_U505 ( .A(A[45]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n601) );
  OAI22_X1 MUL_7_mult_17_U504 ( .A1(MUL_7_mult_17_n601), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n602), 
        .ZN(MUL_7_mult_17_n257) );
  XNOR2_X1 MUL_7_mult_17_U503 ( .A(A[44]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n600) );
  OAI22_X1 MUL_7_mult_17_U502 ( .A1(MUL_7_mult_17_n600), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n601), 
        .ZN(MUL_7_mult_17_n258) );
  XNOR2_X1 MUL_7_mult_17_U501 ( .A(A[43]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n599) );
  OAI22_X1 MUL_7_mult_17_U500 ( .A1(MUL_7_mult_17_n599), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n600), 
        .ZN(MUL_7_mult_17_n259) );
  XNOR2_X1 MUL_7_mult_17_U499 ( .A(A[42]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n598) );
  OAI22_X1 MUL_7_mult_17_U498 ( .A1(MUL_7_mult_17_n598), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n599), 
        .ZN(MUL_7_mult_17_n260) );
  XNOR2_X1 MUL_7_mult_17_U497 ( .A(A[41]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n597) );
  OAI22_X1 MUL_7_mult_17_U496 ( .A1(MUL_7_mult_17_n597), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n598), 
        .ZN(MUL_7_mult_17_n261) );
  XNOR2_X1 MUL_7_mult_17_U495 ( .A(A[40]), .B(SAMPLES[44]), .ZN(
        MUL_7_mult_17_n596) );
  OAI22_X1 MUL_7_mult_17_U494 ( .A1(MUL_7_mult_17_n596), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n597), 
        .ZN(MUL_7_mult_17_n262) );
  XNOR2_X1 MUL_7_mult_17_U493 ( .A(SAMPLES[44]), .B(A[39]), .ZN(
        MUL_7_mult_17_n595) );
  OAI22_X1 MUL_7_mult_17_U492 ( .A1(MUL_7_mult_17_n595), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n596), 
        .ZN(MUL_7_mult_17_n263) );
  NOR2_X1 MUL_7_mult_17_U491 ( .A1(MUL_7_mult_17_n556), .A2(MUL_7_mult_17_n546), .ZN(MUL_7_mult_17_n264) );
  XOR2_X1 MUL_7_mult_17_U490 ( .A(A[51]), .B(MUL_7_mult_17_n541), .Z(
        MUL_7_mult_17_n553) );
  OAI22_X1 MUL_7_mult_17_U489 ( .A1(MUL_7_mult_17_n553), .A2(
        MUL_7_mult_17_n542), .B1(MUL_7_mult_17_n552), .B2(MUL_7_mult_17_n553), 
        .ZN(MUL_7_mult_17_n594) );
  XNOR2_X1 MUL_7_mult_17_U488 ( .A(A[49]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n593) );
  XNOR2_X1 MUL_7_mult_17_U487 ( .A(A[50]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n551) );
  OAI22_X1 MUL_7_mult_17_U486 ( .A1(MUL_7_mult_17_n593), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n551), 
        .ZN(MUL_7_mult_17_n266) );
  XNOR2_X1 MUL_7_mult_17_U485 ( .A(A[48]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n592) );
  OAI22_X1 MUL_7_mult_17_U484 ( .A1(MUL_7_mult_17_n592), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n593), 
        .ZN(MUL_7_mult_17_n267) );
  XNOR2_X1 MUL_7_mult_17_U483 ( .A(A[47]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n591) );
  OAI22_X1 MUL_7_mult_17_U482 ( .A1(MUL_7_mult_17_n591), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n592), 
        .ZN(MUL_7_mult_17_n268) );
  XNOR2_X1 MUL_7_mult_17_U481 ( .A(A[46]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n590) );
  OAI22_X1 MUL_7_mult_17_U480 ( .A1(MUL_7_mult_17_n590), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n591), 
        .ZN(MUL_7_mult_17_n269) );
  XNOR2_X1 MUL_7_mult_17_U479 ( .A(A[45]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n589) );
  OAI22_X1 MUL_7_mult_17_U478 ( .A1(MUL_7_mult_17_n589), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n590), 
        .ZN(MUL_7_mult_17_n270) );
  XNOR2_X1 MUL_7_mult_17_U477 ( .A(A[44]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n588) );
  OAI22_X1 MUL_7_mult_17_U476 ( .A1(MUL_7_mult_17_n588), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n589), 
        .ZN(MUL_7_mult_17_n271) );
  XNOR2_X1 MUL_7_mult_17_U475 ( .A(A[43]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n587) );
  OAI22_X1 MUL_7_mult_17_U474 ( .A1(MUL_7_mult_17_n587), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n588), 
        .ZN(MUL_7_mult_17_n272) );
  XNOR2_X1 MUL_7_mult_17_U473 ( .A(A[42]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n586) );
  OAI22_X1 MUL_7_mult_17_U472 ( .A1(MUL_7_mult_17_n586), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n587), 
        .ZN(MUL_7_mult_17_n273) );
  XNOR2_X1 MUL_7_mult_17_U471 ( .A(A[41]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n585) );
  OAI22_X1 MUL_7_mult_17_U470 ( .A1(MUL_7_mult_17_n585), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n586), 
        .ZN(MUL_7_mult_17_n274) );
  XNOR2_X1 MUL_7_mult_17_U469 ( .A(A[40]), .B(SAMPLES[42]), .ZN(
        MUL_7_mult_17_n584) );
  OAI22_X1 MUL_7_mult_17_U468 ( .A1(MUL_7_mult_17_n584), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n585), 
        .ZN(MUL_7_mult_17_n275) );
  XNOR2_X1 MUL_7_mult_17_U467 ( .A(SAMPLES[42]), .B(A[39]), .ZN(
        MUL_7_mult_17_n583) );
  OAI22_X1 MUL_7_mult_17_U466 ( .A1(MUL_7_mult_17_n583), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n584), 
        .ZN(MUL_7_mult_17_n276) );
  XNOR2_X1 MUL_7_mult_17_U465 ( .A(A[51]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n581) );
  OAI22_X1 MUL_7_mult_17_U464 ( .A1(MUL_7_mult_17_n544), .A2(
        MUL_7_mult_17_n581), .B1(MUL_7_mult_17_n571), .B2(MUL_7_mult_17_n581), 
        .ZN(MUL_7_mult_17_n582) );
  XNOR2_X1 MUL_7_mult_17_U463 ( .A(A[50]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n580) );
  OAI22_X1 MUL_7_mult_17_U462 ( .A1(MUL_7_mult_17_n580), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n581), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n279) );
  XNOR2_X1 MUL_7_mult_17_U461 ( .A(A[49]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n579) );
  OAI22_X1 MUL_7_mult_17_U460 ( .A1(MUL_7_mult_17_n579), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n580), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n280) );
  XNOR2_X1 MUL_7_mult_17_U459 ( .A(A[48]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n578) );
  OAI22_X1 MUL_7_mult_17_U458 ( .A1(MUL_7_mult_17_n578), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n579), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n281) );
  XNOR2_X1 MUL_7_mult_17_U457 ( .A(A[47]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n577) );
  OAI22_X1 MUL_7_mult_17_U456 ( .A1(MUL_7_mult_17_n577), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n578), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n282) );
  XNOR2_X1 MUL_7_mult_17_U455 ( .A(A[46]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n576) );
  OAI22_X1 MUL_7_mult_17_U454 ( .A1(MUL_7_mult_17_n576), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n577), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n283) );
  XNOR2_X1 MUL_7_mult_17_U453 ( .A(A[45]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n575) );
  OAI22_X1 MUL_7_mult_17_U452 ( .A1(MUL_7_mult_17_n575), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n576), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n284) );
  XNOR2_X1 MUL_7_mult_17_U451 ( .A(A[44]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n574) );
  OAI22_X1 MUL_7_mult_17_U450 ( .A1(MUL_7_mult_17_n574), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n575), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n285) );
  XNOR2_X1 MUL_7_mult_17_U449 ( .A(A[43]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n573) );
  OAI22_X1 MUL_7_mult_17_U448 ( .A1(MUL_7_mult_17_n573), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n574), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n286) );
  XNOR2_X1 MUL_7_mult_17_U447 ( .A(A[42]), .B(SAMPLES[40]), .ZN(
        MUL_7_mult_17_n572) );
  OAI22_X1 MUL_7_mult_17_U446 ( .A1(MUL_7_mult_17_n572), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n573), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n287) );
  OAI22_X1 MUL_7_mult_17_U445 ( .A1(MUL_7_mult_17_n570), .A2(
        MUL_7_mult_17_n571), .B1(MUL_7_mult_17_n572), .B2(MUL_7_mult_17_n544), 
        .ZN(MUL_7_mult_17_n288) );
  XNOR2_X1 MUL_7_mult_17_U444 ( .A(A[51]), .B(MUL_7_mult_17_n514), .ZN(
        MUL_7_mult_17_n550) );
  NAND2_X1 MUL_7_mult_17_U443 ( .A1(MUL_7_mult_17_n550), .A2(
        MUL_7_mult_17_n549), .ZN(MUL_7_mult_17_n29) );
  OAI22_X1 MUL_7_mult_17_U442 ( .A1(MUL_7_mult_17_n566), .A2(
        MUL_7_mult_17_n567), .B1(MUL_7_mult_17_n568), .B2(MUL_7_mult_17_n569), 
        .ZN(MUL_7_mult_17_n34) );
  OAI22_X1 MUL_7_mult_17_U441 ( .A1(MUL_7_mult_17_n562), .A2(
        MUL_7_mult_17_n563), .B1(MUL_7_mult_17_n564), .B2(MUL_7_mult_17_n565), 
        .ZN(MUL_7_mult_17_n44) );
  OAI22_X1 MUL_7_mult_17_U440 ( .A1(MUL_7_mult_17_n558), .A2(
        MUL_7_mult_17_n559), .B1(MUL_7_mult_17_n560), .B2(MUL_7_mult_17_n561), 
        .ZN(MUL_7_mult_17_n58) );
  OAI22_X1 MUL_7_mult_17_U439 ( .A1(MUL_7_mult_17_n554), .A2(
        MUL_7_mult_17_n555), .B1(MUL_7_mult_17_n556), .B2(MUL_7_mult_17_n557), 
        .ZN(MUL_7_mult_17_n76) );
  OAI22_X1 MUL_7_mult_17_U438 ( .A1(MUL_7_mult_17_n551), .A2(
        MUL_7_mult_17_n552), .B1(MUL_7_mult_17_n542), .B2(MUL_7_mult_17_n553), 
        .ZN(MUL_7_mult_17_n98) );
  NOR2_X1 MUL_7_mult_17_U437 ( .A1(MUL_7_mult_17_n544), .A2(MUL_7_mult_17_n546), .ZN(MUL_7_O_0_) );
  XOR2_X1 MUL_7_mult_17_U436 ( .A(MUL_7_mult_17_n29), .B(MUL_7_mult_17_n4), 
        .Z(MUL_7_mult_17_n547) );
  AND2_X1 MUL_7_mult_17_U435 ( .A1(MUL_7_mult_17_n549), .A2(MUL_7_mult_17_n550), .ZN(MUL_7_mult_17_n548) );
  XOR2_X1 MUL_7_mult_17_U434 ( .A(MUL_7_mult_17_n547), .B(MUL_7_mult_17_n548), 
        .Z(TRUNCATED_MULT_RES_7__7_) );
  XOR2_X2 MUL_7_mult_17_U433 ( .A(SAMPLES[49]), .B(MUL_7_mult_17_n526), .Z(
        MUL_7_mult_17_n568) );
  XOR2_X2 MUL_7_mult_17_U432 ( .A(SAMPLES[47]), .B(MUL_7_mult_17_n531), .Z(
        MUL_7_mult_17_n564) );
  XOR2_X2 MUL_7_mult_17_U431 ( .A(SAMPLES[45]), .B(MUL_7_mult_17_n536), .Z(
        MUL_7_mult_17_n560) );
  XOR2_X2 MUL_7_mult_17_U430 ( .A(SAMPLES[43]), .B(MUL_7_mult_17_n541), .Z(
        MUL_7_mult_17_n556) );
  INV_X1 MUL_7_mult_17_U429 ( .A(MUL_7_mult_17_n642), .ZN(MUL_7_mult_17_n519)
         );
  INV_X1 MUL_7_mult_17_U428 ( .A(MUL_7_mult_17_n34), .ZN(MUL_7_mult_17_n518)
         );
  INV_X1 MUL_7_mult_17_U427 ( .A(MUL_7_mult_17_n594), .ZN(MUL_7_mult_17_n540)
         );
  INV_X1 MUL_7_mult_17_U426 ( .A(SAMPLES[51]), .ZN(MUL_7_mult_17_n514) );
  INV_X1 MUL_7_mult_17_U425 ( .A(A[40]), .ZN(MUL_7_mult_17_n545) );
  AND3_X1 MUL_7_mult_17_U424 ( .A1(MUL_7_mult_17_n683), .A2(MUL_7_mult_17_n545), .A3(SAMPLES[40]), .ZN(MUL_7_mult_17_n508) );
  AND2_X1 MUL_7_mult_17_U423 ( .A1(MUL_7_mult_17_n681), .A2(MUL_7_mult_17_n683), .ZN(MUL_7_mult_17_n507) );
  MUX2_X1 MUL_7_mult_17_U422 ( .A(MUL_7_mult_17_n507), .B(MUL_7_mult_17_n508), 
        .S(MUL_7_mult_17_n546), .Z(MUL_7_mult_17_n506) );
  INV_X1 MUL_7_mult_17_U421 ( .A(A[39]), .ZN(MUL_7_mult_17_n546) );
  INV_X1 MUL_7_mult_17_U420 ( .A(SAMPLES[50]), .ZN(MUL_7_mult_17_n521) );
  INV_X1 MUL_7_mult_17_U419 ( .A(SAMPLES[48]), .ZN(MUL_7_mult_17_n526) );
  INV_X1 MUL_7_mult_17_U418 ( .A(SAMPLES[46]), .ZN(MUL_7_mult_17_n531) );
  INV_X1 MUL_7_mult_17_U417 ( .A(SAMPLES[44]), .ZN(MUL_7_mult_17_n536) );
  INV_X1 MUL_7_mult_17_U416 ( .A(SAMPLES[39]), .ZN(MUL_7_mult_17_n544) );
  INV_X1 MUL_7_mult_17_U415 ( .A(SAMPLES[42]), .ZN(MUL_7_mult_17_n541) );
  INV_X1 MUL_7_mult_17_U414 ( .A(MUL_7_mult_17_n630), .ZN(MUL_7_mult_17_n525)
         );
  INV_X1 MUL_7_mult_17_U413 ( .A(MUL_7_mult_17_n606), .ZN(MUL_7_mult_17_n535)
         );
  INV_X1 MUL_7_mult_17_U412 ( .A(MUL_7_mult_17_n76), .ZN(MUL_7_mult_17_n534)
         );
  INV_X1 MUL_7_mult_17_U411 ( .A(MUL_7_mult_17_n618), .ZN(MUL_7_mult_17_n530)
         );
  INV_X1 MUL_7_mult_17_U410 ( .A(MUL_7_mult_17_n44), .ZN(MUL_7_mult_17_n524)
         );
  INV_X1 MUL_7_mult_17_U409 ( .A(MUL_7_mult_17_n662), .ZN(MUL_7_mult_17_n520)
         );
  INV_X1 MUL_7_mult_17_U408 ( .A(MUL_7_mult_17_n98), .ZN(MUL_7_mult_17_n539)
         );
  INV_X1 MUL_7_mult_17_U407 ( .A(MUL_7_mult_17_n582), .ZN(MUL_7_mult_17_n543)
         );
  INV_X1 MUL_7_mult_17_U406 ( .A(MUL_7_mult_17_n549), .ZN(MUL_7_mult_17_n516)
         );
  INV_X1 MUL_7_mult_17_U405 ( .A(MUL_7_mult_17_n681), .ZN(MUL_7_mult_17_n542)
         );
  INV_X1 MUL_7_mult_17_U404 ( .A(MUL_7_mult_17_n678), .ZN(MUL_7_mult_17_n538)
         );
  INV_X1 MUL_7_mult_17_U403 ( .A(MUL_7_mult_17_n677), .ZN(MUL_7_mult_17_n537)
         );
  INV_X1 MUL_7_mult_17_U402 ( .A(MUL_7_mult_17_n58), .ZN(MUL_7_mult_17_n529)
         );
  INV_X1 MUL_7_mult_17_U401 ( .A(MUL_7_mult_17_n676), .ZN(MUL_7_mult_17_n533)
         );
  INV_X1 MUL_7_mult_17_U400 ( .A(MUL_7_mult_17_n675), .ZN(MUL_7_mult_17_n532)
         );
  INV_X1 MUL_7_mult_17_U399 ( .A(MUL_7_mult_17_n664), .ZN(MUL_7_mult_17_n509)
         );
  INV_X1 MUL_7_mult_17_U398 ( .A(MUL_7_mult_17_n674), .ZN(MUL_7_mult_17_n528)
         );
  INV_X1 MUL_7_mult_17_U397 ( .A(MUL_7_mult_17_n673), .ZN(MUL_7_mult_17_n527)
         );
  INV_X1 MUL_7_mult_17_U396 ( .A(MUL_7_mult_17_n668), .ZN(MUL_7_mult_17_n513)
         );
  INV_X1 MUL_7_mult_17_U395 ( .A(MUL_7_mult_17_n667), .ZN(MUL_7_mult_17_n512)
         );
  INV_X1 MUL_7_mult_17_U394 ( .A(MUL_7_mult_17_n670), .ZN(MUL_7_mult_17_n517)
         );
  INV_X1 MUL_7_mult_17_U393 ( .A(MUL_7_mult_17_n669), .ZN(MUL_7_mult_17_n515)
         );
  INV_X1 MUL_7_mult_17_U392 ( .A(MUL_7_mult_17_n672), .ZN(MUL_7_mult_17_n523)
         );
  INV_X1 MUL_7_mult_17_U391 ( .A(MUL_7_mult_17_n671), .ZN(MUL_7_mult_17_n522)
         );
  INV_X1 MUL_7_mult_17_U390 ( .A(MUL_7_mult_17_n666), .ZN(MUL_7_mult_17_n511)
         );
  INV_X1 MUL_7_mult_17_U389 ( .A(MUL_7_mult_17_n665), .ZN(MUL_7_mult_17_n510)
         );
  HA_X1 MUL_7_mult_17_U101 ( .A(MUL_7_mult_17_n276), .B(MUL_7_mult_17_n288), 
        .CO(MUL_7_mult_17_n170), .S(MUL_7_mult_17_n171) );
  FA_X1 MUL_7_mult_17_U100 ( .A(MUL_7_mult_17_n287), .B(MUL_7_mult_17_n264), 
        .CI(MUL_7_mult_17_n275), .CO(MUL_7_mult_17_n168), .S(
        MUL_7_mult_17_n169) );
  HA_X1 MUL_7_mult_17_U99 ( .A(MUL_7_mult_17_n197), .B(MUL_7_mult_17_n263), 
        .CO(MUL_7_mult_17_n166), .S(MUL_7_mult_17_n167) );
  FA_X1 MUL_7_mult_17_U98 ( .A(MUL_7_mult_17_n274), .B(MUL_7_mult_17_n286), 
        .CI(MUL_7_mult_17_n167), .CO(MUL_7_mult_17_n164), .S(
        MUL_7_mult_17_n165) );
  FA_X1 MUL_7_mult_17_U97 ( .A(MUL_7_mult_17_n285), .B(MUL_7_mult_17_n251), 
        .CI(MUL_7_mult_17_n273), .CO(MUL_7_mult_17_n162), .S(
        MUL_7_mult_17_n163) );
  FA_X1 MUL_7_mult_17_U96 ( .A(MUL_7_mult_17_n166), .B(MUL_7_mult_17_n262), 
        .CI(MUL_7_mult_17_n163), .CO(MUL_7_mult_17_n160), .S(
        MUL_7_mult_17_n161) );
  HA_X1 MUL_7_mult_17_U95 ( .A(MUL_7_mult_17_n196), .B(MUL_7_mult_17_n250), 
        .CO(MUL_7_mult_17_n158), .S(MUL_7_mult_17_n159) );
  FA_X1 MUL_7_mult_17_U94 ( .A(MUL_7_mult_17_n261), .B(MUL_7_mult_17_n284), 
        .CI(MUL_7_mult_17_n272), .CO(MUL_7_mult_17_n156), .S(
        MUL_7_mult_17_n157) );
  FA_X1 MUL_7_mult_17_U93 ( .A(MUL_7_mult_17_n162), .B(MUL_7_mult_17_n159), 
        .CI(MUL_7_mult_17_n157), .CO(MUL_7_mult_17_n154), .S(
        MUL_7_mult_17_n155) );
  FA_X1 MUL_7_mult_17_U92 ( .A(MUL_7_mult_17_n260), .B(MUL_7_mult_17_n238), 
        .CI(MUL_7_mult_17_n283), .CO(MUL_7_mult_17_n152), .S(
        MUL_7_mult_17_n153) );
  FA_X1 MUL_7_mult_17_U91 ( .A(MUL_7_mult_17_n249), .B(MUL_7_mult_17_n271), 
        .CI(MUL_7_mult_17_n158), .CO(MUL_7_mult_17_n150), .S(
        MUL_7_mult_17_n151) );
  FA_X1 MUL_7_mult_17_U90 ( .A(MUL_7_mult_17_n153), .B(MUL_7_mult_17_n156), 
        .CI(MUL_7_mult_17_n151), .CO(MUL_7_mult_17_n148), .S(
        MUL_7_mult_17_n149) );
  HA_X1 MUL_7_mult_17_U89 ( .A(MUL_7_mult_17_n195), .B(MUL_7_mult_17_n237), 
        .CO(MUL_7_mult_17_n146), .S(MUL_7_mult_17_n147) );
  FA_X1 MUL_7_mult_17_U88 ( .A(MUL_7_mult_17_n248), .B(MUL_7_mult_17_n259), 
        .CI(MUL_7_mult_17_n270), .CO(MUL_7_mult_17_n144), .S(
        MUL_7_mult_17_n145) );
  FA_X1 MUL_7_mult_17_U87 ( .A(MUL_7_mult_17_n147), .B(MUL_7_mult_17_n282), 
        .CI(MUL_7_mult_17_n152), .CO(MUL_7_mult_17_n142), .S(
        MUL_7_mult_17_n143) );
  FA_X1 MUL_7_mult_17_U86 ( .A(MUL_7_mult_17_n145), .B(MUL_7_mult_17_n150), 
        .CI(MUL_7_mult_17_n143), .CO(MUL_7_mult_17_n140), .S(
        MUL_7_mult_17_n141) );
  FA_X1 MUL_7_mult_17_U85 ( .A(MUL_7_mult_17_n247), .B(MUL_7_mult_17_n225), 
        .CI(MUL_7_mult_17_n281), .CO(MUL_7_mult_17_n138), .S(
        MUL_7_mult_17_n139) );
  FA_X1 MUL_7_mult_17_U84 ( .A(MUL_7_mult_17_n236), .B(MUL_7_mult_17_n269), 
        .CI(MUL_7_mult_17_n258), .CO(MUL_7_mult_17_n136), .S(
        MUL_7_mult_17_n137) );
  FA_X1 MUL_7_mult_17_U83 ( .A(MUL_7_mult_17_n144), .B(MUL_7_mult_17_n146), 
        .CI(MUL_7_mult_17_n139), .CO(MUL_7_mult_17_n134), .S(
        MUL_7_mult_17_n135) );
  FA_X1 MUL_7_mult_17_U82 ( .A(MUL_7_mult_17_n142), .B(MUL_7_mult_17_n137), 
        .CI(MUL_7_mult_17_n135), .CO(MUL_7_mult_17_n132), .S(
        MUL_7_mult_17_n133) );
  HA_X1 MUL_7_mult_17_U81 ( .A(MUL_7_mult_17_n194), .B(MUL_7_mult_17_n224), 
        .CO(MUL_7_mult_17_n130), .S(MUL_7_mult_17_n131) );
  FA_X1 MUL_7_mult_17_U80 ( .A(MUL_7_mult_17_n235), .B(MUL_7_mult_17_n257), 
        .CI(MUL_7_mult_17_n280), .CO(MUL_7_mult_17_n128), .S(
        MUL_7_mult_17_n129) );
  FA_X1 MUL_7_mult_17_U79 ( .A(MUL_7_mult_17_n246), .B(MUL_7_mult_17_n268), 
        .CI(MUL_7_mult_17_n131), .CO(MUL_7_mult_17_n126), .S(
        MUL_7_mult_17_n127) );
  FA_X1 MUL_7_mult_17_U78 ( .A(MUL_7_mult_17_n136), .B(MUL_7_mult_17_n138), 
        .CI(MUL_7_mult_17_n129), .CO(MUL_7_mult_17_n124), .S(
        MUL_7_mult_17_n125) );
  FA_X1 MUL_7_mult_17_U77 ( .A(MUL_7_mult_17_n134), .B(MUL_7_mult_17_n127), 
        .CI(MUL_7_mult_17_n125), .CO(MUL_7_mult_17_n122), .S(
        MUL_7_mult_17_n123) );
  FA_X1 MUL_7_mult_17_U76 ( .A(MUL_7_mult_17_n234), .B(MUL_7_mult_17_n212), 
        .CI(MUL_7_mult_17_n279), .CO(MUL_7_mult_17_n120), .S(
        MUL_7_mult_17_n121) );
  FA_X1 MUL_7_mult_17_U75 ( .A(MUL_7_mult_17_n223), .B(MUL_7_mult_17_n267), 
        .CI(MUL_7_mult_17_n245), .CO(MUL_7_mult_17_n118), .S(
        MUL_7_mult_17_n119) );
  FA_X1 MUL_7_mult_17_U74 ( .A(MUL_7_mult_17_n130), .B(MUL_7_mult_17_n256), 
        .CI(MUL_7_mult_17_n128), .CO(MUL_7_mult_17_n116), .S(
        MUL_7_mult_17_n117) );
  FA_X1 MUL_7_mult_17_U73 ( .A(MUL_7_mult_17_n119), .B(MUL_7_mult_17_n121), 
        .CI(MUL_7_mult_17_n126), .CO(MUL_7_mult_17_n114), .S(
        MUL_7_mult_17_n115) );
  FA_X1 MUL_7_mult_17_U72 ( .A(MUL_7_mult_17_n117), .B(MUL_7_mult_17_n124), 
        .CI(MUL_7_mult_17_n115), .CO(MUL_7_mult_17_n112), .S(
        MUL_7_mult_17_n113) );
  FA_X1 MUL_7_mult_17_U69 ( .A(MUL_7_mult_17_n233), .B(MUL_7_mult_17_n244), 
        .CI(MUL_7_mult_17_n543), .CO(MUL_7_mult_17_n108), .S(
        MUL_7_mult_17_n109) );
  FA_X1 MUL_7_mult_17_U68 ( .A(MUL_7_mult_17_n193), .B(MUL_7_mult_17_n266), 
        .CI(MUL_7_mult_17_n255), .CO(MUL_7_mult_17_n106), .S(
        MUL_7_mult_17_n107) );
  FA_X1 MUL_7_mult_17_U67 ( .A(MUL_7_mult_17_n120), .B(MUL_7_mult_17_n111), 
        .CI(MUL_7_mult_17_n118), .CO(MUL_7_mult_17_n104), .S(
        MUL_7_mult_17_n105) );
  FA_X1 MUL_7_mult_17_U66 ( .A(MUL_7_mult_17_n109), .B(MUL_7_mult_17_n107), 
        .CI(MUL_7_mult_17_n116), .CO(MUL_7_mult_17_n102), .S(
        MUL_7_mult_17_n103) );
  FA_X1 MUL_7_mult_17_U65 ( .A(MUL_7_mult_17_n114), .B(MUL_7_mult_17_n105), 
        .CI(MUL_7_mult_17_n103), .CO(MUL_7_mult_17_n100), .S(
        MUL_7_mult_17_n101) );
  FA_X1 MUL_7_mult_17_U63 ( .A(MUL_7_mult_17_n210), .B(MUL_7_mult_17_n221), 
        .CI(MUL_7_mult_17_n254), .CO(MUL_7_mult_17_n96), .S(MUL_7_mult_17_n97)
         );
  FA_X1 MUL_7_mult_17_U62 ( .A(MUL_7_mult_17_n232), .B(MUL_7_mult_17_n243), 
        .CI(MUL_7_mult_17_n539), .CO(MUL_7_mult_17_n94), .S(MUL_7_mult_17_n95)
         );
  FA_X1 MUL_7_mult_17_U61 ( .A(MUL_7_mult_17_n108), .B(MUL_7_mult_17_n110), 
        .CI(MUL_7_mult_17_n106), .CO(MUL_7_mult_17_n92), .S(MUL_7_mult_17_n93)
         );
  FA_X1 MUL_7_mult_17_U60 ( .A(MUL_7_mult_17_n95), .B(MUL_7_mult_17_n97), .CI(
        MUL_7_mult_17_n104), .CO(MUL_7_mult_17_n90), .S(MUL_7_mult_17_n91) );
  FA_X1 MUL_7_mult_17_U59 ( .A(MUL_7_mult_17_n102), .B(MUL_7_mult_17_n93), 
        .CI(MUL_7_mult_17_n91), .CO(MUL_7_mult_17_n88), .S(MUL_7_mult_17_n89)
         );
  FA_X1 MUL_7_mult_17_U58 ( .A(MUL_7_mult_17_n98), .B(MUL_7_mult_17_n209), 
        .CI(MUL_7_mult_17_n540), .CO(MUL_7_mult_17_n86), .S(MUL_7_mult_17_n87)
         );
  FA_X1 MUL_7_mult_17_U57 ( .A(MUL_7_mult_17_n220), .B(MUL_7_mult_17_n253), 
        .CI(MUL_7_mult_17_n231), .CO(MUL_7_mult_17_n84), .S(MUL_7_mult_17_n85)
         );
  FA_X1 MUL_7_mult_17_U56 ( .A(MUL_7_mult_17_n96), .B(MUL_7_mult_17_n242), 
        .CI(MUL_7_mult_17_n94), .CO(MUL_7_mult_17_n82), .S(MUL_7_mult_17_n83)
         );
  FA_X1 MUL_7_mult_17_U55 ( .A(MUL_7_mult_17_n87), .B(MUL_7_mult_17_n85), .CI(
        MUL_7_mult_17_n92), .CO(MUL_7_mult_17_n80), .S(MUL_7_mult_17_n81) );
  FA_X1 MUL_7_mult_17_U54 ( .A(MUL_7_mult_17_n90), .B(MUL_7_mult_17_n83), .CI(
        MUL_7_mult_17_n81), .CO(MUL_7_mult_17_n78), .S(MUL_7_mult_17_n79) );
  FA_X1 MUL_7_mult_17_U52 ( .A(MUL_7_mult_17_n241), .B(MUL_7_mult_17_n219), 
        .CI(MUL_7_mult_17_n208), .CO(MUL_7_mult_17_n74), .S(MUL_7_mult_17_n75)
         );
  FA_X1 MUL_7_mult_17_U51 ( .A(MUL_7_mult_17_n534), .B(MUL_7_mult_17_n230), 
        .CI(MUL_7_mult_17_n86), .CO(MUL_7_mult_17_n72), .S(MUL_7_mult_17_n73)
         );
  FA_X1 MUL_7_mult_17_U50 ( .A(MUL_7_mult_17_n75), .B(MUL_7_mult_17_n84), .CI(
        MUL_7_mult_17_n82), .CO(MUL_7_mult_17_n70), .S(MUL_7_mult_17_n71) );
  FA_X1 MUL_7_mult_17_U49 ( .A(MUL_7_mult_17_n80), .B(MUL_7_mult_17_n73), .CI(
        MUL_7_mult_17_n71), .CO(MUL_7_mult_17_n68), .S(MUL_7_mult_17_n69) );
  FA_X1 MUL_7_mult_17_U48 ( .A(MUL_7_mult_17_n240), .B(MUL_7_mult_17_n207), 
        .CI(MUL_7_mult_17_n535), .CO(MUL_7_mult_17_n66), .S(MUL_7_mult_17_n67)
         );
  FA_X1 MUL_7_mult_17_U47 ( .A(MUL_7_mult_17_n218), .B(MUL_7_mult_17_n76), 
        .CI(MUL_7_mult_17_n229), .CO(MUL_7_mult_17_n64), .S(MUL_7_mult_17_n65)
         );
  FA_X1 MUL_7_mult_17_U46 ( .A(MUL_7_mult_17_n65), .B(MUL_7_mult_17_n74), .CI(
        MUL_7_mult_17_n67), .CO(MUL_7_mult_17_n62), .S(MUL_7_mult_17_n63) );
  FA_X1 MUL_7_mult_17_U45 ( .A(MUL_7_mult_17_n70), .B(MUL_7_mult_17_n72), .CI(
        MUL_7_mult_17_n63), .CO(MUL_7_mult_17_n60), .S(MUL_7_mult_17_n61) );
  FA_X1 MUL_7_mult_17_U43 ( .A(MUL_7_mult_17_n206), .B(MUL_7_mult_17_n217), 
        .CI(MUL_7_mult_17_n228), .CO(MUL_7_mult_17_n56), .S(MUL_7_mult_17_n57)
         );
  FA_X1 MUL_7_mult_17_U42 ( .A(MUL_7_mult_17_n66), .B(MUL_7_mult_17_n529), 
        .CI(MUL_7_mult_17_n64), .CO(MUL_7_mult_17_n54), .S(MUL_7_mult_17_n55)
         );
  FA_X1 MUL_7_mult_17_U41 ( .A(MUL_7_mult_17_n55), .B(MUL_7_mult_17_n57), .CI(
        MUL_7_mult_17_n62), .CO(MUL_7_mult_17_n52), .S(MUL_7_mult_17_n53) );
  FA_X1 MUL_7_mult_17_U40 ( .A(MUL_7_mult_17_n216), .B(MUL_7_mult_17_n205), 
        .CI(MUL_7_mult_17_n530), .CO(MUL_7_mult_17_n50), .S(MUL_7_mult_17_n51)
         );
  FA_X1 MUL_7_mult_17_U39 ( .A(MUL_7_mult_17_n58), .B(MUL_7_mult_17_n227), 
        .CI(MUL_7_mult_17_n56), .CO(MUL_7_mult_17_n48), .S(MUL_7_mult_17_n49)
         );
  FA_X1 MUL_7_mult_17_U38 ( .A(MUL_7_mult_17_n54), .B(MUL_7_mult_17_n51), .CI(
        MUL_7_mult_17_n49), .CO(MUL_7_mult_17_n46), .S(MUL_7_mult_17_n47) );
  FA_X1 MUL_7_mult_17_U36 ( .A(MUL_7_mult_17_n204), .B(MUL_7_mult_17_n215), 
        .CI(MUL_7_mult_17_n524), .CO(MUL_7_mult_17_n42), .S(MUL_7_mult_17_n43)
         );
  FA_X1 MUL_7_mult_17_U35 ( .A(MUL_7_mult_17_n43), .B(MUL_7_mult_17_n50), .CI(
        MUL_7_mult_17_n48), .CO(MUL_7_mult_17_n40), .S(MUL_7_mult_17_n41) );
  FA_X1 MUL_7_mult_17_U34 ( .A(MUL_7_mult_17_n214), .B(MUL_7_mult_17_n44), 
        .CI(MUL_7_mult_17_n525), .CO(MUL_7_mult_17_n38), .S(MUL_7_mult_17_n39)
         );
  FA_X1 MUL_7_mult_17_U33 ( .A(MUL_7_mult_17_n42), .B(MUL_7_mult_17_n203), 
        .CI(MUL_7_mult_17_n39), .CO(MUL_7_mult_17_n36), .S(MUL_7_mult_17_n37)
         );
  FA_X1 MUL_7_mult_17_U31 ( .A(MUL_7_mult_17_n518), .B(MUL_7_mult_17_n202), 
        .CI(MUL_7_mult_17_n38), .CO(MUL_7_mult_17_n32), .S(MUL_7_mult_17_n33)
         );
  FA_X1 MUL_7_mult_17_U30 ( .A(MUL_7_mult_17_n201), .B(MUL_7_mult_17_n34), 
        .CI(MUL_7_mult_17_n519), .CO(MUL_7_mult_17_n30), .S(MUL_7_mult_17_n31)
         );
  FA_X1 MUL_7_mult_17_U11 ( .A(MUL_7_mult_17_n53), .B(MUL_7_mult_17_n60), .CI(
        MUL_7_mult_17_n509), .CO(MUL_7_mult_17_n10), .S(
        TRUNCATED_MULT_RES_7__0_) );
  FA_X1 MUL_7_mult_17_U10 ( .A(MUL_7_mult_17_n47), .B(MUL_7_mult_17_n52), .CI(
        MUL_7_mult_17_n10), .CO(MUL_7_mult_17_n9), .S(TRUNCATED_MULT_RES_7__1_) );
  FA_X1 MUL_7_mult_17_U9 ( .A(MUL_7_mult_17_n41), .B(MUL_7_mult_17_n46), .CI(
        MUL_7_mult_17_n9), .CO(MUL_7_mult_17_n8), .S(TRUNCATED_MULT_RES_7__2_)
         );
  FA_X1 MUL_7_mult_17_U8 ( .A(MUL_7_mult_17_n37), .B(MUL_7_mult_17_n40), .CI(
        MUL_7_mult_17_n8), .CO(MUL_7_mult_17_n7), .S(TRUNCATED_MULT_RES_7__3_)
         );
  FA_X1 MUL_7_mult_17_U7 ( .A(MUL_7_mult_17_n33), .B(MUL_7_mult_17_n36), .CI(
        MUL_7_mult_17_n7), .CO(MUL_7_mult_17_n6), .S(TRUNCATED_MULT_RES_7__4_)
         );
  FA_X1 MUL_7_mult_17_U6 ( .A(MUL_7_mult_17_n32), .B(MUL_7_mult_17_n31), .CI(
        MUL_7_mult_17_n6), .CO(MUL_7_mult_17_n5), .S(TRUNCATED_MULT_RES_7__5_)
         );
  FA_X1 MUL_7_mult_17_U5 ( .A(MUL_7_mult_17_n30), .B(MUL_7_mult_17_n29), .CI(
        MUL_7_mult_17_n5), .CO(MUL_7_mult_17_n4), .S(TRUNCATED_MULT_RES_7__6_)
         );
  XOR2_X1 ADD_7_add_18_U2 ( .A(SUM_RESULTS_6__0_), .B(TRUNCATED_MULT_RES_7__0_), .Z(SUM_RESULTS_7__0_) );
  AND2_X1 ADD_7_add_18_U1 ( .A1(SUM_RESULTS_6__0_), .A2(
        TRUNCATED_MULT_RES_7__0_), .ZN(ADD_7_add_18_n1) );
  FA_X1 ADD_7_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_7__1_), .B(SUM_RESULTS_6__1_), .CI(ADD_7_add_18_n1), .CO(ADD_7_add_18_carry[2]), .S(SUM_RESULTS_7__1_) );
  FA_X1 ADD_7_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_7__2_), .B(SUM_RESULTS_6__2_), .CI(ADD_7_add_18_carry[2]), .CO(ADD_7_add_18_carry[3]), .S(SUM_RESULTS_7__2_) );
  FA_X1 ADD_7_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_7__3_), .B(SUM_RESULTS_6__3_), .CI(ADD_7_add_18_carry[3]), .CO(ADD_7_add_18_carry[4]), .S(SUM_RESULTS_7__3_) );
  FA_X1 ADD_7_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_7__4_), .B(SUM_RESULTS_6__4_), .CI(ADD_7_add_18_carry[4]), .CO(ADD_7_add_18_carry[5]), .S(SUM_RESULTS_7__4_) );
  FA_X1 ADD_7_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_7__5_), .B(SUM_RESULTS_6__5_), .CI(ADD_7_add_18_carry[5]), .CO(ADD_7_add_18_carry[6]), .S(SUM_RESULTS_7__5_) );
  FA_X1 ADD_7_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_7__6_), .B(SUM_RESULTS_6__6_), .CI(ADD_7_add_18_carry[6]), .CO(ADD_7_add_18_carry[7]), .S(SUM_RESULTS_7__6_) );
  FA_X1 ADD_7_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_7__7_), .B(SUM_RESULTS_6__7_), .CI(ADD_7_add_18_carry[7]), .CO(ADD_7_add_18_carry[8]), .S(SUM_RESULTS_7__7_) );
  FA_X1 ADD_7_add_18_U1_8 ( .A(TRUNCATED_MULT_RES_7__7_), .B(SUM_RESULTS_6__8_), .CI(ADD_7_add_18_carry[8]), .CO(ADD_7_add_18_carry[9]), .S(SUM_RESULTS_7__8_) );
  FA_X1 ADD_7_add_18_U1_9 ( .A(TRUNCATED_MULT_RES_7__7_), .B(
        SUM_RESULTS_6__12_), .CI(ADD_7_add_18_carry[9]), .S(SUM_RESULTS_7__12_) );
  BUF_X1 SAMPLE_REG_8_U31 ( .A(n545), .Z(SAMPLE_REG_8_n42) );
  NAND2_X1 SAMPLE_REG_8_U30 ( .A1(SAMPLE_REG_8_n42), .A2(SAMPLES[39]), .ZN(
        SAMPLE_REG_8_n82) );
  OAI21_X1 SAMPLE_REG_8_U29 ( .B1(SAMPLE_REG_8_n69), .B2(SAMPLE_REG_8_n42), 
        .A(SAMPLE_REG_8_n82), .ZN(SAMPLE_REG_8_n56) );
  NAND2_X1 SAMPLE_REG_8_U28 ( .A1(SAMPLES[41]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n80) );
  OAI21_X1 SAMPLE_REG_8_U27 ( .B1(SAMPLE_REG_8_n67), .B2(SAMPLE_REG_8_n41), 
        .A(SAMPLE_REG_8_n80), .ZN(SAMPLE_REG_8_n54) );
  NAND2_X1 SAMPLE_REG_8_U26 ( .A1(SAMPLES[51]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n70) );
  OAI21_X1 SAMPLE_REG_8_U25 ( .B1(SAMPLE_REG_8_n57), .B2(SAMPLE_REG_8_n41), 
        .A(SAMPLE_REG_8_n70), .ZN(SAMPLE_REG_8_n44) );
  NAND2_X1 SAMPLE_REG_8_U24 ( .A1(SAMPLES[50]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n71) );
  OAI21_X1 SAMPLE_REG_8_U23 ( .B1(SAMPLE_REG_8_n58), .B2(SAMPLE_REG_8_n41), 
        .A(SAMPLE_REG_8_n71), .ZN(SAMPLE_REG_8_n45) );
  NAND2_X1 SAMPLE_REG_8_U22 ( .A1(SAMPLES[49]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n72) );
  OAI21_X1 SAMPLE_REG_8_U21 ( .B1(SAMPLE_REG_8_n59), .B2(SAMPLE_REG_8_n41), 
        .A(SAMPLE_REG_8_n72), .ZN(SAMPLE_REG_8_n46) );
  NAND2_X1 SAMPLE_REG_8_U20 ( .A1(SAMPLES[48]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n73) );
  OAI21_X1 SAMPLE_REG_8_U19 ( .B1(SAMPLE_REG_8_n60), .B2(SAMPLE_REG_8_n41), 
        .A(SAMPLE_REG_8_n73), .ZN(SAMPLE_REG_8_n47) );
  NAND2_X1 SAMPLE_REG_8_U18 ( .A1(SAMPLES[47]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n74) );
  OAI21_X1 SAMPLE_REG_8_U17 ( .B1(SAMPLE_REG_8_n61), .B2(SAMPLE_REG_8_n41), 
        .A(SAMPLE_REG_8_n74), .ZN(SAMPLE_REG_8_n48) );
  NAND2_X1 SAMPLE_REG_8_U16 ( .A1(SAMPLES[46]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n75) );
  OAI21_X1 SAMPLE_REG_8_U15 ( .B1(SAMPLE_REG_8_n62), .B2(SAMPLE_REG_8_n41), 
        .A(SAMPLE_REG_8_n75), .ZN(SAMPLE_REG_8_n49) );
  NAND2_X1 SAMPLE_REG_8_U14 ( .A1(SAMPLES[45]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n76) );
  OAI21_X1 SAMPLE_REG_8_U13 ( .B1(SAMPLE_REG_8_n63), .B2(SAMPLE_REG_8_n41), 
        .A(SAMPLE_REG_8_n76), .ZN(SAMPLE_REG_8_n50) );
  NAND2_X1 SAMPLE_REG_8_U12 ( .A1(SAMPLES[44]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n77) );
  OAI21_X1 SAMPLE_REG_8_U11 ( .B1(SAMPLE_REG_8_n64), .B2(SAMPLE_REG_8_n41), 
        .A(SAMPLE_REG_8_n77), .ZN(SAMPLE_REG_8_n51) );
  NAND2_X1 SAMPLE_REG_8_U10 ( .A1(SAMPLES[43]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n78) );
  OAI21_X1 SAMPLE_REG_8_U9 ( .B1(SAMPLE_REG_8_n65), .B2(SAMPLE_REG_8_n41), .A(
        SAMPLE_REG_8_n78), .ZN(SAMPLE_REG_8_n52) );
  NAND2_X1 SAMPLE_REG_8_U8 ( .A1(SAMPLES[42]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n79) );
  OAI21_X1 SAMPLE_REG_8_U7 ( .B1(SAMPLE_REG_8_n66), .B2(SAMPLE_REG_8_n41), .A(
        SAMPLE_REG_8_n79), .ZN(SAMPLE_REG_8_n53) );
  NAND2_X1 SAMPLE_REG_8_U6 ( .A1(SAMPLES[40]), .A2(SAMPLE_REG_8_n40), .ZN(
        SAMPLE_REG_8_n81) );
  OAI21_X1 SAMPLE_REG_8_U5 ( .B1(SAMPLE_REG_8_n68), .B2(SAMPLE_REG_8_n41), .A(
        SAMPLE_REG_8_n81), .ZN(SAMPLE_REG_8_n55) );
  BUF_X1 SAMPLE_REG_8_U4 ( .A(n545), .Z(SAMPLE_REG_8_n41) );
  BUF_X1 SAMPLE_REG_8_U3 ( .A(n545), .Z(SAMPLE_REG_8_n40) );
  BUF_X1 SAMPLE_REG_8_U2 ( .A(n546), .Z(SAMPLE_REG_8_n43) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_12_ ( .D(SAMPLE_REG_8_n44), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[38]), .QN(SAMPLE_REG_8_n57) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_2_ ( .D(SAMPLE_REG_8_n54), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[28]), .QN(SAMPLE_REG_8_n67) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_4_ ( .D(SAMPLE_REG_8_n52), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[30]), .QN(SAMPLE_REG_8_n65) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_6_ ( .D(SAMPLE_REG_8_n50), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[32]), .QN(SAMPLE_REG_8_n63) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_8_ ( .D(SAMPLE_REG_8_n48), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[34]), .QN(SAMPLE_REG_8_n61) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_10_ ( .D(SAMPLE_REG_8_n46), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[36]), .QN(SAMPLE_REG_8_n59) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_0_ ( .D(SAMPLE_REG_8_n56), .CK(CLK), .RN(n546), 
        .Q(SAMPLES[26]), .QN(SAMPLE_REG_8_n69) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_1_ ( .D(SAMPLE_REG_8_n55), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[27]), .QN(SAMPLE_REG_8_n68) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_3_ ( .D(SAMPLE_REG_8_n53), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[29]), .QN(SAMPLE_REG_8_n66) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_5_ ( .D(SAMPLE_REG_8_n51), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[31]), .QN(SAMPLE_REG_8_n64) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_7_ ( .D(SAMPLE_REG_8_n49), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[33]), .QN(SAMPLE_REG_8_n62) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_9_ ( .D(SAMPLE_REG_8_n47), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[35]), .QN(SAMPLE_REG_8_n60) );
  DFFR_X1 SAMPLE_REG_8_DOUT_reg_11_ ( .D(SAMPLE_REG_8_n45), .CK(CLK), .RN(
        SAMPLE_REG_8_n43), .Q(SAMPLES[37]), .QN(SAMPLE_REG_8_n58) );
  XOR2_X1 MUL_8_mult_17_U660 ( .A(SAMPLES[28]), .B(SAMPLES[27]), .Z(
        MUL_8_mult_17_n681) );
  NAND2_X1 MUL_8_mult_17_U659 ( .A1(SAMPLES[27]), .A2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n571) );
  XNOR2_X1 MUL_8_mult_17_U658 ( .A(A[28]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n570) );
  OAI22_X1 MUL_8_mult_17_U657 ( .A1(A[27]), .A2(MUL_8_mult_17_n571), .B1(
        MUL_8_mult_17_n570), .B2(MUL_8_mult_17_n544), .ZN(MUL_8_mult_17_n683)
         );
  XNOR2_X1 MUL_8_mult_17_U656 ( .A(MUL_8_mult_17_n541), .B(SAMPLES[28]), .ZN(
        MUL_8_mult_17_n682) );
  NAND2_X1 MUL_8_mult_17_U655 ( .A1(MUL_8_mult_17_n542), .A2(
        MUL_8_mult_17_n682), .ZN(MUL_8_mult_17_n552) );
  NAND3_X1 MUL_8_mult_17_U654 ( .A1(MUL_8_mult_17_n681), .A2(
        MUL_8_mult_17_n546), .A3(SAMPLES[29]), .ZN(MUL_8_mult_17_n680) );
  OAI21_X1 MUL_8_mult_17_U653 ( .B1(MUL_8_mult_17_n541), .B2(
        MUL_8_mult_17_n552), .A(MUL_8_mult_17_n680), .ZN(MUL_8_mult_17_n679)
         );
  AOI222_X1 MUL_8_mult_17_U652 ( .A1(MUL_8_mult_17_n506), .A2(
        MUL_8_mult_17_n171), .B1(MUL_8_mult_17_n679), .B2(MUL_8_mult_17_n506), 
        .C1(MUL_8_mult_17_n679), .C2(MUL_8_mult_17_n171), .ZN(
        MUL_8_mult_17_n678) );
  AOI222_X1 MUL_8_mult_17_U651 ( .A1(MUL_8_mult_17_n538), .A2(
        MUL_8_mult_17_n169), .B1(MUL_8_mult_17_n538), .B2(MUL_8_mult_17_n170), 
        .C1(MUL_8_mult_17_n170), .C2(MUL_8_mult_17_n169), .ZN(
        MUL_8_mult_17_n677) );
  AOI222_X1 MUL_8_mult_17_U650 ( .A1(MUL_8_mult_17_n537), .A2(
        MUL_8_mult_17_n165), .B1(MUL_8_mult_17_n537), .B2(MUL_8_mult_17_n168), 
        .C1(MUL_8_mult_17_n168), .C2(MUL_8_mult_17_n165), .ZN(
        MUL_8_mult_17_n676) );
  AOI222_X1 MUL_8_mult_17_U649 ( .A1(MUL_8_mult_17_n533), .A2(
        MUL_8_mult_17_n161), .B1(MUL_8_mult_17_n533), .B2(MUL_8_mult_17_n164), 
        .C1(MUL_8_mult_17_n164), .C2(MUL_8_mult_17_n161), .ZN(
        MUL_8_mult_17_n675) );
  AOI222_X1 MUL_8_mult_17_U648 ( .A1(MUL_8_mult_17_n532), .A2(
        MUL_8_mult_17_n155), .B1(MUL_8_mult_17_n532), .B2(MUL_8_mult_17_n160), 
        .C1(MUL_8_mult_17_n160), .C2(MUL_8_mult_17_n155), .ZN(
        MUL_8_mult_17_n674) );
  AOI222_X1 MUL_8_mult_17_U647 ( .A1(MUL_8_mult_17_n528), .A2(
        MUL_8_mult_17_n149), .B1(MUL_8_mult_17_n528), .B2(MUL_8_mult_17_n154), 
        .C1(MUL_8_mult_17_n154), .C2(MUL_8_mult_17_n149), .ZN(
        MUL_8_mult_17_n673) );
  AOI222_X1 MUL_8_mult_17_U646 ( .A1(MUL_8_mult_17_n527), .A2(
        MUL_8_mult_17_n141), .B1(MUL_8_mult_17_n527), .B2(MUL_8_mult_17_n148), 
        .C1(MUL_8_mult_17_n148), .C2(MUL_8_mult_17_n141), .ZN(
        MUL_8_mult_17_n672) );
  AOI222_X1 MUL_8_mult_17_U645 ( .A1(MUL_8_mult_17_n523), .A2(
        MUL_8_mult_17_n133), .B1(MUL_8_mult_17_n523), .B2(MUL_8_mult_17_n140), 
        .C1(MUL_8_mult_17_n140), .C2(MUL_8_mult_17_n133), .ZN(
        MUL_8_mult_17_n671) );
  AOI222_X1 MUL_8_mult_17_U644 ( .A1(MUL_8_mult_17_n522), .A2(
        MUL_8_mult_17_n123), .B1(MUL_8_mult_17_n522), .B2(MUL_8_mult_17_n132), 
        .C1(MUL_8_mult_17_n132), .C2(MUL_8_mult_17_n123), .ZN(
        MUL_8_mult_17_n670) );
  AOI222_X1 MUL_8_mult_17_U643 ( .A1(MUL_8_mult_17_n517), .A2(
        MUL_8_mult_17_n113), .B1(MUL_8_mult_17_n517), .B2(MUL_8_mult_17_n122), 
        .C1(MUL_8_mult_17_n122), .C2(MUL_8_mult_17_n113), .ZN(
        MUL_8_mult_17_n669) );
  AOI222_X1 MUL_8_mult_17_U642 ( .A1(MUL_8_mult_17_n515), .A2(
        MUL_8_mult_17_n101), .B1(MUL_8_mult_17_n515), .B2(MUL_8_mult_17_n112), 
        .C1(MUL_8_mult_17_n112), .C2(MUL_8_mult_17_n101), .ZN(
        MUL_8_mult_17_n668) );
  AOI222_X1 MUL_8_mult_17_U641 ( .A1(MUL_8_mult_17_n513), .A2(
        MUL_8_mult_17_n89), .B1(MUL_8_mult_17_n513), .B2(MUL_8_mult_17_n100), 
        .C1(MUL_8_mult_17_n100), .C2(MUL_8_mult_17_n89), .ZN(
        MUL_8_mult_17_n667) );
  AOI222_X1 MUL_8_mult_17_U640 ( .A1(MUL_8_mult_17_n512), .A2(
        MUL_8_mult_17_n79), .B1(MUL_8_mult_17_n512), .B2(MUL_8_mult_17_n88), 
        .C1(MUL_8_mult_17_n88), .C2(MUL_8_mult_17_n79), .ZN(MUL_8_mult_17_n666) );
  AOI222_X1 MUL_8_mult_17_U639 ( .A1(MUL_8_mult_17_n511), .A2(
        MUL_8_mult_17_n69), .B1(MUL_8_mult_17_n511), .B2(MUL_8_mult_17_n78), 
        .C1(MUL_8_mult_17_n78), .C2(MUL_8_mult_17_n69), .ZN(MUL_8_mult_17_n665) );
  AOI222_X1 MUL_8_mult_17_U638 ( .A1(MUL_8_mult_17_n510), .A2(
        MUL_8_mult_17_n61), .B1(MUL_8_mult_17_n510), .B2(MUL_8_mult_17_n68), 
        .C1(MUL_8_mult_17_n68), .C2(MUL_8_mult_17_n61), .ZN(MUL_8_mult_17_n664) );
  XNOR2_X1 MUL_8_mult_17_U637 ( .A(A[28]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n633) );
  XNOR2_X1 MUL_8_mult_17_U636 ( .A(MUL_8_mult_17_n521), .B(SAMPLES[36]), .ZN(
        MUL_8_mult_17_n663) );
  NAND2_X1 MUL_8_mult_17_U635 ( .A1(MUL_8_mult_17_n568), .A2(
        MUL_8_mult_17_n663), .ZN(MUL_8_mult_17_n567) );
  XNOR2_X1 MUL_8_mult_17_U634 ( .A(A[29]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n634) );
  OAI22_X1 MUL_8_mult_17_U633 ( .A1(MUL_8_mult_17_n633), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n634), 
        .ZN(MUL_8_mult_17_n662) );
  XNOR2_X1 MUL_8_mult_17_U632 ( .A(MUL_8_mult_17_n545), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n661) );
  XNOR2_X1 MUL_8_mult_17_U631 ( .A(SAMPLES[38]), .B(MUL_8_mult_17_n521), .ZN(
        MUL_8_mult_17_n549) );
  NAND2_X1 MUL_8_mult_17_U630 ( .A1(MUL_8_mult_17_n661), .A2(
        MUL_8_mult_17_n549), .ZN(MUL_8_mult_17_n660) );
  NAND2_X1 MUL_8_mult_17_U629 ( .A1(MUL_8_mult_17_n520), .A2(
        MUL_8_mult_17_n660), .ZN(MUL_8_mult_17_n110) );
  XNOR2_X1 MUL_8_mult_17_U628 ( .A(MUL_8_mult_17_n660), .B(MUL_8_mult_17_n520), 
        .ZN(MUL_8_mult_17_n111) );
  NOR3_X1 MUL_8_mult_17_U627 ( .A1(MUL_8_mult_17_n514), .A2(A[26]), .A3(
        MUL_8_mult_17_n516), .ZN(MUL_8_mult_17_n193) );
  OR3_X1 MUL_8_mult_17_U626 ( .A1(MUL_8_mult_17_n568), .A2(A[26]), .A3(
        MUL_8_mult_17_n521), .ZN(MUL_8_mult_17_n659) );
  OAI21_X1 MUL_8_mult_17_U625 ( .B1(MUL_8_mult_17_n521), .B2(
        MUL_8_mult_17_n567), .A(MUL_8_mult_17_n659), .ZN(MUL_8_mult_17_n194)
         );
  XNOR2_X1 MUL_8_mult_17_U624 ( .A(MUL_8_mult_17_n526), .B(SAMPLES[34]), .ZN(
        MUL_8_mult_17_n658) );
  NAND2_X1 MUL_8_mult_17_U623 ( .A1(MUL_8_mult_17_n564), .A2(
        MUL_8_mult_17_n658), .ZN(MUL_8_mult_17_n563) );
  OR3_X1 MUL_8_mult_17_U622 ( .A1(MUL_8_mult_17_n564), .A2(A[26]), .A3(
        MUL_8_mult_17_n526), .ZN(MUL_8_mult_17_n657) );
  OAI21_X1 MUL_8_mult_17_U621 ( .B1(MUL_8_mult_17_n526), .B2(
        MUL_8_mult_17_n563), .A(MUL_8_mult_17_n657), .ZN(MUL_8_mult_17_n195)
         );
  XNOR2_X1 MUL_8_mult_17_U620 ( .A(MUL_8_mult_17_n531), .B(SAMPLES[32]), .ZN(
        MUL_8_mult_17_n656) );
  NAND2_X1 MUL_8_mult_17_U619 ( .A1(MUL_8_mult_17_n560), .A2(
        MUL_8_mult_17_n656), .ZN(MUL_8_mult_17_n559) );
  OR3_X1 MUL_8_mult_17_U618 ( .A1(MUL_8_mult_17_n560), .A2(A[26]), .A3(
        MUL_8_mult_17_n531), .ZN(MUL_8_mult_17_n655) );
  OAI21_X1 MUL_8_mult_17_U617 ( .B1(MUL_8_mult_17_n531), .B2(
        MUL_8_mult_17_n559), .A(MUL_8_mult_17_n655), .ZN(MUL_8_mult_17_n196)
         );
  XNOR2_X1 MUL_8_mult_17_U616 ( .A(MUL_8_mult_17_n536), .B(SAMPLES[30]), .ZN(
        MUL_8_mult_17_n654) );
  NAND2_X1 MUL_8_mult_17_U615 ( .A1(MUL_8_mult_17_n556), .A2(
        MUL_8_mult_17_n654), .ZN(MUL_8_mult_17_n555) );
  OR3_X1 MUL_8_mult_17_U614 ( .A1(MUL_8_mult_17_n556), .A2(A[26]), .A3(
        MUL_8_mult_17_n536), .ZN(MUL_8_mult_17_n653) );
  OAI21_X1 MUL_8_mult_17_U613 ( .B1(MUL_8_mult_17_n536), .B2(
        MUL_8_mult_17_n555), .A(MUL_8_mult_17_n653), .ZN(MUL_8_mult_17_n197)
         );
  XNOR2_X1 MUL_8_mult_17_U612 ( .A(A[37]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n652) );
  NOR2_X1 MUL_8_mult_17_U611 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n652), .ZN(MUL_8_mult_17_n201) );
  XNOR2_X1 MUL_8_mult_17_U610 ( .A(A[36]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n651) );
  NOR2_X1 MUL_8_mult_17_U609 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n651), .ZN(MUL_8_mult_17_n202) );
  XNOR2_X1 MUL_8_mult_17_U608 ( .A(A[35]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n650) );
  NOR2_X1 MUL_8_mult_17_U607 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n650), .ZN(MUL_8_mult_17_n203) );
  XNOR2_X1 MUL_8_mult_17_U606 ( .A(A[34]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n649) );
  NOR2_X1 MUL_8_mult_17_U605 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n649), .ZN(MUL_8_mult_17_n204) );
  XNOR2_X1 MUL_8_mult_17_U604 ( .A(A[33]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n648) );
  NOR2_X1 MUL_8_mult_17_U603 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n648), .ZN(MUL_8_mult_17_n205) );
  XNOR2_X1 MUL_8_mult_17_U602 ( .A(A[32]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n647) );
  NOR2_X1 MUL_8_mult_17_U601 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n647), .ZN(MUL_8_mult_17_n206) );
  XNOR2_X1 MUL_8_mult_17_U600 ( .A(A[31]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n646) );
  NOR2_X1 MUL_8_mult_17_U599 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n646), .ZN(MUL_8_mult_17_n207) );
  XNOR2_X1 MUL_8_mult_17_U598 ( .A(A[30]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n645) );
  NOR2_X1 MUL_8_mult_17_U597 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n645), .ZN(MUL_8_mult_17_n208) );
  XNOR2_X1 MUL_8_mult_17_U596 ( .A(A[29]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n644) );
  NOR2_X1 MUL_8_mult_17_U595 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n644), .ZN(MUL_8_mult_17_n209) );
  XNOR2_X1 MUL_8_mult_17_U594 ( .A(A[28]), .B(SAMPLES[38]), .ZN(
        MUL_8_mult_17_n643) );
  NOR2_X1 MUL_8_mult_17_U593 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n643), .ZN(MUL_8_mult_17_n210) );
  NOR2_X1 MUL_8_mult_17_U592 ( .A1(MUL_8_mult_17_n516), .A2(MUL_8_mult_17_n546), .ZN(MUL_8_mult_17_n212) );
  XNOR2_X1 MUL_8_mult_17_U591 ( .A(A[38]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n569) );
  OAI22_X1 MUL_8_mult_17_U590 ( .A1(MUL_8_mult_17_n569), .A2(
        MUL_8_mult_17_n568), .B1(MUL_8_mult_17_n567), .B2(MUL_8_mult_17_n569), 
        .ZN(MUL_8_mult_17_n642) );
  XNOR2_X1 MUL_8_mult_17_U589 ( .A(A[36]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n641) );
  XNOR2_X1 MUL_8_mult_17_U588 ( .A(A[37]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n566) );
  OAI22_X1 MUL_8_mult_17_U587 ( .A1(MUL_8_mult_17_n641), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n566), 
        .ZN(MUL_8_mult_17_n214) );
  XNOR2_X1 MUL_8_mult_17_U586 ( .A(A[35]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n640) );
  OAI22_X1 MUL_8_mult_17_U585 ( .A1(MUL_8_mult_17_n640), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n641), 
        .ZN(MUL_8_mult_17_n215) );
  XNOR2_X1 MUL_8_mult_17_U584 ( .A(A[34]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n639) );
  OAI22_X1 MUL_8_mult_17_U583 ( .A1(MUL_8_mult_17_n639), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n640), 
        .ZN(MUL_8_mult_17_n216) );
  XNOR2_X1 MUL_8_mult_17_U582 ( .A(A[33]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n638) );
  OAI22_X1 MUL_8_mult_17_U581 ( .A1(MUL_8_mult_17_n638), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n639), 
        .ZN(MUL_8_mult_17_n217) );
  XNOR2_X1 MUL_8_mult_17_U580 ( .A(A[32]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n637) );
  OAI22_X1 MUL_8_mult_17_U579 ( .A1(MUL_8_mult_17_n637), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n638), 
        .ZN(MUL_8_mult_17_n218) );
  XNOR2_X1 MUL_8_mult_17_U578 ( .A(A[31]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n636) );
  OAI22_X1 MUL_8_mult_17_U577 ( .A1(MUL_8_mult_17_n636), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n637), 
        .ZN(MUL_8_mult_17_n219) );
  XNOR2_X1 MUL_8_mult_17_U576 ( .A(A[30]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n635) );
  OAI22_X1 MUL_8_mult_17_U575 ( .A1(MUL_8_mult_17_n635), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n636), 
        .ZN(MUL_8_mult_17_n220) );
  OAI22_X1 MUL_8_mult_17_U574 ( .A1(MUL_8_mult_17_n634), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n635), 
        .ZN(MUL_8_mult_17_n221) );
  XNOR2_X1 MUL_8_mult_17_U573 ( .A(A[27]), .B(SAMPLES[37]), .ZN(
        MUL_8_mult_17_n632) );
  OAI22_X1 MUL_8_mult_17_U572 ( .A1(MUL_8_mult_17_n632), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n633), 
        .ZN(MUL_8_mult_17_n223) );
  XNOR2_X1 MUL_8_mult_17_U571 ( .A(SAMPLES[37]), .B(A[26]), .ZN(
        MUL_8_mult_17_n631) );
  OAI22_X1 MUL_8_mult_17_U570 ( .A1(MUL_8_mult_17_n631), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n632), 
        .ZN(MUL_8_mult_17_n224) );
  NOR2_X1 MUL_8_mult_17_U569 ( .A1(MUL_8_mult_17_n568), .A2(MUL_8_mult_17_n546), .ZN(MUL_8_mult_17_n225) );
  XNOR2_X1 MUL_8_mult_17_U568 ( .A(A[38]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n565) );
  OAI22_X1 MUL_8_mult_17_U567 ( .A1(MUL_8_mult_17_n565), .A2(
        MUL_8_mult_17_n564), .B1(MUL_8_mult_17_n563), .B2(MUL_8_mult_17_n565), 
        .ZN(MUL_8_mult_17_n630) );
  XNOR2_X1 MUL_8_mult_17_U566 ( .A(A[36]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n629) );
  XNOR2_X1 MUL_8_mult_17_U565 ( .A(A[37]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n562) );
  OAI22_X1 MUL_8_mult_17_U564 ( .A1(MUL_8_mult_17_n629), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n562), 
        .ZN(MUL_8_mult_17_n227) );
  XNOR2_X1 MUL_8_mult_17_U563 ( .A(A[35]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n628) );
  OAI22_X1 MUL_8_mult_17_U562 ( .A1(MUL_8_mult_17_n628), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n629), 
        .ZN(MUL_8_mult_17_n228) );
  XNOR2_X1 MUL_8_mult_17_U561 ( .A(A[34]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n627) );
  OAI22_X1 MUL_8_mult_17_U560 ( .A1(MUL_8_mult_17_n627), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n628), 
        .ZN(MUL_8_mult_17_n229) );
  XNOR2_X1 MUL_8_mult_17_U559 ( .A(A[33]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n626) );
  OAI22_X1 MUL_8_mult_17_U558 ( .A1(MUL_8_mult_17_n626), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n627), 
        .ZN(MUL_8_mult_17_n230) );
  XNOR2_X1 MUL_8_mult_17_U557 ( .A(A[32]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n625) );
  OAI22_X1 MUL_8_mult_17_U556 ( .A1(MUL_8_mult_17_n625), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n626), 
        .ZN(MUL_8_mult_17_n231) );
  XNOR2_X1 MUL_8_mult_17_U555 ( .A(A[31]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n624) );
  OAI22_X1 MUL_8_mult_17_U554 ( .A1(MUL_8_mult_17_n624), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n625), 
        .ZN(MUL_8_mult_17_n232) );
  XNOR2_X1 MUL_8_mult_17_U553 ( .A(A[30]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n623) );
  OAI22_X1 MUL_8_mult_17_U552 ( .A1(MUL_8_mult_17_n623), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n624), 
        .ZN(MUL_8_mult_17_n233) );
  XNOR2_X1 MUL_8_mult_17_U551 ( .A(A[29]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n622) );
  OAI22_X1 MUL_8_mult_17_U550 ( .A1(MUL_8_mult_17_n622), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n623), 
        .ZN(MUL_8_mult_17_n234) );
  XNOR2_X1 MUL_8_mult_17_U549 ( .A(A[28]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n621) );
  OAI22_X1 MUL_8_mult_17_U548 ( .A1(MUL_8_mult_17_n621), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n622), 
        .ZN(MUL_8_mult_17_n235) );
  XNOR2_X1 MUL_8_mult_17_U547 ( .A(A[27]), .B(SAMPLES[35]), .ZN(
        MUL_8_mult_17_n620) );
  OAI22_X1 MUL_8_mult_17_U546 ( .A1(MUL_8_mult_17_n620), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n621), 
        .ZN(MUL_8_mult_17_n236) );
  XNOR2_X1 MUL_8_mult_17_U545 ( .A(SAMPLES[35]), .B(A[26]), .ZN(
        MUL_8_mult_17_n619) );
  OAI22_X1 MUL_8_mult_17_U544 ( .A1(MUL_8_mult_17_n619), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n620), 
        .ZN(MUL_8_mult_17_n237) );
  NOR2_X1 MUL_8_mult_17_U543 ( .A1(MUL_8_mult_17_n564), .A2(MUL_8_mult_17_n546), .ZN(MUL_8_mult_17_n238) );
  XNOR2_X1 MUL_8_mult_17_U542 ( .A(A[38]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n561) );
  OAI22_X1 MUL_8_mult_17_U541 ( .A1(MUL_8_mult_17_n561), .A2(
        MUL_8_mult_17_n560), .B1(MUL_8_mult_17_n559), .B2(MUL_8_mult_17_n561), 
        .ZN(MUL_8_mult_17_n618) );
  XNOR2_X1 MUL_8_mult_17_U540 ( .A(A[36]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n617) );
  XNOR2_X1 MUL_8_mult_17_U539 ( .A(A[37]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n558) );
  OAI22_X1 MUL_8_mult_17_U538 ( .A1(MUL_8_mult_17_n617), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n558), 
        .ZN(MUL_8_mult_17_n240) );
  XNOR2_X1 MUL_8_mult_17_U537 ( .A(A[35]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n616) );
  OAI22_X1 MUL_8_mult_17_U536 ( .A1(MUL_8_mult_17_n616), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n617), 
        .ZN(MUL_8_mult_17_n241) );
  XNOR2_X1 MUL_8_mult_17_U535 ( .A(A[34]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n615) );
  OAI22_X1 MUL_8_mult_17_U534 ( .A1(MUL_8_mult_17_n615), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n616), 
        .ZN(MUL_8_mult_17_n242) );
  XNOR2_X1 MUL_8_mult_17_U533 ( .A(A[33]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n614) );
  OAI22_X1 MUL_8_mult_17_U532 ( .A1(MUL_8_mult_17_n614), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n615), 
        .ZN(MUL_8_mult_17_n243) );
  XNOR2_X1 MUL_8_mult_17_U531 ( .A(A[32]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n613) );
  OAI22_X1 MUL_8_mult_17_U530 ( .A1(MUL_8_mult_17_n613), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n614), 
        .ZN(MUL_8_mult_17_n244) );
  XNOR2_X1 MUL_8_mult_17_U529 ( .A(A[31]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n612) );
  OAI22_X1 MUL_8_mult_17_U528 ( .A1(MUL_8_mult_17_n612), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n613), 
        .ZN(MUL_8_mult_17_n245) );
  XNOR2_X1 MUL_8_mult_17_U527 ( .A(A[30]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n611) );
  OAI22_X1 MUL_8_mult_17_U526 ( .A1(MUL_8_mult_17_n611), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n612), 
        .ZN(MUL_8_mult_17_n246) );
  XNOR2_X1 MUL_8_mult_17_U525 ( .A(A[29]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n610) );
  OAI22_X1 MUL_8_mult_17_U524 ( .A1(MUL_8_mult_17_n610), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n611), 
        .ZN(MUL_8_mult_17_n247) );
  XNOR2_X1 MUL_8_mult_17_U523 ( .A(A[28]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n609) );
  OAI22_X1 MUL_8_mult_17_U522 ( .A1(MUL_8_mult_17_n609), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n610), 
        .ZN(MUL_8_mult_17_n248) );
  XNOR2_X1 MUL_8_mult_17_U521 ( .A(A[27]), .B(SAMPLES[33]), .ZN(
        MUL_8_mult_17_n608) );
  OAI22_X1 MUL_8_mult_17_U520 ( .A1(MUL_8_mult_17_n608), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n609), 
        .ZN(MUL_8_mult_17_n249) );
  XNOR2_X1 MUL_8_mult_17_U519 ( .A(SAMPLES[33]), .B(A[26]), .ZN(
        MUL_8_mult_17_n607) );
  OAI22_X1 MUL_8_mult_17_U518 ( .A1(MUL_8_mult_17_n607), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n608), 
        .ZN(MUL_8_mult_17_n250) );
  NOR2_X1 MUL_8_mult_17_U517 ( .A1(MUL_8_mult_17_n560), .A2(MUL_8_mult_17_n546), .ZN(MUL_8_mult_17_n251) );
  XNOR2_X1 MUL_8_mult_17_U516 ( .A(A[38]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n557) );
  OAI22_X1 MUL_8_mult_17_U515 ( .A1(MUL_8_mult_17_n557), .A2(
        MUL_8_mult_17_n556), .B1(MUL_8_mult_17_n555), .B2(MUL_8_mult_17_n557), 
        .ZN(MUL_8_mult_17_n606) );
  XNOR2_X1 MUL_8_mult_17_U514 ( .A(A[36]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n605) );
  XNOR2_X1 MUL_8_mult_17_U513 ( .A(A[37]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n554) );
  OAI22_X1 MUL_8_mult_17_U512 ( .A1(MUL_8_mult_17_n605), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n554), 
        .ZN(MUL_8_mult_17_n253) );
  XNOR2_X1 MUL_8_mult_17_U511 ( .A(A[35]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n604) );
  OAI22_X1 MUL_8_mult_17_U510 ( .A1(MUL_8_mult_17_n604), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n605), 
        .ZN(MUL_8_mult_17_n254) );
  XNOR2_X1 MUL_8_mult_17_U509 ( .A(A[34]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n603) );
  OAI22_X1 MUL_8_mult_17_U508 ( .A1(MUL_8_mult_17_n603), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n604), 
        .ZN(MUL_8_mult_17_n255) );
  XNOR2_X1 MUL_8_mult_17_U507 ( .A(A[33]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n602) );
  OAI22_X1 MUL_8_mult_17_U506 ( .A1(MUL_8_mult_17_n602), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n603), 
        .ZN(MUL_8_mult_17_n256) );
  XNOR2_X1 MUL_8_mult_17_U505 ( .A(A[32]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n601) );
  OAI22_X1 MUL_8_mult_17_U504 ( .A1(MUL_8_mult_17_n601), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n602), 
        .ZN(MUL_8_mult_17_n257) );
  XNOR2_X1 MUL_8_mult_17_U503 ( .A(A[31]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n600) );
  OAI22_X1 MUL_8_mult_17_U502 ( .A1(MUL_8_mult_17_n600), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n601), 
        .ZN(MUL_8_mult_17_n258) );
  XNOR2_X1 MUL_8_mult_17_U501 ( .A(A[30]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n599) );
  OAI22_X1 MUL_8_mult_17_U500 ( .A1(MUL_8_mult_17_n599), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n600), 
        .ZN(MUL_8_mult_17_n259) );
  XNOR2_X1 MUL_8_mult_17_U499 ( .A(A[29]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n598) );
  OAI22_X1 MUL_8_mult_17_U498 ( .A1(MUL_8_mult_17_n598), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n599), 
        .ZN(MUL_8_mult_17_n260) );
  XNOR2_X1 MUL_8_mult_17_U497 ( .A(A[28]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n597) );
  OAI22_X1 MUL_8_mult_17_U496 ( .A1(MUL_8_mult_17_n597), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n598), 
        .ZN(MUL_8_mult_17_n261) );
  XNOR2_X1 MUL_8_mult_17_U495 ( .A(A[27]), .B(SAMPLES[31]), .ZN(
        MUL_8_mult_17_n596) );
  OAI22_X1 MUL_8_mult_17_U494 ( .A1(MUL_8_mult_17_n596), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n597), 
        .ZN(MUL_8_mult_17_n262) );
  XNOR2_X1 MUL_8_mult_17_U493 ( .A(SAMPLES[31]), .B(A[26]), .ZN(
        MUL_8_mult_17_n595) );
  OAI22_X1 MUL_8_mult_17_U492 ( .A1(MUL_8_mult_17_n595), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n596), 
        .ZN(MUL_8_mult_17_n263) );
  NOR2_X1 MUL_8_mult_17_U491 ( .A1(MUL_8_mult_17_n556), .A2(MUL_8_mult_17_n546), .ZN(MUL_8_mult_17_n264) );
  XOR2_X1 MUL_8_mult_17_U490 ( .A(A[38]), .B(MUL_8_mult_17_n541), .Z(
        MUL_8_mult_17_n553) );
  OAI22_X1 MUL_8_mult_17_U489 ( .A1(MUL_8_mult_17_n553), .A2(
        MUL_8_mult_17_n542), .B1(MUL_8_mult_17_n552), .B2(MUL_8_mult_17_n553), 
        .ZN(MUL_8_mult_17_n594) );
  XNOR2_X1 MUL_8_mult_17_U488 ( .A(A[36]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n593) );
  XNOR2_X1 MUL_8_mult_17_U487 ( .A(A[37]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n551) );
  OAI22_X1 MUL_8_mult_17_U486 ( .A1(MUL_8_mult_17_n593), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n551), 
        .ZN(MUL_8_mult_17_n266) );
  XNOR2_X1 MUL_8_mult_17_U485 ( .A(A[35]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n592) );
  OAI22_X1 MUL_8_mult_17_U484 ( .A1(MUL_8_mult_17_n592), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n593), 
        .ZN(MUL_8_mult_17_n267) );
  XNOR2_X1 MUL_8_mult_17_U483 ( .A(A[34]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n591) );
  OAI22_X1 MUL_8_mult_17_U482 ( .A1(MUL_8_mult_17_n591), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n592), 
        .ZN(MUL_8_mult_17_n268) );
  XNOR2_X1 MUL_8_mult_17_U481 ( .A(A[33]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n590) );
  OAI22_X1 MUL_8_mult_17_U480 ( .A1(MUL_8_mult_17_n590), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n591), 
        .ZN(MUL_8_mult_17_n269) );
  XNOR2_X1 MUL_8_mult_17_U479 ( .A(A[32]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n589) );
  OAI22_X1 MUL_8_mult_17_U478 ( .A1(MUL_8_mult_17_n589), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n590), 
        .ZN(MUL_8_mult_17_n270) );
  XNOR2_X1 MUL_8_mult_17_U477 ( .A(A[31]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n588) );
  OAI22_X1 MUL_8_mult_17_U476 ( .A1(MUL_8_mult_17_n588), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n589), 
        .ZN(MUL_8_mult_17_n271) );
  XNOR2_X1 MUL_8_mult_17_U475 ( .A(A[30]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n587) );
  OAI22_X1 MUL_8_mult_17_U474 ( .A1(MUL_8_mult_17_n587), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n588), 
        .ZN(MUL_8_mult_17_n272) );
  XNOR2_X1 MUL_8_mult_17_U473 ( .A(A[29]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n586) );
  OAI22_X1 MUL_8_mult_17_U472 ( .A1(MUL_8_mult_17_n586), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n587), 
        .ZN(MUL_8_mult_17_n273) );
  XNOR2_X1 MUL_8_mult_17_U471 ( .A(A[28]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n585) );
  OAI22_X1 MUL_8_mult_17_U470 ( .A1(MUL_8_mult_17_n585), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n586), 
        .ZN(MUL_8_mult_17_n274) );
  XNOR2_X1 MUL_8_mult_17_U469 ( .A(A[27]), .B(SAMPLES[29]), .ZN(
        MUL_8_mult_17_n584) );
  OAI22_X1 MUL_8_mult_17_U468 ( .A1(MUL_8_mult_17_n584), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n585), 
        .ZN(MUL_8_mult_17_n275) );
  XNOR2_X1 MUL_8_mult_17_U467 ( .A(SAMPLES[29]), .B(A[26]), .ZN(
        MUL_8_mult_17_n583) );
  OAI22_X1 MUL_8_mult_17_U466 ( .A1(MUL_8_mult_17_n583), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n584), 
        .ZN(MUL_8_mult_17_n276) );
  XNOR2_X1 MUL_8_mult_17_U465 ( .A(A[38]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n581) );
  OAI22_X1 MUL_8_mult_17_U464 ( .A1(MUL_8_mult_17_n544), .A2(
        MUL_8_mult_17_n581), .B1(MUL_8_mult_17_n571), .B2(MUL_8_mult_17_n581), 
        .ZN(MUL_8_mult_17_n582) );
  XNOR2_X1 MUL_8_mult_17_U463 ( .A(A[37]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n580) );
  OAI22_X1 MUL_8_mult_17_U462 ( .A1(MUL_8_mult_17_n580), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n581), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n279) );
  XNOR2_X1 MUL_8_mult_17_U461 ( .A(A[36]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n579) );
  OAI22_X1 MUL_8_mult_17_U460 ( .A1(MUL_8_mult_17_n579), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n580), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n280) );
  XNOR2_X1 MUL_8_mult_17_U459 ( .A(A[35]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n578) );
  OAI22_X1 MUL_8_mult_17_U458 ( .A1(MUL_8_mult_17_n578), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n579), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n281) );
  XNOR2_X1 MUL_8_mult_17_U457 ( .A(A[34]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n577) );
  OAI22_X1 MUL_8_mult_17_U456 ( .A1(MUL_8_mult_17_n577), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n578), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n282) );
  XNOR2_X1 MUL_8_mult_17_U455 ( .A(A[33]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n576) );
  OAI22_X1 MUL_8_mult_17_U454 ( .A1(MUL_8_mult_17_n576), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n577), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n283) );
  XNOR2_X1 MUL_8_mult_17_U453 ( .A(A[32]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n575) );
  OAI22_X1 MUL_8_mult_17_U452 ( .A1(MUL_8_mult_17_n575), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n576), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n284) );
  XNOR2_X1 MUL_8_mult_17_U451 ( .A(A[31]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n574) );
  OAI22_X1 MUL_8_mult_17_U450 ( .A1(MUL_8_mult_17_n574), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n575), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n285) );
  XNOR2_X1 MUL_8_mult_17_U449 ( .A(A[30]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n573) );
  OAI22_X1 MUL_8_mult_17_U448 ( .A1(MUL_8_mult_17_n573), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n574), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n286) );
  XNOR2_X1 MUL_8_mult_17_U447 ( .A(A[29]), .B(SAMPLES[27]), .ZN(
        MUL_8_mult_17_n572) );
  OAI22_X1 MUL_8_mult_17_U446 ( .A1(MUL_8_mult_17_n572), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n573), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n287) );
  OAI22_X1 MUL_8_mult_17_U445 ( .A1(MUL_8_mult_17_n570), .A2(
        MUL_8_mult_17_n571), .B1(MUL_8_mult_17_n572), .B2(MUL_8_mult_17_n544), 
        .ZN(MUL_8_mult_17_n288) );
  XNOR2_X1 MUL_8_mult_17_U444 ( .A(A[38]), .B(MUL_8_mult_17_n514), .ZN(
        MUL_8_mult_17_n550) );
  NAND2_X1 MUL_8_mult_17_U443 ( .A1(MUL_8_mult_17_n550), .A2(
        MUL_8_mult_17_n549), .ZN(MUL_8_mult_17_n29) );
  OAI22_X1 MUL_8_mult_17_U442 ( .A1(MUL_8_mult_17_n566), .A2(
        MUL_8_mult_17_n567), .B1(MUL_8_mult_17_n568), .B2(MUL_8_mult_17_n569), 
        .ZN(MUL_8_mult_17_n34) );
  OAI22_X1 MUL_8_mult_17_U441 ( .A1(MUL_8_mult_17_n562), .A2(
        MUL_8_mult_17_n563), .B1(MUL_8_mult_17_n564), .B2(MUL_8_mult_17_n565), 
        .ZN(MUL_8_mult_17_n44) );
  OAI22_X1 MUL_8_mult_17_U440 ( .A1(MUL_8_mult_17_n558), .A2(
        MUL_8_mult_17_n559), .B1(MUL_8_mult_17_n560), .B2(MUL_8_mult_17_n561), 
        .ZN(MUL_8_mult_17_n58) );
  OAI22_X1 MUL_8_mult_17_U439 ( .A1(MUL_8_mult_17_n554), .A2(
        MUL_8_mult_17_n555), .B1(MUL_8_mult_17_n556), .B2(MUL_8_mult_17_n557), 
        .ZN(MUL_8_mult_17_n76) );
  OAI22_X1 MUL_8_mult_17_U438 ( .A1(MUL_8_mult_17_n551), .A2(
        MUL_8_mult_17_n552), .B1(MUL_8_mult_17_n542), .B2(MUL_8_mult_17_n553), 
        .ZN(MUL_8_mult_17_n98) );
  NOR2_X1 MUL_8_mult_17_U437 ( .A1(MUL_8_mult_17_n544), .A2(MUL_8_mult_17_n546), .ZN(MUL_8_O_0_) );
  XOR2_X1 MUL_8_mult_17_U436 ( .A(MUL_8_mult_17_n29), .B(MUL_8_mult_17_n4), 
        .Z(MUL_8_mult_17_n547) );
  AND2_X1 MUL_8_mult_17_U435 ( .A1(MUL_8_mult_17_n549), .A2(MUL_8_mult_17_n550), .ZN(MUL_8_mult_17_n548) );
  XOR2_X1 MUL_8_mult_17_U434 ( .A(MUL_8_mult_17_n547), .B(MUL_8_mult_17_n548), 
        .Z(TRUNCATED_MULT_RES_8__7_) );
  XOR2_X2 MUL_8_mult_17_U433 ( .A(SAMPLES[36]), .B(MUL_8_mult_17_n526), .Z(
        MUL_8_mult_17_n568) );
  XOR2_X2 MUL_8_mult_17_U432 ( .A(SAMPLES[34]), .B(MUL_8_mult_17_n531), .Z(
        MUL_8_mult_17_n564) );
  XOR2_X2 MUL_8_mult_17_U431 ( .A(SAMPLES[32]), .B(MUL_8_mult_17_n536), .Z(
        MUL_8_mult_17_n560) );
  XOR2_X2 MUL_8_mult_17_U430 ( .A(SAMPLES[30]), .B(MUL_8_mult_17_n541), .Z(
        MUL_8_mult_17_n556) );
  INV_X1 MUL_8_mult_17_U429 ( .A(MUL_8_mult_17_n642), .ZN(MUL_8_mult_17_n519)
         );
  INV_X1 MUL_8_mult_17_U428 ( .A(MUL_8_mult_17_n34), .ZN(MUL_8_mult_17_n518)
         );
  INV_X1 MUL_8_mult_17_U427 ( .A(MUL_8_mult_17_n594), .ZN(MUL_8_mult_17_n540)
         );
  INV_X1 MUL_8_mult_17_U426 ( .A(SAMPLES[38]), .ZN(MUL_8_mult_17_n514) );
  INV_X1 MUL_8_mult_17_U425 ( .A(A[27]), .ZN(MUL_8_mult_17_n545) );
  AND3_X1 MUL_8_mult_17_U424 ( .A1(MUL_8_mult_17_n683), .A2(MUL_8_mult_17_n545), .A3(SAMPLES[27]), .ZN(MUL_8_mult_17_n508) );
  AND2_X1 MUL_8_mult_17_U423 ( .A1(MUL_8_mult_17_n681), .A2(MUL_8_mult_17_n683), .ZN(MUL_8_mult_17_n507) );
  MUX2_X1 MUL_8_mult_17_U422 ( .A(MUL_8_mult_17_n507), .B(MUL_8_mult_17_n508), 
        .S(MUL_8_mult_17_n546), .Z(MUL_8_mult_17_n506) );
  INV_X1 MUL_8_mult_17_U421 ( .A(A[26]), .ZN(MUL_8_mult_17_n546) );
  INV_X1 MUL_8_mult_17_U420 ( .A(SAMPLES[37]), .ZN(MUL_8_mult_17_n521) );
  INV_X1 MUL_8_mult_17_U419 ( .A(SAMPLES[35]), .ZN(MUL_8_mult_17_n526) );
  INV_X1 MUL_8_mult_17_U418 ( .A(SAMPLES[33]), .ZN(MUL_8_mult_17_n531) );
  INV_X1 MUL_8_mult_17_U417 ( .A(SAMPLES[31]), .ZN(MUL_8_mult_17_n536) );
  INV_X1 MUL_8_mult_17_U416 ( .A(SAMPLES[29]), .ZN(MUL_8_mult_17_n541) );
  INV_X1 MUL_8_mult_17_U415 ( .A(SAMPLES[26]), .ZN(MUL_8_mult_17_n544) );
  INV_X1 MUL_8_mult_17_U414 ( .A(MUL_8_mult_17_n630), .ZN(MUL_8_mult_17_n525)
         );
  INV_X1 MUL_8_mult_17_U413 ( .A(MUL_8_mult_17_n662), .ZN(MUL_8_mult_17_n520)
         );
  INV_X1 MUL_8_mult_17_U412 ( .A(MUL_8_mult_17_n606), .ZN(MUL_8_mult_17_n535)
         );
  INV_X1 MUL_8_mult_17_U411 ( .A(MUL_8_mult_17_n76), .ZN(MUL_8_mult_17_n534)
         );
  INV_X1 MUL_8_mult_17_U410 ( .A(MUL_8_mult_17_n618), .ZN(MUL_8_mult_17_n530)
         );
  INV_X1 MUL_8_mult_17_U409 ( .A(MUL_8_mult_17_n98), .ZN(MUL_8_mult_17_n539)
         );
  INV_X1 MUL_8_mult_17_U408 ( .A(MUL_8_mult_17_n44), .ZN(MUL_8_mult_17_n524)
         );
  INV_X1 MUL_8_mult_17_U407 ( .A(MUL_8_mult_17_n549), .ZN(MUL_8_mult_17_n516)
         );
  INV_X1 MUL_8_mult_17_U406 ( .A(MUL_8_mult_17_n582), .ZN(MUL_8_mult_17_n543)
         );
  INV_X1 MUL_8_mult_17_U405 ( .A(MUL_8_mult_17_n681), .ZN(MUL_8_mult_17_n542)
         );
  INV_X1 MUL_8_mult_17_U404 ( .A(MUL_8_mult_17_n678), .ZN(MUL_8_mult_17_n538)
         );
  INV_X1 MUL_8_mult_17_U403 ( .A(MUL_8_mult_17_n677), .ZN(MUL_8_mult_17_n537)
         );
  INV_X1 MUL_8_mult_17_U402 ( .A(MUL_8_mult_17_n58), .ZN(MUL_8_mult_17_n529)
         );
  INV_X1 MUL_8_mult_17_U401 ( .A(MUL_8_mult_17_n676), .ZN(MUL_8_mult_17_n533)
         );
  INV_X1 MUL_8_mult_17_U400 ( .A(MUL_8_mult_17_n675), .ZN(MUL_8_mult_17_n532)
         );
  INV_X1 MUL_8_mult_17_U399 ( .A(MUL_8_mult_17_n664), .ZN(MUL_8_mult_17_n509)
         );
  INV_X1 MUL_8_mult_17_U398 ( .A(MUL_8_mult_17_n674), .ZN(MUL_8_mult_17_n528)
         );
  INV_X1 MUL_8_mult_17_U397 ( .A(MUL_8_mult_17_n673), .ZN(MUL_8_mult_17_n527)
         );
  INV_X1 MUL_8_mult_17_U396 ( .A(MUL_8_mult_17_n668), .ZN(MUL_8_mult_17_n513)
         );
  INV_X1 MUL_8_mult_17_U395 ( .A(MUL_8_mult_17_n667), .ZN(MUL_8_mult_17_n512)
         );
  INV_X1 MUL_8_mult_17_U394 ( .A(MUL_8_mult_17_n670), .ZN(MUL_8_mult_17_n517)
         );
  INV_X1 MUL_8_mult_17_U393 ( .A(MUL_8_mult_17_n669), .ZN(MUL_8_mult_17_n515)
         );
  INV_X1 MUL_8_mult_17_U392 ( .A(MUL_8_mult_17_n672), .ZN(MUL_8_mult_17_n523)
         );
  INV_X1 MUL_8_mult_17_U391 ( .A(MUL_8_mult_17_n671), .ZN(MUL_8_mult_17_n522)
         );
  INV_X1 MUL_8_mult_17_U390 ( .A(MUL_8_mult_17_n666), .ZN(MUL_8_mult_17_n511)
         );
  INV_X1 MUL_8_mult_17_U389 ( .A(MUL_8_mult_17_n665), .ZN(MUL_8_mult_17_n510)
         );
  HA_X1 MUL_8_mult_17_U101 ( .A(MUL_8_mult_17_n276), .B(MUL_8_mult_17_n288), 
        .CO(MUL_8_mult_17_n170), .S(MUL_8_mult_17_n171) );
  FA_X1 MUL_8_mult_17_U100 ( .A(MUL_8_mult_17_n287), .B(MUL_8_mult_17_n264), 
        .CI(MUL_8_mult_17_n275), .CO(MUL_8_mult_17_n168), .S(
        MUL_8_mult_17_n169) );
  HA_X1 MUL_8_mult_17_U99 ( .A(MUL_8_mult_17_n197), .B(MUL_8_mult_17_n263), 
        .CO(MUL_8_mult_17_n166), .S(MUL_8_mult_17_n167) );
  FA_X1 MUL_8_mult_17_U98 ( .A(MUL_8_mult_17_n274), .B(MUL_8_mult_17_n286), 
        .CI(MUL_8_mult_17_n167), .CO(MUL_8_mult_17_n164), .S(
        MUL_8_mult_17_n165) );
  FA_X1 MUL_8_mult_17_U97 ( .A(MUL_8_mult_17_n285), .B(MUL_8_mult_17_n251), 
        .CI(MUL_8_mult_17_n273), .CO(MUL_8_mult_17_n162), .S(
        MUL_8_mult_17_n163) );
  FA_X1 MUL_8_mult_17_U96 ( .A(MUL_8_mult_17_n166), .B(MUL_8_mult_17_n262), 
        .CI(MUL_8_mult_17_n163), .CO(MUL_8_mult_17_n160), .S(
        MUL_8_mult_17_n161) );
  HA_X1 MUL_8_mult_17_U95 ( .A(MUL_8_mult_17_n196), .B(MUL_8_mult_17_n250), 
        .CO(MUL_8_mult_17_n158), .S(MUL_8_mult_17_n159) );
  FA_X1 MUL_8_mult_17_U94 ( .A(MUL_8_mult_17_n261), .B(MUL_8_mult_17_n284), 
        .CI(MUL_8_mult_17_n272), .CO(MUL_8_mult_17_n156), .S(
        MUL_8_mult_17_n157) );
  FA_X1 MUL_8_mult_17_U93 ( .A(MUL_8_mult_17_n162), .B(MUL_8_mult_17_n159), 
        .CI(MUL_8_mult_17_n157), .CO(MUL_8_mult_17_n154), .S(
        MUL_8_mult_17_n155) );
  FA_X1 MUL_8_mult_17_U92 ( .A(MUL_8_mult_17_n260), .B(MUL_8_mult_17_n238), 
        .CI(MUL_8_mult_17_n283), .CO(MUL_8_mult_17_n152), .S(
        MUL_8_mult_17_n153) );
  FA_X1 MUL_8_mult_17_U91 ( .A(MUL_8_mult_17_n249), .B(MUL_8_mult_17_n271), 
        .CI(MUL_8_mult_17_n158), .CO(MUL_8_mult_17_n150), .S(
        MUL_8_mult_17_n151) );
  FA_X1 MUL_8_mult_17_U90 ( .A(MUL_8_mult_17_n153), .B(MUL_8_mult_17_n156), 
        .CI(MUL_8_mult_17_n151), .CO(MUL_8_mult_17_n148), .S(
        MUL_8_mult_17_n149) );
  HA_X1 MUL_8_mult_17_U89 ( .A(MUL_8_mult_17_n195), .B(MUL_8_mult_17_n237), 
        .CO(MUL_8_mult_17_n146), .S(MUL_8_mult_17_n147) );
  FA_X1 MUL_8_mult_17_U88 ( .A(MUL_8_mult_17_n248), .B(MUL_8_mult_17_n259), 
        .CI(MUL_8_mult_17_n270), .CO(MUL_8_mult_17_n144), .S(
        MUL_8_mult_17_n145) );
  FA_X1 MUL_8_mult_17_U87 ( .A(MUL_8_mult_17_n147), .B(MUL_8_mult_17_n282), 
        .CI(MUL_8_mult_17_n152), .CO(MUL_8_mult_17_n142), .S(
        MUL_8_mult_17_n143) );
  FA_X1 MUL_8_mult_17_U86 ( .A(MUL_8_mult_17_n145), .B(MUL_8_mult_17_n150), 
        .CI(MUL_8_mult_17_n143), .CO(MUL_8_mult_17_n140), .S(
        MUL_8_mult_17_n141) );
  FA_X1 MUL_8_mult_17_U85 ( .A(MUL_8_mult_17_n247), .B(MUL_8_mult_17_n225), 
        .CI(MUL_8_mult_17_n281), .CO(MUL_8_mult_17_n138), .S(
        MUL_8_mult_17_n139) );
  FA_X1 MUL_8_mult_17_U84 ( .A(MUL_8_mult_17_n236), .B(MUL_8_mult_17_n269), 
        .CI(MUL_8_mult_17_n258), .CO(MUL_8_mult_17_n136), .S(
        MUL_8_mult_17_n137) );
  FA_X1 MUL_8_mult_17_U83 ( .A(MUL_8_mult_17_n144), .B(MUL_8_mult_17_n146), 
        .CI(MUL_8_mult_17_n139), .CO(MUL_8_mult_17_n134), .S(
        MUL_8_mult_17_n135) );
  FA_X1 MUL_8_mult_17_U82 ( .A(MUL_8_mult_17_n142), .B(MUL_8_mult_17_n137), 
        .CI(MUL_8_mult_17_n135), .CO(MUL_8_mult_17_n132), .S(
        MUL_8_mult_17_n133) );
  HA_X1 MUL_8_mult_17_U81 ( .A(MUL_8_mult_17_n194), .B(MUL_8_mult_17_n224), 
        .CO(MUL_8_mult_17_n130), .S(MUL_8_mult_17_n131) );
  FA_X1 MUL_8_mult_17_U80 ( .A(MUL_8_mult_17_n235), .B(MUL_8_mult_17_n257), 
        .CI(MUL_8_mult_17_n280), .CO(MUL_8_mult_17_n128), .S(
        MUL_8_mult_17_n129) );
  FA_X1 MUL_8_mult_17_U79 ( .A(MUL_8_mult_17_n246), .B(MUL_8_mult_17_n268), 
        .CI(MUL_8_mult_17_n131), .CO(MUL_8_mult_17_n126), .S(
        MUL_8_mult_17_n127) );
  FA_X1 MUL_8_mult_17_U78 ( .A(MUL_8_mult_17_n136), .B(MUL_8_mult_17_n138), 
        .CI(MUL_8_mult_17_n129), .CO(MUL_8_mult_17_n124), .S(
        MUL_8_mult_17_n125) );
  FA_X1 MUL_8_mult_17_U77 ( .A(MUL_8_mult_17_n134), .B(MUL_8_mult_17_n127), 
        .CI(MUL_8_mult_17_n125), .CO(MUL_8_mult_17_n122), .S(
        MUL_8_mult_17_n123) );
  FA_X1 MUL_8_mult_17_U76 ( .A(MUL_8_mult_17_n234), .B(MUL_8_mult_17_n212), 
        .CI(MUL_8_mult_17_n279), .CO(MUL_8_mult_17_n120), .S(
        MUL_8_mult_17_n121) );
  FA_X1 MUL_8_mult_17_U75 ( .A(MUL_8_mult_17_n223), .B(MUL_8_mult_17_n267), 
        .CI(MUL_8_mult_17_n245), .CO(MUL_8_mult_17_n118), .S(
        MUL_8_mult_17_n119) );
  FA_X1 MUL_8_mult_17_U74 ( .A(MUL_8_mult_17_n130), .B(MUL_8_mult_17_n256), 
        .CI(MUL_8_mult_17_n128), .CO(MUL_8_mult_17_n116), .S(
        MUL_8_mult_17_n117) );
  FA_X1 MUL_8_mult_17_U73 ( .A(MUL_8_mult_17_n119), .B(MUL_8_mult_17_n121), 
        .CI(MUL_8_mult_17_n126), .CO(MUL_8_mult_17_n114), .S(
        MUL_8_mult_17_n115) );
  FA_X1 MUL_8_mult_17_U72 ( .A(MUL_8_mult_17_n117), .B(MUL_8_mult_17_n124), 
        .CI(MUL_8_mult_17_n115), .CO(MUL_8_mult_17_n112), .S(
        MUL_8_mult_17_n113) );
  FA_X1 MUL_8_mult_17_U69 ( .A(MUL_8_mult_17_n233), .B(MUL_8_mult_17_n244), 
        .CI(MUL_8_mult_17_n543), .CO(MUL_8_mult_17_n108), .S(
        MUL_8_mult_17_n109) );
  FA_X1 MUL_8_mult_17_U68 ( .A(MUL_8_mult_17_n193), .B(MUL_8_mult_17_n266), 
        .CI(MUL_8_mult_17_n255), .CO(MUL_8_mult_17_n106), .S(
        MUL_8_mult_17_n107) );
  FA_X1 MUL_8_mult_17_U67 ( .A(MUL_8_mult_17_n120), .B(MUL_8_mult_17_n111), 
        .CI(MUL_8_mult_17_n118), .CO(MUL_8_mult_17_n104), .S(
        MUL_8_mult_17_n105) );
  FA_X1 MUL_8_mult_17_U66 ( .A(MUL_8_mult_17_n109), .B(MUL_8_mult_17_n107), 
        .CI(MUL_8_mult_17_n116), .CO(MUL_8_mult_17_n102), .S(
        MUL_8_mult_17_n103) );
  FA_X1 MUL_8_mult_17_U65 ( .A(MUL_8_mult_17_n114), .B(MUL_8_mult_17_n105), 
        .CI(MUL_8_mult_17_n103), .CO(MUL_8_mult_17_n100), .S(
        MUL_8_mult_17_n101) );
  FA_X1 MUL_8_mult_17_U63 ( .A(MUL_8_mult_17_n210), .B(MUL_8_mult_17_n221), 
        .CI(MUL_8_mult_17_n254), .CO(MUL_8_mult_17_n96), .S(MUL_8_mult_17_n97)
         );
  FA_X1 MUL_8_mult_17_U62 ( .A(MUL_8_mult_17_n232), .B(MUL_8_mult_17_n243), 
        .CI(MUL_8_mult_17_n539), .CO(MUL_8_mult_17_n94), .S(MUL_8_mult_17_n95)
         );
  FA_X1 MUL_8_mult_17_U61 ( .A(MUL_8_mult_17_n108), .B(MUL_8_mult_17_n110), 
        .CI(MUL_8_mult_17_n106), .CO(MUL_8_mult_17_n92), .S(MUL_8_mult_17_n93)
         );
  FA_X1 MUL_8_mult_17_U60 ( .A(MUL_8_mult_17_n95), .B(MUL_8_mult_17_n97), .CI(
        MUL_8_mult_17_n104), .CO(MUL_8_mult_17_n90), .S(MUL_8_mult_17_n91) );
  FA_X1 MUL_8_mult_17_U59 ( .A(MUL_8_mult_17_n102), .B(MUL_8_mult_17_n93), 
        .CI(MUL_8_mult_17_n91), .CO(MUL_8_mult_17_n88), .S(MUL_8_mult_17_n89)
         );
  FA_X1 MUL_8_mult_17_U58 ( .A(MUL_8_mult_17_n98), .B(MUL_8_mult_17_n209), 
        .CI(MUL_8_mult_17_n540), .CO(MUL_8_mult_17_n86), .S(MUL_8_mult_17_n87)
         );
  FA_X1 MUL_8_mult_17_U57 ( .A(MUL_8_mult_17_n220), .B(MUL_8_mult_17_n253), 
        .CI(MUL_8_mult_17_n231), .CO(MUL_8_mult_17_n84), .S(MUL_8_mult_17_n85)
         );
  FA_X1 MUL_8_mult_17_U56 ( .A(MUL_8_mult_17_n96), .B(MUL_8_mult_17_n242), 
        .CI(MUL_8_mult_17_n94), .CO(MUL_8_mult_17_n82), .S(MUL_8_mult_17_n83)
         );
  FA_X1 MUL_8_mult_17_U55 ( .A(MUL_8_mult_17_n87), .B(MUL_8_mult_17_n85), .CI(
        MUL_8_mult_17_n92), .CO(MUL_8_mult_17_n80), .S(MUL_8_mult_17_n81) );
  FA_X1 MUL_8_mult_17_U54 ( .A(MUL_8_mult_17_n90), .B(MUL_8_mult_17_n83), .CI(
        MUL_8_mult_17_n81), .CO(MUL_8_mult_17_n78), .S(MUL_8_mult_17_n79) );
  FA_X1 MUL_8_mult_17_U52 ( .A(MUL_8_mult_17_n241), .B(MUL_8_mult_17_n219), 
        .CI(MUL_8_mult_17_n208), .CO(MUL_8_mult_17_n74), .S(MUL_8_mult_17_n75)
         );
  FA_X1 MUL_8_mult_17_U51 ( .A(MUL_8_mult_17_n534), .B(MUL_8_mult_17_n230), 
        .CI(MUL_8_mult_17_n86), .CO(MUL_8_mult_17_n72), .S(MUL_8_mult_17_n73)
         );
  FA_X1 MUL_8_mult_17_U50 ( .A(MUL_8_mult_17_n75), .B(MUL_8_mult_17_n84), .CI(
        MUL_8_mult_17_n82), .CO(MUL_8_mult_17_n70), .S(MUL_8_mult_17_n71) );
  FA_X1 MUL_8_mult_17_U49 ( .A(MUL_8_mult_17_n80), .B(MUL_8_mult_17_n73), .CI(
        MUL_8_mult_17_n71), .CO(MUL_8_mult_17_n68), .S(MUL_8_mult_17_n69) );
  FA_X1 MUL_8_mult_17_U48 ( .A(MUL_8_mult_17_n240), .B(MUL_8_mult_17_n207), 
        .CI(MUL_8_mult_17_n535), .CO(MUL_8_mult_17_n66), .S(MUL_8_mult_17_n67)
         );
  FA_X1 MUL_8_mult_17_U47 ( .A(MUL_8_mult_17_n218), .B(MUL_8_mult_17_n76), 
        .CI(MUL_8_mult_17_n229), .CO(MUL_8_mult_17_n64), .S(MUL_8_mult_17_n65)
         );
  FA_X1 MUL_8_mult_17_U46 ( .A(MUL_8_mult_17_n65), .B(MUL_8_mult_17_n74), .CI(
        MUL_8_mult_17_n67), .CO(MUL_8_mult_17_n62), .S(MUL_8_mult_17_n63) );
  FA_X1 MUL_8_mult_17_U45 ( .A(MUL_8_mult_17_n70), .B(MUL_8_mult_17_n72), .CI(
        MUL_8_mult_17_n63), .CO(MUL_8_mult_17_n60), .S(MUL_8_mult_17_n61) );
  FA_X1 MUL_8_mult_17_U43 ( .A(MUL_8_mult_17_n206), .B(MUL_8_mult_17_n217), 
        .CI(MUL_8_mult_17_n228), .CO(MUL_8_mult_17_n56), .S(MUL_8_mult_17_n57)
         );
  FA_X1 MUL_8_mult_17_U42 ( .A(MUL_8_mult_17_n66), .B(MUL_8_mult_17_n529), 
        .CI(MUL_8_mult_17_n64), .CO(MUL_8_mult_17_n54), .S(MUL_8_mult_17_n55)
         );
  FA_X1 MUL_8_mult_17_U41 ( .A(MUL_8_mult_17_n55), .B(MUL_8_mult_17_n57), .CI(
        MUL_8_mult_17_n62), .CO(MUL_8_mult_17_n52), .S(MUL_8_mult_17_n53) );
  FA_X1 MUL_8_mult_17_U40 ( .A(MUL_8_mult_17_n216), .B(MUL_8_mult_17_n205), 
        .CI(MUL_8_mult_17_n530), .CO(MUL_8_mult_17_n50), .S(MUL_8_mult_17_n51)
         );
  FA_X1 MUL_8_mult_17_U39 ( .A(MUL_8_mult_17_n58), .B(MUL_8_mult_17_n227), 
        .CI(MUL_8_mult_17_n56), .CO(MUL_8_mult_17_n48), .S(MUL_8_mult_17_n49)
         );
  FA_X1 MUL_8_mult_17_U38 ( .A(MUL_8_mult_17_n54), .B(MUL_8_mult_17_n51), .CI(
        MUL_8_mult_17_n49), .CO(MUL_8_mult_17_n46), .S(MUL_8_mult_17_n47) );
  FA_X1 MUL_8_mult_17_U36 ( .A(MUL_8_mult_17_n204), .B(MUL_8_mult_17_n215), 
        .CI(MUL_8_mult_17_n524), .CO(MUL_8_mult_17_n42), .S(MUL_8_mult_17_n43)
         );
  FA_X1 MUL_8_mult_17_U35 ( .A(MUL_8_mult_17_n43), .B(MUL_8_mult_17_n50), .CI(
        MUL_8_mult_17_n48), .CO(MUL_8_mult_17_n40), .S(MUL_8_mult_17_n41) );
  FA_X1 MUL_8_mult_17_U34 ( .A(MUL_8_mult_17_n214), .B(MUL_8_mult_17_n44), 
        .CI(MUL_8_mult_17_n525), .CO(MUL_8_mult_17_n38), .S(MUL_8_mult_17_n39)
         );
  FA_X1 MUL_8_mult_17_U33 ( .A(MUL_8_mult_17_n42), .B(MUL_8_mult_17_n203), 
        .CI(MUL_8_mult_17_n39), .CO(MUL_8_mult_17_n36), .S(MUL_8_mult_17_n37)
         );
  FA_X1 MUL_8_mult_17_U31 ( .A(MUL_8_mult_17_n518), .B(MUL_8_mult_17_n202), 
        .CI(MUL_8_mult_17_n38), .CO(MUL_8_mult_17_n32), .S(MUL_8_mult_17_n33)
         );
  FA_X1 MUL_8_mult_17_U30 ( .A(MUL_8_mult_17_n201), .B(MUL_8_mult_17_n34), 
        .CI(MUL_8_mult_17_n519), .CO(MUL_8_mult_17_n30), .S(MUL_8_mult_17_n31)
         );
  FA_X1 MUL_8_mult_17_U11 ( .A(MUL_8_mult_17_n53), .B(MUL_8_mult_17_n60), .CI(
        MUL_8_mult_17_n509), .CO(MUL_8_mult_17_n10), .S(
        TRUNCATED_MULT_RES_8__0_) );
  FA_X1 MUL_8_mult_17_U10 ( .A(MUL_8_mult_17_n47), .B(MUL_8_mult_17_n52), .CI(
        MUL_8_mult_17_n10), .CO(MUL_8_mult_17_n9), .S(TRUNCATED_MULT_RES_8__1_) );
  FA_X1 MUL_8_mult_17_U9 ( .A(MUL_8_mult_17_n41), .B(MUL_8_mult_17_n46), .CI(
        MUL_8_mult_17_n9), .CO(MUL_8_mult_17_n8), .S(TRUNCATED_MULT_RES_8__2_)
         );
  FA_X1 MUL_8_mult_17_U8 ( .A(MUL_8_mult_17_n37), .B(MUL_8_mult_17_n40), .CI(
        MUL_8_mult_17_n8), .CO(MUL_8_mult_17_n7), .S(TRUNCATED_MULT_RES_8__3_)
         );
  FA_X1 MUL_8_mult_17_U7 ( .A(MUL_8_mult_17_n33), .B(MUL_8_mult_17_n36), .CI(
        MUL_8_mult_17_n7), .CO(MUL_8_mult_17_n6), .S(TRUNCATED_MULT_RES_8__4_)
         );
  FA_X1 MUL_8_mult_17_U6 ( .A(MUL_8_mult_17_n32), .B(MUL_8_mult_17_n31), .CI(
        MUL_8_mult_17_n6), .CO(MUL_8_mult_17_n5), .S(TRUNCATED_MULT_RES_8__5_)
         );
  FA_X1 MUL_8_mult_17_U5 ( .A(MUL_8_mult_17_n30), .B(MUL_8_mult_17_n29), .CI(
        MUL_8_mult_17_n5), .CO(MUL_8_mult_17_n4), .S(TRUNCATED_MULT_RES_8__6_)
         );
  XOR2_X1 ADD_8_add_18_U2 ( .A(SUM_RESULTS_7__0_), .B(TRUNCATED_MULT_RES_8__0_), .Z(SUM_RESULTS_8__0_) );
  AND2_X1 ADD_8_add_18_U1 ( .A1(SUM_RESULTS_7__0_), .A2(
        TRUNCATED_MULT_RES_8__0_), .ZN(ADD_8_add_18_n1) );
  FA_X1 ADD_8_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_8__1_), .B(SUM_RESULTS_7__1_), .CI(ADD_8_add_18_n1), .CO(ADD_8_add_18_carry[2]), .S(SUM_RESULTS_8__1_) );
  FA_X1 ADD_8_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_8__2_), .B(SUM_RESULTS_7__2_), .CI(ADD_8_add_18_carry[2]), .CO(ADD_8_add_18_carry[3]), .S(SUM_RESULTS_8__2_) );
  FA_X1 ADD_8_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_8__3_), .B(SUM_RESULTS_7__3_), .CI(ADD_8_add_18_carry[3]), .CO(ADD_8_add_18_carry[4]), .S(SUM_RESULTS_8__3_) );
  FA_X1 ADD_8_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_8__4_), .B(SUM_RESULTS_7__4_), .CI(ADD_8_add_18_carry[4]), .CO(ADD_8_add_18_carry[5]), .S(SUM_RESULTS_8__4_) );
  FA_X1 ADD_8_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_8__5_), .B(SUM_RESULTS_7__5_), .CI(ADD_8_add_18_carry[5]), .CO(ADD_8_add_18_carry[6]), .S(SUM_RESULTS_8__5_) );
  FA_X1 ADD_8_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_8__6_), .B(SUM_RESULTS_7__6_), .CI(ADD_8_add_18_carry[6]), .CO(ADD_8_add_18_carry[7]), .S(SUM_RESULTS_8__6_) );
  FA_X1 ADD_8_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_8__7_), .B(SUM_RESULTS_7__7_), .CI(ADD_8_add_18_carry[7]), .CO(ADD_8_add_18_carry[8]), .S(SUM_RESULTS_8__7_) );
  FA_X1 ADD_8_add_18_U1_8 ( .A(TRUNCATED_MULT_RES_8__7_), .B(SUM_RESULTS_7__8_), .CI(ADD_8_add_18_carry[8]), .CO(ADD_8_add_18_carry[9]), .S(SUM_RESULTS_8__8_) );
  FA_X1 ADD_8_add_18_U1_9 ( .A(TRUNCATED_MULT_RES_8__7_), .B(
        SUM_RESULTS_7__12_), .CI(ADD_8_add_18_carry[9]), .S(SUM_RESULTS_8__12_) );
  BUF_X1 SAMPLE_REG_9_U31 ( .A(n545), .Z(SAMPLE_REG_9_n42) );
  NAND2_X1 SAMPLE_REG_9_U30 ( .A1(SAMPLE_REG_9_n42), .A2(SAMPLES[26]), .ZN(
        SAMPLE_REG_9_n82) );
  OAI21_X1 SAMPLE_REG_9_U29 ( .B1(SAMPLE_REG_9_n69), .B2(SAMPLE_REG_9_n42), 
        .A(SAMPLE_REG_9_n82), .ZN(SAMPLE_REG_9_n56) );
  NAND2_X1 SAMPLE_REG_9_U28 ( .A1(SAMPLES[28]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n80) );
  OAI21_X1 SAMPLE_REG_9_U27 ( .B1(SAMPLE_REG_9_n67), .B2(SAMPLE_REG_9_n41), 
        .A(SAMPLE_REG_9_n80), .ZN(SAMPLE_REG_9_n54) );
  NAND2_X1 SAMPLE_REG_9_U26 ( .A1(SAMPLES[38]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n70) );
  OAI21_X1 SAMPLE_REG_9_U25 ( .B1(SAMPLE_REG_9_n57), .B2(SAMPLE_REG_9_n41), 
        .A(SAMPLE_REG_9_n70), .ZN(SAMPLE_REG_9_n44) );
  NAND2_X1 SAMPLE_REG_9_U24 ( .A1(SAMPLES[37]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n71) );
  OAI21_X1 SAMPLE_REG_9_U23 ( .B1(SAMPLE_REG_9_n58), .B2(SAMPLE_REG_9_n41), 
        .A(SAMPLE_REG_9_n71), .ZN(SAMPLE_REG_9_n45) );
  NAND2_X1 SAMPLE_REG_9_U22 ( .A1(SAMPLES[36]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n72) );
  OAI21_X1 SAMPLE_REG_9_U21 ( .B1(SAMPLE_REG_9_n59), .B2(SAMPLE_REG_9_n41), 
        .A(SAMPLE_REG_9_n72), .ZN(SAMPLE_REG_9_n46) );
  NAND2_X1 SAMPLE_REG_9_U20 ( .A1(SAMPLES[35]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n73) );
  OAI21_X1 SAMPLE_REG_9_U19 ( .B1(SAMPLE_REG_9_n60), .B2(SAMPLE_REG_9_n41), 
        .A(SAMPLE_REG_9_n73), .ZN(SAMPLE_REG_9_n47) );
  NAND2_X1 SAMPLE_REG_9_U18 ( .A1(SAMPLES[34]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n74) );
  OAI21_X1 SAMPLE_REG_9_U17 ( .B1(SAMPLE_REG_9_n61), .B2(SAMPLE_REG_9_n41), 
        .A(SAMPLE_REG_9_n74), .ZN(SAMPLE_REG_9_n48) );
  NAND2_X1 SAMPLE_REG_9_U16 ( .A1(SAMPLES[33]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n75) );
  OAI21_X1 SAMPLE_REG_9_U15 ( .B1(SAMPLE_REG_9_n62), .B2(SAMPLE_REG_9_n41), 
        .A(SAMPLE_REG_9_n75), .ZN(SAMPLE_REG_9_n49) );
  NAND2_X1 SAMPLE_REG_9_U14 ( .A1(SAMPLES[32]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n76) );
  OAI21_X1 SAMPLE_REG_9_U13 ( .B1(SAMPLE_REG_9_n63), .B2(SAMPLE_REG_9_n41), 
        .A(SAMPLE_REG_9_n76), .ZN(SAMPLE_REG_9_n50) );
  NAND2_X1 SAMPLE_REG_9_U12 ( .A1(SAMPLES[31]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n77) );
  OAI21_X1 SAMPLE_REG_9_U11 ( .B1(SAMPLE_REG_9_n64), .B2(SAMPLE_REG_9_n41), 
        .A(SAMPLE_REG_9_n77), .ZN(SAMPLE_REG_9_n51) );
  NAND2_X1 SAMPLE_REG_9_U10 ( .A1(SAMPLES[30]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n78) );
  OAI21_X1 SAMPLE_REG_9_U9 ( .B1(SAMPLE_REG_9_n65), .B2(SAMPLE_REG_9_n41), .A(
        SAMPLE_REG_9_n78), .ZN(SAMPLE_REG_9_n52) );
  NAND2_X1 SAMPLE_REG_9_U8 ( .A1(SAMPLES[29]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n79) );
  OAI21_X1 SAMPLE_REG_9_U7 ( .B1(SAMPLE_REG_9_n66), .B2(SAMPLE_REG_9_n41), .A(
        SAMPLE_REG_9_n79), .ZN(SAMPLE_REG_9_n53) );
  NAND2_X1 SAMPLE_REG_9_U6 ( .A1(SAMPLES[27]), .A2(SAMPLE_REG_9_n40), .ZN(
        SAMPLE_REG_9_n81) );
  OAI21_X1 SAMPLE_REG_9_U5 ( .B1(SAMPLE_REG_9_n68), .B2(SAMPLE_REG_9_n41), .A(
        SAMPLE_REG_9_n81), .ZN(SAMPLE_REG_9_n55) );
  BUF_X1 SAMPLE_REG_9_U4 ( .A(n545), .Z(SAMPLE_REG_9_n41) );
  BUF_X1 SAMPLE_REG_9_U3 ( .A(n545), .Z(SAMPLE_REG_9_n40) );
  BUF_X1 SAMPLE_REG_9_U2 ( .A(n546), .Z(SAMPLE_REG_9_n43) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_1_ ( .D(SAMPLE_REG_9_n55), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[14]), .QN(SAMPLE_REG_9_n68) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_12_ ( .D(SAMPLE_REG_9_n44), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[25]), .QN(SAMPLE_REG_9_n57) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_2_ ( .D(SAMPLE_REG_9_n54), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[15]), .QN(SAMPLE_REG_9_n67) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_4_ ( .D(SAMPLE_REG_9_n52), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[17]), .QN(SAMPLE_REG_9_n65) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_6_ ( .D(SAMPLE_REG_9_n50), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[19]), .QN(SAMPLE_REG_9_n63) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_8_ ( .D(SAMPLE_REG_9_n48), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[21]), .QN(SAMPLE_REG_9_n61) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_10_ ( .D(SAMPLE_REG_9_n46), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[23]), .QN(SAMPLE_REG_9_n59) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_0_ ( .D(SAMPLE_REG_9_n56), .CK(CLK), .RN(n546), 
        .Q(SAMPLES[13]), .QN(SAMPLE_REG_9_n69) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_3_ ( .D(SAMPLE_REG_9_n53), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[16]), .QN(SAMPLE_REG_9_n66) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_5_ ( .D(SAMPLE_REG_9_n51), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[18]), .QN(SAMPLE_REG_9_n64) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_7_ ( .D(SAMPLE_REG_9_n49), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[20]), .QN(SAMPLE_REG_9_n62) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_9_ ( .D(SAMPLE_REG_9_n47), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[22]), .QN(SAMPLE_REG_9_n60) );
  DFFR_X1 SAMPLE_REG_9_DOUT_reg_11_ ( .D(SAMPLE_REG_9_n45), .CK(CLK), .RN(
        SAMPLE_REG_9_n43), .Q(SAMPLES[24]), .QN(SAMPLE_REG_9_n58) );
  XOR2_X1 MUL_9_mult_17_U660 ( .A(SAMPLES[15]), .B(SAMPLES[14]), .Z(
        MUL_9_mult_17_n681) );
  NAND2_X1 MUL_9_mult_17_U659 ( .A1(SAMPLES[14]), .A2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n571) );
  XNOR2_X1 MUL_9_mult_17_U658 ( .A(A[15]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n570) );
  OAI22_X1 MUL_9_mult_17_U657 ( .A1(A[14]), .A2(MUL_9_mult_17_n571), .B1(
        MUL_9_mult_17_n570), .B2(MUL_9_mult_17_n544), .ZN(MUL_9_mult_17_n683)
         );
  XNOR2_X1 MUL_9_mult_17_U656 ( .A(MUL_9_mult_17_n541), .B(SAMPLES[15]), .ZN(
        MUL_9_mult_17_n682) );
  NAND2_X1 MUL_9_mult_17_U655 ( .A1(MUL_9_mult_17_n542), .A2(
        MUL_9_mult_17_n682), .ZN(MUL_9_mult_17_n552) );
  NAND3_X1 MUL_9_mult_17_U654 ( .A1(MUL_9_mult_17_n681), .A2(
        MUL_9_mult_17_n546), .A3(SAMPLES[16]), .ZN(MUL_9_mult_17_n680) );
  OAI21_X1 MUL_9_mult_17_U653 ( .B1(MUL_9_mult_17_n541), .B2(
        MUL_9_mult_17_n552), .A(MUL_9_mult_17_n680), .ZN(MUL_9_mult_17_n679)
         );
  AOI222_X1 MUL_9_mult_17_U652 ( .A1(MUL_9_mult_17_n506), .A2(
        MUL_9_mult_17_n171), .B1(MUL_9_mult_17_n679), .B2(MUL_9_mult_17_n506), 
        .C1(MUL_9_mult_17_n679), .C2(MUL_9_mult_17_n171), .ZN(
        MUL_9_mult_17_n678) );
  AOI222_X1 MUL_9_mult_17_U651 ( .A1(MUL_9_mult_17_n538), .A2(
        MUL_9_mult_17_n169), .B1(MUL_9_mult_17_n538), .B2(MUL_9_mult_17_n170), 
        .C1(MUL_9_mult_17_n170), .C2(MUL_9_mult_17_n169), .ZN(
        MUL_9_mult_17_n677) );
  AOI222_X1 MUL_9_mult_17_U650 ( .A1(MUL_9_mult_17_n537), .A2(
        MUL_9_mult_17_n165), .B1(MUL_9_mult_17_n537), .B2(MUL_9_mult_17_n168), 
        .C1(MUL_9_mult_17_n168), .C2(MUL_9_mult_17_n165), .ZN(
        MUL_9_mult_17_n676) );
  AOI222_X1 MUL_9_mult_17_U649 ( .A1(MUL_9_mult_17_n533), .A2(
        MUL_9_mult_17_n161), .B1(MUL_9_mult_17_n533), .B2(MUL_9_mult_17_n164), 
        .C1(MUL_9_mult_17_n164), .C2(MUL_9_mult_17_n161), .ZN(
        MUL_9_mult_17_n675) );
  AOI222_X1 MUL_9_mult_17_U648 ( .A1(MUL_9_mult_17_n532), .A2(
        MUL_9_mult_17_n155), .B1(MUL_9_mult_17_n532), .B2(MUL_9_mult_17_n160), 
        .C1(MUL_9_mult_17_n160), .C2(MUL_9_mult_17_n155), .ZN(
        MUL_9_mult_17_n674) );
  AOI222_X1 MUL_9_mult_17_U647 ( .A1(MUL_9_mult_17_n528), .A2(
        MUL_9_mult_17_n149), .B1(MUL_9_mult_17_n528), .B2(MUL_9_mult_17_n154), 
        .C1(MUL_9_mult_17_n154), .C2(MUL_9_mult_17_n149), .ZN(
        MUL_9_mult_17_n673) );
  AOI222_X1 MUL_9_mult_17_U646 ( .A1(MUL_9_mult_17_n527), .A2(
        MUL_9_mult_17_n141), .B1(MUL_9_mult_17_n527), .B2(MUL_9_mult_17_n148), 
        .C1(MUL_9_mult_17_n148), .C2(MUL_9_mult_17_n141), .ZN(
        MUL_9_mult_17_n672) );
  AOI222_X1 MUL_9_mult_17_U645 ( .A1(MUL_9_mult_17_n523), .A2(
        MUL_9_mult_17_n133), .B1(MUL_9_mult_17_n523), .B2(MUL_9_mult_17_n140), 
        .C1(MUL_9_mult_17_n140), .C2(MUL_9_mult_17_n133), .ZN(
        MUL_9_mult_17_n671) );
  AOI222_X1 MUL_9_mult_17_U644 ( .A1(MUL_9_mult_17_n522), .A2(
        MUL_9_mult_17_n123), .B1(MUL_9_mult_17_n522), .B2(MUL_9_mult_17_n132), 
        .C1(MUL_9_mult_17_n132), .C2(MUL_9_mult_17_n123), .ZN(
        MUL_9_mult_17_n670) );
  AOI222_X1 MUL_9_mult_17_U643 ( .A1(MUL_9_mult_17_n517), .A2(
        MUL_9_mult_17_n113), .B1(MUL_9_mult_17_n517), .B2(MUL_9_mult_17_n122), 
        .C1(MUL_9_mult_17_n122), .C2(MUL_9_mult_17_n113), .ZN(
        MUL_9_mult_17_n669) );
  AOI222_X1 MUL_9_mult_17_U642 ( .A1(MUL_9_mult_17_n515), .A2(
        MUL_9_mult_17_n101), .B1(MUL_9_mult_17_n515), .B2(MUL_9_mult_17_n112), 
        .C1(MUL_9_mult_17_n112), .C2(MUL_9_mult_17_n101), .ZN(
        MUL_9_mult_17_n668) );
  AOI222_X1 MUL_9_mult_17_U641 ( .A1(MUL_9_mult_17_n513), .A2(
        MUL_9_mult_17_n89), .B1(MUL_9_mult_17_n513), .B2(MUL_9_mult_17_n100), 
        .C1(MUL_9_mult_17_n100), .C2(MUL_9_mult_17_n89), .ZN(
        MUL_9_mult_17_n667) );
  AOI222_X1 MUL_9_mult_17_U640 ( .A1(MUL_9_mult_17_n512), .A2(
        MUL_9_mult_17_n79), .B1(MUL_9_mult_17_n512), .B2(MUL_9_mult_17_n88), 
        .C1(MUL_9_mult_17_n88), .C2(MUL_9_mult_17_n79), .ZN(MUL_9_mult_17_n666) );
  AOI222_X1 MUL_9_mult_17_U639 ( .A1(MUL_9_mult_17_n511), .A2(
        MUL_9_mult_17_n69), .B1(MUL_9_mult_17_n511), .B2(MUL_9_mult_17_n78), 
        .C1(MUL_9_mult_17_n78), .C2(MUL_9_mult_17_n69), .ZN(MUL_9_mult_17_n665) );
  AOI222_X1 MUL_9_mult_17_U638 ( .A1(MUL_9_mult_17_n510), .A2(
        MUL_9_mult_17_n61), .B1(MUL_9_mult_17_n510), .B2(MUL_9_mult_17_n68), 
        .C1(MUL_9_mult_17_n68), .C2(MUL_9_mult_17_n61), .ZN(MUL_9_mult_17_n664) );
  XNOR2_X1 MUL_9_mult_17_U637 ( .A(A[15]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n633) );
  XNOR2_X1 MUL_9_mult_17_U636 ( .A(MUL_9_mult_17_n521), .B(SAMPLES[23]), .ZN(
        MUL_9_mult_17_n663) );
  NAND2_X1 MUL_9_mult_17_U635 ( .A1(MUL_9_mult_17_n568), .A2(
        MUL_9_mult_17_n663), .ZN(MUL_9_mult_17_n567) );
  XNOR2_X1 MUL_9_mult_17_U634 ( .A(A[16]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n634) );
  OAI22_X1 MUL_9_mult_17_U633 ( .A1(MUL_9_mult_17_n633), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n634), 
        .ZN(MUL_9_mult_17_n662) );
  XNOR2_X1 MUL_9_mult_17_U632 ( .A(MUL_9_mult_17_n545), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n661) );
  XNOR2_X1 MUL_9_mult_17_U631 ( .A(SAMPLES[25]), .B(MUL_9_mult_17_n521), .ZN(
        MUL_9_mult_17_n549) );
  NAND2_X1 MUL_9_mult_17_U630 ( .A1(MUL_9_mult_17_n661), .A2(
        MUL_9_mult_17_n549), .ZN(MUL_9_mult_17_n660) );
  NAND2_X1 MUL_9_mult_17_U629 ( .A1(MUL_9_mult_17_n520), .A2(
        MUL_9_mult_17_n660), .ZN(MUL_9_mult_17_n110) );
  XNOR2_X1 MUL_9_mult_17_U628 ( .A(MUL_9_mult_17_n660), .B(MUL_9_mult_17_n520), 
        .ZN(MUL_9_mult_17_n111) );
  NOR3_X1 MUL_9_mult_17_U627 ( .A1(MUL_9_mult_17_n514), .A2(A[13]), .A3(
        MUL_9_mult_17_n516), .ZN(MUL_9_mult_17_n193) );
  OR3_X1 MUL_9_mult_17_U626 ( .A1(MUL_9_mult_17_n568), .A2(A[13]), .A3(
        MUL_9_mult_17_n521), .ZN(MUL_9_mult_17_n659) );
  OAI21_X1 MUL_9_mult_17_U625 ( .B1(MUL_9_mult_17_n521), .B2(
        MUL_9_mult_17_n567), .A(MUL_9_mult_17_n659), .ZN(MUL_9_mult_17_n194)
         );
  XNOR2_X1 MUL_9_mult_17_U624 ( .A(MUL_9_mult_17_n526), .B(SAMPLES[21]), .ZN(
        MUL_9_mult_17_n658) );
  NAND2_X1 MUL_9_mult_17_U623 ( .A1(MUL_9_mult_17_n564), .A2(
        MUL_9_mult_17_n658), .ZN(MUL_9_mult_17_n563) );
  OR3_X1 MUL_9_mult_17_U622 ( .A1(MUL_9_mult_17_n564), .A2(A[13]), .A3(
        MUL_9_mult_17_n526), .ZN(MUL_9_mult_17_n657) );
  OAI21_X1 MUL_9_mult_17_U621 ( .B1(MUL_9_mult_17_n526), .B2(
        MUL_9_mult_17_n563), .A(MUL_9_mult_17_n657), .ZN(MUL_9_mult_17_n195)
         );
  XNOR2_X1 MUL_9_mult_17_U620 ( .A(MUL_9_mult_17_n531), .B(SAMPLES[19]), .ZN(
        MUL_9_mult_17_n656) );
  NAND2_X1 MUL_9_mult_17_U619 ( .A1(MUL_9_mult_17_n560), .A2(
        MUL_9_mult_17_n656), .ZN(MUL_9_mult_17_n559) );
  OR3_X1 MUL_9_mult_17_U618 ( .A1(MUL_9_mult_17_n560), .A2(A[13]), .A3(
        MUL_9_mult_17_n531), .ZN(MUL_9_mult_17_n655) );
  OAI21_X1 MUL_9_mult_17_U617 ( .B1(MUL_9_mult_17_n531), .B2(
        MUL_9_mult_17_n559), .A(MUL_9_mult_17_n655), .ZN(MUL_9_mult_17_n196)
         );
  XNOR2_X1 MUL_9_mult_17_U616 ( .A(MUL_9_mult_17_n536), .B(SAMPLES[17]), .ZN(
        MUL_9_mult_17_n654) );
  NAND2_X1 MUL_9_mult_17_U615 ( .A1(MUL_9_mult_17_n556), .A2(
        MUL_9_mult_17_n654), .ZN(MUL_9_mult_17_n555) );
  OR3_X1 MUL_9_mult_17_U614 ( .A1(MUL_9_mult_17_n556), .A2(A[13]), .A3(
        MUL_9_mult_17_n536), .ZN(MUL_9_mult_17_n653) );
  OAI21_X1 MUL_9_mult_17_U613 ( .B1(MUL_9_mult_17_n536), .B2(
        MUL_9_mult_17_n555), .A(MUL_9_mult_17_n653), .ZN(MUL_9_mult_17_n197)
         );
  XNOR2_X1 MUL_9_mult_17_U612 ( .A(A[24]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n652) );
  NOR2_X1 MUL_9_mult_17_U611 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n652), .ZN(MUL_9_mult_17_n201) );
  XNOR2_X1 MUL_9_mult_17_U610 ( .A(A[23]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n651) );
  NOR2_X1 MUL_9_mult_17_U609 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n651), .ZN(MUL_9_mult_17_n202) );
  XNOR2_X1 MUL_9_mult_17_U608 ( .A(A[22]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n650) );
  NOR2_X1 MUL_9_mult_17_U607 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n650), .ZN(MUL_9_mult_17_n203) );
  XNOR2_X1 MUL_9_mult_17_U606 ( .A(A[21]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n649) );
  NOR2_X1 MUL_9_mult_17_U605 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n649), .ZN(MUL_9_mult_17_n204) );
  XNOR2_X1 MUL_9_mult_17_U604 ( .A(A[20]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n648) );
  NOR2_X1 MUL_9_mult_17_U603 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n648), .ZN(MUL_9_mult_17_n205) );
  XNOR2_X1 MUL_9_mult_17_U602 ( .A(A[19]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n647) );
  NOR2_X1 MUL_9_mult_17_U601 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n647), .ZN(MUL_9_mult_17_n206) );
  XNOR2_X1 MUL_9_mult_17_U600 ( .A(A[18]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n646) );
  NOR2_X1 MUL_9_mult_17_U599 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n646), .ZN(MUL_9_mult_17_n207) );
  XNOR2_X1 MUL_9_mult_17_U598 ( .A(A[17]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n645) );
  NOR2_X1 MUL_9_mult_17_U597 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n645), .ZN(MUL_9_mult_17_n208) );
  XNOR2_X1 MUL_9_mult_17_U596 ( .A(A[16]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n644) );
  NOR2_X1 MUL_9_mult_17_U595 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n644), .ZN(MUL_9_mult_17_n209) );
  XNOR2_X1 MUL_9_mult_17_U594 ( .A(A[15]), .B(SAMPLES[25]), .ZN(
        MUL_9_mult_17_n643) );
  NOR2_X1 MUL_9_mult_17_U593 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n643), .ZN(MUL_9_mult_17_n210) );
  NOR2_X1 MUL_9_mult_17_U592 ( .A1(MUL_9_mult_17_n516), .A2(MUL_9_mult_17_n546), .ZN(MUL_9_mult_17_n212) );
  XNOR2_X1 MUL_9_mult_17_U591 ( .A(A[25]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n569) );
  OAI22_X1 MUL_9_mult_17_U590 ( .A1(MUL_9_mult_17_n569), .A2(
        MUL_9_mult_17_n568), .B1(MUL_9_mult_17_n567), .B2(MUL_9_mult_17_n569), 
        .ZN(MUL_9_mult_17_n642) );
  XNOR2_X1 MUL_9_mult_17_U589 ( .A(A[23]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n641) );
  XNOR2_X1 MUL_9_mult_17_U588 ( .A(A[24]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n566) );
  OAI22_X1 MUL_9_mult_17_U587 ( .A1(MUL_9_mult_17_n641), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n566), 
        .ZN(MUL_9_mult_17_n214) );
  XNOR2_X1 MUL_9_mult_17_U586 ( .A(A[22]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n640) );
  OAI22_X1 MUL_9_mult_17_U585 ( .A1(MUL_9_mult_17_n640), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n641), 
        .ZN(MUL_9_mult_17_n215) );
  XNOR2_X1 MUL_9_mult_17_U584 ( .A(A[21]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n639) );
  OAI22_X1 MUL_9_mult_17_U583 ( .A1(MUL_9_mult_17_n639), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n640), 
        .ZN(MUL_9_mult_17_n216) );
  XNOR2_X1 MUL_9_mult_17_U582 ( .A(A[20]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n638) );
  OAI22_X1 MUL_9_mult_17_U581 ( .A1(MUL_9_mult_17_n638), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n639), 
        .ZN(MUL_9_mult_17_n217) );
  XNOR2_X1 MUL_9_mult_17_U580 ( .A(A[19]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n637) );
  OAI22_X1 MUL_9_mult_17_U579 ( .A1(MUL_9_mult_17_n637), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n638), 
        .ZN(MUL_9_mult_17_n218) );
  XNOR2_X1 MUL_9_mult_17_U578 ( .A(A[18]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n636) );
  OAI22_X1 MUL_9_mult_17_U577 ( .A1(MUL_9_mult_17_n636), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n637), 
        .ZN(MUL_9_mult_17_n219) );
  XNOR2_X1 MUL_9_mult_17_U576 ( .A(A[17]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n635) );
  OAI22_X1 MUL_9_mult_17_U575 ( .A1(MUL_9_mult_17_n635), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n636), 
        .ZN(MUL_9_mult_17_n220) );
  OAI22_X1 MUL_9_mult_17_U574 ( .A1(MUL_9_mult_17_n634), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n635), 
        .ZN(MUL_9_mult_17_n221) );
  XNOR2_X1 MUL_9_mult_17_U573 ( .A(A[14]), .B(SAMPLES[24]), .ZN(
        MUL_9_mult_17_n632) );
  OAI22_X1 MUL_9_mult_17_U572 ( .A1(MUL_9_mult_17_n632), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n633), 
        .ZN(MUL_9_mult_17_n223) );
  XNOR2_X1 MUL_9_mult_17_U571 ( .A(SAMPLES[24]), .B(A[13]), .ZN(
        MUL_9_mult_17_n631) );
  OAI22_X1 MUL_9_mult_17_U570 ( .A1(MUL_9_mult_17_n631), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n632), 
        .ZN(MUL_9_mult_17_n224) );
  NOR2_X1 MUL_9_mult_17_U569 ( .A1(MUL_9_mult_17_n568), .A2(MUL_9_mult_17_n546), .ZN(MUL_9_mult_17_n225) );
  XNOR2_X1 MUL_9_mult_17_U568 ( .A(A[25]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n565) );
  OAI22_X1 MUL_9_mult_17_U567 ( .A1(MUL_9_mult_17_n565), .A2(
        MUL_9_mult_17_n564), .B1(MUL_9_mult_17_n563), .B2(MUL_9_mult_17_n565), 
        .ZN(MUL_9_mult_17_n630) );
  XNOR2_X1 MUL_9_mult_17_U566 ( .A(A[23]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n629) );
  XNOR2_X1 MUL_9_mult_17_U565 ( .A(A[24]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n562) );
  OAI22_X1 MUL_9_mult_17_U564 ( .A1(MUL_9_mult_17_n629), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n562), 
        .ZN(MUL_9_mult_17_n227) );
  XNOR2_X1 MUL_9_mult_17_U563 ( .A(A[22]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n628) );
  OAI22_X1 MUL_9_mult_17_U562 ( .A1(MUL_9_mult_17_n628), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n629), 
        .ZN(MUL_9_mult_17_n228) );
  XNOR2_X1 MUL_9_mult_17_U561 ( .A(A[21]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n627) );
  OAI22_X1 MUL_9_mult_17_U560 ( .A1(MUL_9_mult_17_n627), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n628), 
        .ZN(MUL_9_mult_17_n229) );
  XNOR2_X1 MUL_9_mult_17_U559 ( .A(A[20]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n626) );
  OAI22_X1 MUL_9_mult_17_U558 ( .A1(MUL_9_mult_17_n626), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n627), 
        .ZN(MUL_9_mult_17_n230) );
  XNOR2_X1 MUL_9_mult_17_U557 ( .A(A[19]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n625) );
  OAI22_X1 MUL_9_mult_17_U556 ( .A1(MUL_9_mult_17_n625), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n626), 
        .ZN(MUL_9_mult_17_n231) );
  XNOR2_X1 MUL_9_mult_17_U555 ( .A(A[18]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n624) );
  OAI22_X1 MUL_9_mult_17_U554 ( .A1(MUL_9_mult_17_n624), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n625), 
        .ZN(MUL_9_mult_17_n232) );
  XNOR2_X1 MUL_9_mult_17_U553 ( .A(A[17]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n623) );
  OAI22_X1 MUL_9_mult_17_U552 ( .A1(MUL_9_mult_17_n623), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n624), 
        .ZN(MUL_9_mult_17_n233) );
  XNOR2_X1 MUL_9_mult_17_U551 ( .A(A[16]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n622) );
  OAI22_X1 MUL_9_mult_17_U550 ( .A1(MUL_9_mult_17_n622), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n623), 
        .ZN(MUL_9_mult_17_n234) );
  XNOR2_X1 MUL_9_mult_17_U549 ( .A(A[15]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n621) );
  OAI22_X1 MUL_9_mult_17_U548 ( .A1(MUL_9_mult_17_n621), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n622), 
        .ZN(MUL_9_mult_17_n235) );
  XNOR2_X1 MUL_9_mult_17_U547 ( .A(A[14]), .B(SAMPLES[22]), .ZN(
        MUL_9_mult_17_n620) );
  OAI22_X1 MUL_9_mult_17_U546 ( .A1(MUL_9_mult_17_n620), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n621), 
        .ZN(MUL_9_mult_17_n236) );
  XNOR2_X1 MUL_9_mult_17_U545 ( .A(SAMPLES[22]), .B(A[13]), .ZN(
        MUL_9_mult_17_n619) );
  OAI22_X1 MUL_9_mult_17_U544 ( .A1(MUL_9_mult_17_n619), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n620), 
        .ZN(MUL_9_mult_17_n237) );
  NOR2_X1 MUL_9_mult_17_U543 ( .A1(MUL_9_mult_17_n564), .A2(MUL_9_mult_17_n546), .ZN(MUL_9_mult_17_n238) );
  XNOR2_X1 MUL_9_mult_17_U542 ( .A(A[25]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n561) );
  OAI22_X1 MUL_9_mult_17_U541 ( .A1(MUL_9_mult_17_n561), .A2(
        MUL_9_mult_17_n560), .B1(MUL_9_mult_17_n559), .B2(MUL_9_mult_17_n561), 
        .ZN(MUL_9_mult_17_n618) );
  XNOR2_X1 MUL_9_mult_17_U540 ( .A(A[23]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n617) );
  XNOR2_X1 MUL_9_mult_17_U539 ( .A(A[24]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n558) );
  OAI22_X1 MUL_9_mult_17_U538 ( .A1(MUL_9_mult_17_n617), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n558), 
        .ZN(MUL_9_mult_17_n240) );
  XNOR2_X1 MUL_9_mult_17_U537 ( .A(A[22]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n616) );
  OAI22_X1 MUL_9_mult_17_U536 ( .A1(MUL_9_mult_17_n616), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n617), 
        .ZN(MUL_9_mult_17_n241) );
  XNOR2_X1 MUL_9_mult_17_U535 ( .A(A[21]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n615) );
  OAI22_X1 MUL_9_mult_17_U534 ( .A1(MUL_9_mult_17_n615), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n616), 
        .ZN(MUL_9_mult_17_n242) );
  XNOR2_X1 MUL_9_mult_17_U533 ( .A(A[20]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n614) );
  OAI22_X1 MUL_9_mult_17_U532 ( .A1(MUL_9_mult_17_n614), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n615), 
        .ZN(MUL_9_mult_17_n243) );
  XNOR2_X1 MUL_9_mult_17_U531 ( .A(A[19]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n613) );
  OAI22_X1 MUL_9_mult_17_U530 ( .A1(MUL_9_mult_17_n613), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n614), 
        .ZN(MUL_9_mult_17_n244) );
  XNOR2_X1 MUL_9_mult_17_U529 ( .A(A[18]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n612) );
  OAI22_X1 MUL_9_mult_17_U528 ( .A1(MUL_9_mult_17_n612), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n613), 
        .ZN(MUL_9_mult_17_n245) );
  XNOR2_X1 MUL_9_mult_17_U527 ( .A(A[17]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n611) );
  OAI22_X1 MUL_9_mult_17_U526 ( .A1(MUL_9_mult_17_n611), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n612), 
        .ZN(MUL_9_mult_17_n246) );
  XNOR2_X1 MUL_9_mult_17_U525 ( .A(A[16]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n610) );
  OAI22_X1 MUL_9_mult_17_U524 ( .A1(MUL_9_mult_17_n610), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n611), 
        .ZN(MUL_9_mult_17_n247) );
  XNOR2_X1 MUL_9_mult_17_U523 ( .A(A[15]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n609) );
  OAI22_X1 MUL_9_mult_17_U522 ( .A1(MUL_9_mult_17_n609), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n610), 
        .ZN(MUL_9_mult_17_n248) );
  XNOR2_X1 MUL_9_mult_17_U521 ( .A(A[14]), .B(SAMPLES[20]), .ZN(
        MUL_9_mult_17_n608) );
  OAI22_X1 MUL_9_mult_17_U520 ( .A1(MUL_9_mult_17_n608), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n609), 
        .ZN(MUL_9_mult_17_n249) );
  XNOR2_X1 MUL_9_mult_17_U519 ( .A(SAMPLES[20]), .B(A[13]), .ZN(
        MUL_9_mult_17_n607) );
  OAI22_X1 MUL_9_mult_17_U518 ( .A1(MUL_9_mult_17_n607), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n608), 
        .ZN(MUL_9_mult_17_n250) );
  NOR2_X1 MUL_9_mult_17_U517 ( .A1(MUL_9_mult_17_n560), .A2(MUL_9_mult_17_n546), .ZN(MUL_9_mult_17_n251) );
  XNOR2_X1 MUL_9_mult_17_U516 ( .A(A[25]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n557) );
  OAI22_X1 MUL_9_mult_17_U515 ( .A1(MUL_9_mult_17_n557), .A2(
        MUL_9_mult_17_n556), .B1(MUL_9_mult_17_n555), .B2(MUL_9_mult_17_n557), 
        .ZN(MUL_9_mult_17_n606) );
  XNOR2_X1 MUL_9_mult_17_U514 ( .A(A[23]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n605) );
  XNOR2_X1 MUL_9_mult_17_U513 ( .A(A[24]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n554) );
  OAI22_X1 MUL_9_mult_17_U512 ( .A1(MUL_9_mult_17_n605), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n554), 
        .ZN(MUL_9_mult_17_n253) );
  XNOR2_X1 MUL_9_mult_17_U511 ( .A(A[22]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n604) );
  OAI22_X1 MUL_9_mult_17_U510 ( .A1(MUL_9_mult_17_n604), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n605), 
        .ZN(MUL_9_mult_17_n254) );
  XNOR2_X1 MUL_9_mult_17_U509 ( .A(A[21]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n603) );
  OAI22_X1 MUL_9_mult_17_U508 ( .A1(MUL_9_mult_17_n603), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n604), 
        .ZN(MUL_9_mult_17_n255) );
  XNOR2_X1 MUL_9_mult_17_U507 ( .A(A[20]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n602) );
  OAI22_X1 MUL_9_mult_17_U506 ( .A1(MUL_9_mult_17_n602), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n603), 
        .ZN(MUL_9_mult_17_n256) );
  XNOR2_X1 MUL_9_mult_17_U505 ( .A(A[19]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n601) );
  OAI22_X1 MUL_9_mult_17_U504 ( .A1(MUL_9_mult_17_n601), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n602), 
        .ZN(MUL_9_mult_17_n257) );
  XNOR2_X1 MUL_9_mult_17_U503 ( .A(A[18]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n600) );
  OAI22_X1 MUL_9_mult_17_U502 ( .A1(MUL_9_mult_17_n600), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n601), 
        .ZN(MUL_9_mult_17_n258) );
  XNOR2_X1 MUL_9_mult_17_U501 ( .A(A[17]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n599) );
  OAI22_X1 MUL_9_mult_17_U500 ( .A1(MUL_9_mult_17_n599), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n600), 
        .ZN(MUL_9_mult_17_n259) );
  XNOR2_X1 MUL_9_mult_17_U499 ( .A(A[16]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n598) );
  OAI22_X1 MUL_9_mult_17_U498 ( .A1(MUL_9_mult_17_n598), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n599), 
        .ZN(MUL_9_mult_17_n260) );
  XNOR2_X1 MUL_9_mult_17_U497 ( .A(A[15]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n597) );
  OAI22_X1 MUL_9_mult_17_U496 ( .A1(MUL_9_mult_17_n597), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n598), 
        .ZN(MUL_9_mult_17_n261) );
  XNOR2_X1 MUL_9_mult_17_U495 ( .A(A[14]), .B(SAMPLES[18]), .ZN(
        MUL_9_mult_17_n596) );
  OAI22_X1 MUL_9_mult_17_U494 ( .A1(MUL_9_mult_17_n596), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n597), 
        .ZN(MUL_9_mult_17_n262) );
  XNOR2_X1 MUL_9_mult_17_U493 ( .A(SAMPLES[18]), .B(A[13]), .ZN(
        MUL_9_mult_17_n595) );
  OAI22_X1 MUL_9_mult_17_U492 ( .A1(MUL_9_mult_17_n595), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n596), 
        .ZN(MUL_9_mult_17_n263) );
  NOR2_X1 MUL_9_mult_17_U491 ( .A1(MUL_9_mult_17_n556), .A2(MUL_9_mult_17_n546), .ZN(MUL_9_mult_17_n264) );
  XOR2_X1 MUL_9_mult_17_U490 ( .A(A[25]), .B(MUL_9_mult_17_n541), .Z(
        MUL_9_mult_17_n553) );
  OAI22_X1 MUL_9_mult_17_U489 ( .A1(MUL_9_mult_17_n553), .A2(
        MUL_9_mult_17_n542), .B1(MUL_9_mult_17_n552), .B2(MUL_9_mult_17_n553), 
        .ZN(MUL_9_mult_17_n594) );
  XNOR2_X1 MUL_9_mult_17_U488 ( .A(A[23]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n593) );
  XNOR2_X1 MUL_9_mult_17_U487 ( .A(A[24]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n551) );
  OAI22_X1 MUL_9_mult_17_U486 ( .A1(MUL_9_mult_17_n593), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n551), 
        .ZN(MUL_9_mult_17_n266) );
  XNOR2_X1 MUL_9_mult_17_U485 ( .A(A[22]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n592) );
  OAI22_X1 MUL_9_mult_17_U484 ( .A1(MUL_9_mult_17_n592), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n593), 
        .ZN(MUL_9_mult_17_n267) );
  XNOR2_X1 MUL_9_mult_17_U483 ( .A(A[21]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n591) );
  OAI22_X1 MUL_9_mult_17_U482 ( .A1(MUL_9_mult_17_n591), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n592), 
        .ZN(MUL_9_mult_17_n268) );
  XNOR2_X1 MUL_9_mult_17_U481 ( .A(A[20]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n590) );
  OAI22_X1 MUL_9_mult_17_U480 ( .A1(MUL_9_mult_17_n590), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n591), 
        .ZN(MUL_9_mult_17_n269) );
  XNOR2_X1 MUL_9_mult_17_U479 ( .A(A[19]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n589) );
  OAI22_X1 MUL_9_mult_17_U478 ( .A1(MUL_9_mult_17_n589), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n590), 
        .ZN(MUL_9_mult_17_n270) );
  XNOR2_X1 MUL_9_mult_17_U477 ( .A(A[18]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n588) );
  OAI22_X1 MUL_9_mult_17_U476 ( .A1(MUL_9_mult_17_n588), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n589), 
        .ZN(MUL_9_mult_17_n271) );
  XNOR2_X1 MUL_9_mult_17_U475 ( .A(A[17]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n587) );
  OAI22_X1 MUL_9_mult_17_U474 ( .A1(MUL_9_mult_17_n587), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n588), 
        .ZN(MUL_9_mult_17_n272) );
  XNOR2_X1 MUL_9_mult_17_U473 ( .A(A[16]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n586) );
  OAI22_X1 MUL_9_mult_17_U472 ( .A1(MUL_9_mult_17_n586), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n587), 
        .ZN(MUL_9_mult_17_n273) );
  XNOR2_X1 MUL_9_mult_17_U471 ( .A(A[15]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n585) );
  OAI22_X1 MUL_9_mult_17_U470 ( .A1(MUL_9_mult_17_n585), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n586), 
        .ZN(MUL_9_mult_17_n274) );
  XNOR2_X1 MUL_9_mult_17_U469 ( .A(A[14]), .B(SAMPLES[16]), .ZN(
        MUL_9_mult_17_n584) );
  OAI22_X1 MUL_9_mult_17_U468 ( .A1(MUL_9_mult_17_n584), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n585), 
        .ZN(MUL_9_mult_17_n275) );
  XNOR2_X1 MUL_9_mult_17_U467 ( .A(SAMPLES[16]), .B(A[13]), .ZN(
        MUL_9_mult_17_n583) );
  OAI22_X1 MUL_9_mult_17_U466 ( .A1(MUL_9_mult_17_n583), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n584), 
        .ZN(MUL_9_mult_17_n276) );
  XNOR2_X1 MUL_9_mult_17_U465 ( .A(A[25]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n581) );
  OAI22_X1 MUL_9_mult_17_U464 ( .A1(MUL_9_mult_17_n544), .A2(
        MUL_9_mult_17_n581), .B1(MUL_9_mult_17_n571), .B2(MUL_9_mult_17_n581), 
        .ZN(MUL_9_mult_17_n582) );
  XNOR2_X1 MUL_9_mult_17_U463 ( .A(A[24]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n580) );
  OAI22_X1 MUL_9_mult_17_U462 ( .A1(MUL_9_mult_17_n580), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n581), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n279) );
  XNOR2_X1 MUL_9_mult_17_U461 ( .A(A[23]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n579) );
  OAI22_X1 MUL_9_mult_17_U460 ( .A1(MUL_9_mult_17_n579), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n580), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n280) );
  XNOR2_X1 MUL_9_mult_17_U459 ( .A(A[22]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n578) );
  OAI22_X1 MUL_9_mult_17_U458 ( .A1(MUL_9_mult_17_n578), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n579), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n281) );
  XNOR2_X1 MUL_9_mult_17_U457 ( .A(A[21]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n577) );
  OAI22_X1 MUL_9_mult_17_U456 ( .A1(MUL_9_mult_17_n577), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n578), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n282) );
  XNOR2_X1 MUL_9_mult_17_U455 ( .A(A[20]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n576) );
  OAI22_X1 MUL_9_mult_17_U454 ( .A1(MUL_9_mult_17_n576), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n577), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n283) );
  XNOR2_X1 MUL_9_mult_17_U453 ( .A(A[19]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n575) );
  OAI22_X1 MUL_9_mult_17_U452 ( .A1(MUL_9_mult_17_n575), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n576), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n284) );
  XNOR2_X1 MUL_9_mult_17_U451 ( .A(A[18]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n574) );
  OAI22_X1 MUL_9_mult_17_U450 ( .A1(MUL_9_mult_17_n574), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n575), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n285) );
  XNOR2_X1 MUL_9_mult_17_U449 ( .A(A[17]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n573) );
  OAI22_X1 MUL_9_mult_17_U448 ( .A1(MUL_9_mult_17_n573), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n574), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n286) );
  XNOR2_X1 MUL_9_mult_17_U447 ( .A(A[16]), .B(SAMPLES[14]), .ZN(
        MUL_9_mult_17_n572) );
  OAI22_X1 MUL_9_mult_17_U446 ( .A1(MUL_9_mult_17_n572), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n573), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n287) );
  OAI22_X1 MUL_9_mult_17_U445 ( .A1(MUL_9_mult_17_n570), .A2(
        MUL_9_mult_17_n571), .B1(MUL_9_mult_17_n572), .B2(MUL_9_mult_17_n544), 
        .ZN(MUL_9_mult_17_n288) );
  XNOR2_X1 MUL_9_mult_17_U444 ( .A(A[25]), .B(MUL_9_mult_17_n514), .ZN(
        MUL_9_mult_17_n550) );
  NAND2_X1 MUL_9_mult_17_U443 ( .A1(MUL_9_mult_17_n550), .A2(
        MUL_9_mult_17_n549), .ZN(MUL_9_mult_17_n29) );
  OAI22_X1 MUL_9_mult_17_U442 ( .A1(MUL_9_mult_17_n566), .A2(
        MUL_9_mult_17_n567), .B1(MUL_9_mult_17_n568), .B2(MUL_9_mult_17_n569), 
        .ZN(MUL_9_mult_17_n34) );
  OAI22_X1 MUL_9_mult_17_U441 ( .A1(MUL_9_mult_17_n562), .A2(
        MUL_9_mult_17_n563), .B1(MUL_9_mult_17_n564), .B2(MUL_9_mult_17_n565), 
        .ZN(MUL_9_mult_17_n44) );
  OAI22_X1 MUL_9_mult_17_U440 ( .A1(MUL_9_mult_17_n558), .A2(
        MUL_9_mult_17_n559), .B1(MUL_9_mult_17_n560), .B2(MUL_9_mult_17_n561), 
        .ZN(MUL_9_mult_17_n58) );
  OAI22_X1 MUL_9_mult_17_U439 ( .A1(MUL_9_mult_17_n554), .A2(
        MUL_9_mult_17_n555), .B1(MUL_9_mult_17_n556), .B2(MUL_9_mult_17_n557), 
        .ZN(MUL_9_mult_17_n76) );
  OAI22_X1 MUL_9_mult_17_U438 ( .A1(MUL_9_mult_17_n551), .A2(
        MUL_9_mult_17_n552), .B1(MUL_9_mult_17_n542), .B2(MUL_9_mult_17_n553), 
        .ZN(MUL_9_mult_17_n98) );
  NOR2_X1 MUL_9_mult_17_U437 ( .A1(MUL_9_mult_17_n544), .A2(MUL_9_mult_17_n546), .ZN(MUL_9_O_0_) );
  XOR2_X1 MUL_9_mult_17_U436 ( .A(MUL_9_mult_17_n29), .B(MUL_9_mult_17_n4), 
        .Z(MUL_9_mult_17_n547) );
  AND2_X1 MUL_9_mult_17_U435 ( .A1(MUL_9_mult_17_n549), .A2(MUL_9_mult_17_n550), .ZN(MUL_9_mult_17_n548) );
  XOR2_X1 MUL_9_mult_17_U434 ( .A(MUL_9_mult_17_n547), .B(MUL_9_mult_17_n548), 
        .Z(TRUNCATED_MULT_RES_9__7_) );
  XOR2_X2 MUL_9_mult_17_U433 ( .A(SAMPLES[23]), .B(MUL_9_mult_17_n526), .Z(
        MUL_9_mult_17_n568) );
  XOR2_X2 MUL_9_mult_17_U432 ( .A(SAMPLES[21]), .B(MUL_9_mult_17_n531), .Z(
        MUL_9_mult_17_n564) );
  XOR2_X2 MUL_9_mult_17_U431 ( .A(SAMPLES[19]), .B(MUL_9_mult_17_n536), .Z(
        MUL_9_mult_17_n560) );
  XOR2_X2 MUL_9_mult_17_U430 ( .A(SAMPLES[17]), .B(MUL_9_mult_17_n541), .Z(
        MUL_9_mult_17_n556) );
  INV_X1 MUL_9_mult_17_U429 ( .A(MUL_9_mult_17_n642), .ZN(MUL_9_mult_17_n519)
         );
  INV_X1 MUL_9_mult_17_U428 ( .A(MUL_9_mult_17_n34), .ZN(MUL_9_mult_17_n518)
         );
  INV_X1 MUL_9_mult_17_U427 ( .A(MUL_9_mult_17_n594), .ZN(MUL_9_mult_17_n540)
         );
  INV_X1 MUL_9_mult_17_U426 ( .A(SAMPLES[25]), .ZN(MUL_9_mult_17_n514) );
  INV_X1 MUL_9_mult_17_U425 ( .A(SAMPLES[24]), .ZN(MUL_9_mult_17_n521) );
  INV_X1 MUL_9_mult_17_U424 ( .A(A[14]), .ZN(MUL_9_mult_17_n545) );
  AND3_X1 MUL_9_mult_17_U423 ( .A1(MUL_9_mult_17_n683), .A2(MUL_9_mult_17_n545), .A3(SAMPLES[14]), .ZN(MUL_9_mult_17_n508) );
  AND2_X1 MUL_9_mult_17_U422 ( .A1(MUL_9_mult_17_n681), .A2(MUL_9_mult_17_n683), .ZN(MUL_9_mult_17_n507) );
  MUX2_X1 MUL_9_mult_17_U421 ( .A(MUL_9_mult_17_n507), .B(MUL_9_mult_17_n508), 
        .S(MUL_9_mult_17_n546), .Z(MUL_9_mult_17_n506) );
  INV_X1 MUL_9_mult_17_U420 ( .A(A[13]), .ZN(MUL_9_mult_17_n546) );
  INV_X1 MUL_9_mult_17_U419 ( .A(SAMPLES[22]), .ZN(MUL_9_mult_17_n526) );
  INV_X1 MUL_9_mult_17_U418 ( .A(SAMPLES[20]), .ZN(MUL_9_mult_17_n531) );
  INV_X1 MUL_9_mult_17_U417 ( .A(SAMPLES[18]), .ZN(MUL_9_mult_17_n536) );
  INV_X1 MUL_9_mult_17_U416 ( .A(SAMPLES[16]), .ZN(MUL_9_mult_17_n541) );
  INV_X1 MUL_9_mult_17_U415 ( .A(SAMPLES[13]), .ZN(MUL_9_mult_17_n544) );
  INV_X1 MUL_9_mult_17_U414 ( .A(MUL_9_mult_17_n630), .ZN(MUL_9_mult_17_n525)
         );
  INV_X1 MUL_9_mult_17_U413 ( .A(MUL_9_mult_17_n44), .ZN(MUL_9_mult_17_n524)
         );
  INV_X1 MUL_9_mult_17_U412 ( .A(MUL_9_mult_17_n662), .ZN(MUL_9_mult_17_n520)
         );
  INV_X1 MUL_9_mult_17_U411 ( .A(MUL_9_mult_17_n606), .ZN(MUL_9_mult_17_n535)
         );
  INV_X1 MUL_9_mult_17_U410 ( .A(MUL_9_mult_17_n76), .ZN(MUL_9_mult_17_n534)
         );
  INV_X1 MUL_9_mult_17_U409 ( .A(MUL_9_mult_17_n618), .ZN(MUL_9_mult_17_n530)
         );
  INV_X1 MUL_9_mult_17_U408 ( .A(MUL_9_mult_17_n98), .ZN(MUL_9_mult_17_n539)
         );
  INV_X1 MUL_9_mult_17_U407 ( .A(MUL_9_mult_17_n582), .ZN(MUL_9_mult_17_n543)
         );
  INV_X1 MUL_9_mult_17_U406 ( .A(MUL_9_mult_17_n549), .ZN(MUL_9_mult_17_n516)
         );
  INV_X1 MUL_9_mult_17_U405 ( .A(MUL_9_mult_17_n681), .ZN(MUL_9_mult_17_n542)
         );
  INV_X1 MUL_9_mult_17_U404 ( .A(MUL_9_mult_17_n678), .ZN(MUL_9_mult_17_n538)
         );
  INV_X1 MUL_9_mult_17_U403 ( .A(MUL_9_mult_17_n677), .ZN(MUL_9_mult_17_n537)
         );
  INV_X1 MUL_9_mult_17_U402 ( .A(MUL_9_mult_17_n58), .ZN(MUL_9_mult_17_n529)
         );
  INV_X1 MUL_9_mult_17_U401 ( .A(MUL_9_mult_17_n676), .ZN(MUL_9_mult_17_n533)
         );
  INV_X1 MUL_9_mult_17_U400 ( .A(MUL_9_mult_17_n675), .ZN(MUL_9_mult_17_n532)
         );
  INV_X1 MUL_9_mult_17_U399 ( .A(MUL_9_mult_17_n664), .ZN(MUL_9_mult_17_n509)
         );
  INV_X1 MUL_9_mult_17_U398 ( .A(MUL_9_mult_17_n674), .ZN(MUL_9_mult_17_n528)
         );
  INV_X1 MUL_9_mult_17_U397 ( .A(MUL_9_mult_17_n673), .ZN(MUL_9_mult_17_n527)
         );
  INV_X1 MUL_9_mult_17_U396 ( .A(MUL_9_mult_17_n668), .ZN(MUL_9_mult_17_n513)
         );
  INV_X1 MUL_9_mult_17_U395 ( .A(MUL_9_mult_17_n667), .ZN(MUL_9_mult_17_n512)
         );
  INV_X1 MUL_9_mult_17_U394 ( .A(MUL_9_mult_17_n670), .ZN(MUL_9_mult_17_n517)
         );
  INV_X1 MUL_9_mult_17_U393 ( .A(MUL_9_mult_17_n669), .ZN(MUL_9_mult_17_n515)
         );
  INV_X1 MUL_9_mult_17_U392 ( .A(MUL_9_mult_17_n672), .ZN(MUL_9_mult_17_n523)
         );
  INV_X1 MUL_9_mult_17_U391 ( .A(MUL_9_mult_17_n671), .ZN(MUL_9_mult_17_n522)
         );
  INV_X1 MUL_9_mult_17_U390 ( .A(MUL_9_mult_17_n666), .ZN(MUL_9_mult_17_n511)
         );
  INV_X1 MUL_9_mult_17_U389 ( .A(MUL_9_mult_17_n665), .ZN(MUL_9_mult_17_n510)
         );
  HA_X1 MUL_9_mult_17_U101 ( .A(MUL_9_mult_17_n276), .B(MUL_9_mult_17_n288), 
        .CO(MUL_9_mult_17_n170), .S(MUL_9_mult_17_n171) );
  FA_X1 MUL_9_mult_17_U100 ( .A(MUL_9_mult_17_n287), .B(MUL_9_mult_17_n264), 
        .CI(MUL_9_mult_17_n275), .CO(MUL_9_mult_17_n168), .S(
        MUL_9_mult_17_n169) );
  HA_X1 MUL_9_mult_17_U99 ( .A(MUL_9_mult_17_n197), .B(MUL_9_mult_17_n263), 
        .CO(MUL_9_mult_17_n166), .S(MUL_9_mult_17_n167) );
  FA_X1 MUL_9_mult_17_U98 ( .A(MUL_9_mult_17_n274), .B(MUL_9_mult_17_n286), 
        .CI(MUL_9_mult_17_n167), .CO(MUL_9_mult_17_n164), .S(
        MUL_9_mult_17_n165) );
  FA_X1 MUL_9_mult_17_U97 ( .A(MUL_9_mult_17_n285), .B(MUL_9_mult_17_n251), 
        .CI(MUL_9_mult_17_n273), .CO(MUL_9_mult_17_n162), .S(
        MUL_9_mult_17_n163) );
  FA_X1 MUL_9_mult_17_U96 ( .A(MUL_9_mult_17_n166), .B(MUL_9_mult_17_n262), 
        .CI(MUL_9_mult_17_n163), .CO(MUL_9_mult_17_n160), .S(
        MUL_9_mult_17_n161) );
  HA_X1 MUL_9_mult_17_U95 ( .A(MUL_9_mult_17_n196), .B(MUL_9_mult_17_n250), 
        .CO(MUL_9_mult_17_n158), .S(MUL_9_mult_17_n159) );
  FA_X1 MUL_9_mult_17_U94 ( .A(MUL_9_mult_17_n261), .B(MUL_9_mult_17_n284), 
        .CI(MUL_9_mult_17_n272), .CO(MUL_9_mult_17_n156), .S(
        MUL_9_mult_17_n157) );
  FA_X1 MUL_9_mult_17_U93 ( .A(MUL_9_mult_17_n162), .B(MUL_9_mult_17_n159), 
        .CI(MUL_9_mult_17_n157), .CO(MUL_9_mult_17_n154), .S(
        MUL_9_mult_17_n155) );
  FA_X1 MUL_9_mult_17_U92 ( .A(MUL_9_mult_17_n260), .B(MUL_9_mult_17_n238), 
        .CI(MUL_9_mult_17_n283), .CO(MUL_9_mult_17_n152), .S(
        MUL_9_mult_17_n153) );
  FA_X1 MUL_9_mult_17_U91 ( .A(MUL_9_mult_17_n249), .B(MUL_9_mult_17_n271), 
        .CI(MUL_9_mult_17_n158), .CO(MUL_9_mult_17_n150), .S(
        MUL_9_mult_17_n151) );
  FA_X1 MUL_9_mult_17_U90 ( .A(MUL_9_mult_17_n153), .B(MUL_9_mult_17_n156), 
        .CI(MUL_9_mult_17_n151), .CO(MUL_9_mult_17_n148), .S(
        MUL_9_mult_17_n149) );
  HA_X1 MUL_9_mult_17_U89 ( .A(MUL_9_mult_17_n195), .B(MUL_9_mult_17_n237), 
        .CO(MUL_9_mult_17_n146), .S(MUL_9_mult_17_n147) );
  FA_X1 MUL_9_mult_17_U88 ( .A(MUL_9_mult_17_n248), .B(MUL_9_mult_17_n259), 
        .CI(MUL_9_mult_17_n270), .CO(MUL_9_mult_17_n144), .S(
        MUL_9_mult_17_n145) );
  FA_X1 MUL_9_mult_17_U87 ( .A(MUL_9_mult_17_n147), .B(MUL_9_mult_17_n282), 
        .CI(MUL_9_mult_17_n152), .CO(MUL_9_mult_17_n142), .S(
        MUL_9_mult_17_n143) );
  FA_X1 MUL_9_mult_17_U86 ( .A(MUL_9_mult_17_n145), .B(MUL_9_mult_17_n150), 
        .CI(MUL_9_mult_17_n143), .CO(MUL_9_mult_17_n140), .S(
        MUL_9_mult_17_n141) );
  FA_X1 MUL_9_mult_17_U85 ( .A(MUL_9_mult_17_n247), .B(MUL_9_mult_17_n225), 
        .CI(MUL_9_mult_17_n281), .CO(MUL_9_mult_17_n138), .S(
        MUL_9_mult_17_n139) );
  FA_X1 MUL_9_mult_17_U84 ( .A(MUL_9_mult_17_n236), .B(MUL_9_mult_17_n269), 
        .CI(MUL_9_mult_17_n258), .CO(MUL_9_mult_17_n136), .S(
        MUL_9_mult_17_n137) );
  FA_X1 MUL_9_mult_17_U83 ( .A(MUL_9_mult_17_n144), .B(MUL_9_mult_17_n146), 
        .CI(MUL_9_mult_17_n139), .CO(MUL_9_mult_17_n134), .S(
        MUL_9_mult_17_n135) );
  FA_X1 MUL_9_mult_17_U82 ( .A(MUL_9_mult_17_n142), .B(MUL_9_mult_17_n137), 
        .CI(MUL_9_mult_17_n135), .CO(MUL_9_mult_17_n132), .S(
        MUL_9_mult_17_n133) );
  HA_X1 MUL_9_mult_17_U81 ( .A(MUL_9_mult_17_n194), .B(MUL_9_mult_17_n224), 
        .CO(MUL_9_mult_17_n130), .S(MUL_9_mult_17_n131) );
  FA_X1 MUL_9_mult_17_U80 ( .A(MUL_9_mult_17_n235), .B(MUL_9_mult_17_n257), 
        .CI(MUL_9_mult_17_n280), .CO(MUL_9_mult_17_n128), .S(
        MUL_9_mult_17_n129) );
  FA_X1 MUL_9_mult_17_U79 ( .A(MUL_9_mult_17_n246), .B(MUL_9_mult_17_n268), 
        .CI(MUL_9_mult_17_n131), .CO(MUL_9_mult_17_n126), .S(
        MUL_9_mult_17_n127) );
  FA_X1 MUL_9_mult_17_U78 ( .A(MUL_9_mult_17_n136), .B(MUL_9_mult_17_n138), 
        .CI(MUL_9_mult_17_n129), .CO(MUL_9_mult_17_n124), .S(
        MUL_9_mult_17_n125) );
  FA_X1 MUL_9_mult_17_U77 ( .A(MUL_9_mult_17_n134), .B(MUL_9_mult_17_n127), 
        .CI(MUL_9_mult_17_n125), .CO(MUL_9_mult_17_n122), .S(
        MUL_9_mult_17_n123) );
  FA_X1 MUL_9_mult_17_U76 ( .A(MUL_9_mult_17_n234), .B(MUL_9_mult_17_n212), 
        .CI(MUL_9_mult_17_n279), .CO(MUL_9_mult_17_n120), .S(
        MUL_9_mult_17_n121) );
  FA_X1 MUL_9_mult_17_U75 ( .A(MUL_9_mult_17_n223), .B(MUL_9_mult_17_n267), 
        .CI(MUL_9_mult_17_n245), .CO(MUL_9_mult_17_n118), .S(
        MUL_9_mult_17_n119) );
  FA_X1 MUL_9_mult_17_U74 ( .A(MUL_9_mult_17_n130), .B(MUL_9_mult_17_n256), 
        .CI(MUL_9_mult_17_n128), .CO(MUL_9_mult_17_n116), .S(
        MUL_9_mult_17_n117) );
  FA_X1 MUL_9_mult_17_U73 ( .A(MUL_9_mult_17_n119), .B(MUL_9_mult_17_n121), 
        .CI(MUL_9_mult_17_n126), .CO(MUL_9_mult_17_n114), .S(
        MUL_9_mult_17_n115) );
  FA_X1 MUL_9_mult_17_U72 ( .A(MUL_9_mult_17_n117), .B(MUL_9_mult_17_n124), 
        .CI(MUL_9_mult_17_n115), .CO(MUL_9_mult_17_n112), .S(
        MUL_9_mult_17_n113) );
  FA_X1 MUL_9_mult_17_U69 ( .A(MUL_9_mult_17_n233), .B(MUL_9_mult_17_n244), 
        .CI(MUL_9_mult_17_n543), .CO(MUL_9_mult_17_n108), .S(
        MUL_9_mult_17_n109) );
  FA_X1 MUL_9_mult_17_U68 ( .A(MUL_9_mult_17_n193), .B(MUL_9_mult_17_n266), 
        .CI(MUL_9_mult_17_n255), .CO(MUL_9_mult_17_n106), .S(
        MUL_9_mult_17_n107) );
  FA_X1 MUL_9_mult_17_U67 ( .A(MUL_9_mult_17_n120), .B(MUL_9_mult_17_n111), 
        .CI(MUL_9_mult_17_n118), .CO(MUL_9_mult_17_n104), .S(
        MUL_9_mult_17_n105) );
  FA_X1 MUL_9_mult_17_U66 ( .A(MUL_9_mult_17_n109), .B(MUL_9_mult_17_n107), 
        .CI(MUL_9_mult_17_n116), .CO(MUL_9_mult_17_n102), .S(
        MUL_9_mult_17_n103) );
  FA_X1 MUL_9_mult_17_U65 ( .A(MUL_9_mult_17_n114), .B(MUL_9_mult_17_n105), 
        .CI(MUL_9_mult_17_n103), .CO(MUL_9_mult_17_n100), .S(
        MUL_9_mult_17_n101) );
  FA_X1 MUL_9_mult_17_U63 ( .A(MUL_9_mult_17_n210), .B(MUL_9_mult_17_n221), 
        .CI(MUL_9_mult_17_n254), .CO(MUL_9_mult_17_n96), .S(MUL_9_mult_17_n97)
         );
  FA_X1 MUL_9_mult_17_U62 ( .A(MUL_9_mult_17_n232), .B(MUL_9_mult_17_n243), 
        .CI(MUL_9_mult_17_n539), .CO(MUL_9_mult_17_n94), .S(MUL_9_mult_17_n95)
         );
  FA_X1 MUL_9_mult_17_U61 ( .A(MUL_9_mult_17_n108), .B(MUL_9_mult_17_n110), 
        .CI(MUL_9_mult_17_n106), .CO(MUL_9_mult_17_n92), .S(MUL_9_mult_17_n93)
         );
  FA_X1 MUL_9_mult_17_U60 ( .A(MUL_9_mult_17_n95), .B(MUL_9_mult_17_n97), .CI(
        MUL_9_mult_17_n104), .CO(MUL_9_mult_17_n90), .S(MUL_9_mult_17_n91) );
  FA_X1 MUL_9_mult_17_U59 ( .A(MUL_9_mult_17_n102), .B(MUL_9_mult_17_n93), 
        .CI(MUL_9_mult_17_n91), .CO(MUL_9_mult_17_n88), .S(MUL_9_mult_17_n89)
         );
  FA_X1 MUL_9_mult_17_U58 ( .A(MUL_9_mult_17_n98), .B(MUL_9_mult_17_n209), 
        .CI(MUL_9_mult_17_n540), .CO(MUL_9_mult_17_n86), .S(MUL_9_mult_17_n87)
         );
  FA_X1 MUL_9_mult_17_U57 ( .A(MUL_9_mult_17_n220), .B(MUL_9_mult_17_n253), 
        .CI(MUL_9_mult_17_n231), .CO(MUL_9_mult_17_n84), .S(MUL_9_mult_17_n85)
         );
  FA_X1 MUL_9_mult_17_U56 ( .A(MUL_9_mult_17_n96), .B(MUL_9_mult_17_n242), 
        .CI(MUL_9_mult_17_n94), .CO(MUL_9_mult_17_n82), .S(MUL_9_mult_17_n83)
         );
  FA_X1 MUL_9_mult_17_U55 ( .A(MUL_9_mult_17_n87), .B(MUL_9_mult_17_n85), .CI(
        MUL_9_mult_17_n92), .CO(MUL_9_mult_17_n80), .S(MUL_9_mult_17_n81) );
  FA_X1 MUL_9_mult_17_U54 ( .A(MUL_9_mult_17_n90), .B(MUL_9_mult_17_n83), .CI(
        MUL_9_mult_17_n81), .CO(MUL_9_mult_17_n78), .S(MUL_9_mult_17_n79) );
  FA_X1 MUL_9_mult_17_U52 ( .A(MUL_9_mult_17_n241), .B(MUL_9_mult_17_n219), 
        .CI(MUL_9_mult_17_n208), .CO(MUL_9_mult_17_n74), .S(MUL_9_mult_17_n75)
         );
  FA_X1 MUL_9_mult_17_U51 ( .A(MUL_9_mult_17_n534), .B(MUL_9_mult_17_n230), 
        .CI(MUL_9_mult_17_n86), .CO(MUL_9_mult_17_n72), .S(MUL_9_mult_17_n73)
         );
  FA_X1 MUL_9_mult_17_U50 ( .A(MUL_9_mult_17_n75), .B(MUL_9_mult_17_n84), .CI(
        MUL_9_mult_17_n82), .CO(MUL_9_mult_17_n70), .S(MUL_9_mult_17_n71) );
  FA_X1 MUL_9_mult_17_U49 ( .A(MUL_9_mult_17_n80), .B(MUL_9_mult_17_n73), .CI(
        MUL_9_mult_17_n71), .CO(MUL_9_mult_17_n68), .S(MUL_9_mult_17_n69) );
  FA_X1 MUL_9_mult_17_U48 ( .A(MUL_9_mult_17_n240), .B(MUL_9_mult_17_n207), 
        .CI(MUL_9_mult_17_n535), .CO(MUL_9_mult_17_n66), .S(MUL_9_mult_17_n67)
         );
  FA_X1 MUL_9_mult_17_U47 ( .A(MUL_9_mult_17_n218), .B(MUL_9_mult_17_n76), 
        .CI(MUL_9_mult_17_n229), .CO(MUL_9_mult_17_n64), .S(MUL_9_mult_17_n65)
         );
  FA_X1 MUL_9_mult_17_U46 ( .A(MUL_9_mult_17_n65), .B(MUL_9_mult_17_n74), .CI(
        MUL_9_mult_17_n67), .CO(MUL_9_mult_17_n62), .S(MUL_9_mult_17_n63) );
  FA_X1 MUL_9_mult_17_U45 ( .A(MUL_9_mult_17_n70), .B(MUL_9_mult_17_n72), .CI(
        MUL_9_mult_17_n63), .CO(MUL_9_mult_17_n60), .S(MUL_9_mult_17_n61) );
  FA_X1 MUL_9_mult_17_U43 ( .A(MUL_9_mult_17_n206), .B(MUL_9_mult_17_n217), 
        .CI(MUL_9_mult_17_n228), .CO(MUL_9_mult_17_n56), .S(MUL_9_mult_17_n57)
         );
  FA_X1 MUL_9_mult_17_U42 ( .A(MUL_9_mult_17_n66), .B(MUL_9_mult_17_n529), 
        .CI(MUL_9_mult_17_n64), .CO(MUL_9_mult_17_n54), .S(MUL_9_mult_17_n55)
         );
  FA_X1 MUL_9_mult_17_U41 ( .A(MUL_9_mult_17_n55), .B(MUL_9_mult_17_n57), .CI(
        MUL_9_mult_17_n62), .CO(MUL_9_mult_17_n52), .S(MUL_9_mult_17_n53) );
  FA_X1 MUL_9_mult_17_U40 ( .A(MUL_9_mult_17_n216), .B(MUL_9_mult_17_n205), 
        .CI(MUL_9_mult_17_n530), .CO(MUL_9_mult_17_n50), .S(MUL_9_mult_17_n51)
         );
  FA_X1 MUL_9_mult_17_U39 ( .A(MUL_9_mult_17_n58), .B(MUL_9_mult_17_n227), 
        .CI(MUL_9_mult_17_n56), .CO(MUL_9_mult_17_n48), .S(MUL_9_mult_17_n49)
         );
  FA_X1 MUL_9_mult_17_U38 ( .A(MUL_9_mult_17_n54), .B(MUL_9_mult_17_n51), .CI(
        MUL_9_mult_17_n49), .CO(MUL_9_mult_17_n46), .S(MUL_9_mult_17_n47) );
  FA_X1 MUL_9_mult_17_U36 ( .A(MUL_9_mult_17_n204), .B(MUL_9_mult_17_n215), 
        .CI(MUL_9_mult_17_n524), .CO(MUL_9_mult_17_n42), .S(MUL_9_mult_17_n43)
         );
  FA_X1 MUL_9_mult_17_U35 ( .A(MUL_9_mult_17_n43), .B(MUL_9_mult_17_n50), .CI(
        MUL_9_mult_17_n48), .CO(MUL_9_mult_17_n40), .S(MUL_9_mult_17_n41) );
  FA_X1 MUL_9_mult_17_U34 ( .A(MUL_9_mult_17_n214), .B(MUL_9_mult_17_n44), 
        .CI(MUL_9_mult_17_n525), .CO(MUL_9_mult_17_n38), .S(MUL_9_mult_17_n39)
         );
  FA_X1 MUL_9_mult_17_U33 ( .A(MUL_9_mult_17_n42), .B(MUL_9_mult_17_n203), 
        .CI(MUL_9_mult_17_n39), .CO(MUL_9_mult_17_n36), .S(MUL_9_mult_17_n37)
         );
  FA_X1 MUL_9_mult_17_U31 ( .A(MUL_9_mult_17_n518), .B(MUL_9_mult_17_n202), 
        .CI(MUL_9_mult_17_n38), .CO(MUL_9_mult_17_n32), .S(MUL_9_mult_17_n33)
         );
  FA_X1 MUL_9_mult_17_U30 ( .A(MUL_9_mult_17_n201), .B(MUL_9_mult_17_n34), 
        .CI(MUL_9_mult_17_n519), .CO(MUL_9_mult_17_n30), .S(MUL_9_mult_17_n31)
         );
  FA_X1 MUL_9_mult_17_U11 ( .A(MUL_9_mult_17_n53), .B(MUL_9_mult_17_n60), .CI(
        MUL_9_mult_17_n509), .CO(MUL_9_mult_17_n10), .S(
        TRUNCATED_MULT_RES_9__0_) );
  FA_X1 MUL_9_mult_17_U10 ( .A(MUL_9_mult_17_n47), .B(MUL_9_mult_17_n52), .CI(
        MUL_9_mult_17_n10), .CO(MUL_9_mult_17_n9), .S(TRUNCATED_MULT_RES_9__1_) );
  FA_X1 MUL_9_mult_17_U9 ( .A(MUL_9_mult_17_n41), .B(MUL_9_mult_17_n46), .CI(
        MUL_9_mult_17_n9), .CO(MUL_9_mult_17_n8), .S(TRUNCATED_MULT_RES_9__2_)
         );
  FA_X1 MUL_9_mult_17_U8 ( .A(MUL_9_mult_17_n37), .B(MUL_9_mult_17_n40), .CI(
        MUL_9_mult_17_n8), .CO(MUL_9_mult_17_n7), .S(TRUNCATED_MULT_RES_9__3_)
         );
  FA_X1 MUL_9_mult_17_U7 ( .A(MUL_9_mult_17_n33), .B(MUL_9_mult_17_n36), .CI(
        MUL_9_mult_17_n7), .CO(MUL_9_mult_17_n6), .S(TRUNCATED_MULT_RES_9__4_)
         );
  FA_X1 MUL_9_mult_17_U6 ( .A(MUL_9_mult_17_n32), .B(MUL_9_mult_17_n31), .CI(
        MUL_9_mult_17_n6), .CO(MUL_9_mult_17_n5), .S(TRUNCATED_MULT_RES_9__5_)
         );
  FA_X1 MUL_9_mult_17_U5 ( .A(MUL_9_mult_17_n30), .B(MUL_9_mult_17_n29), .CI(
        MUL_9_mult_17_n5), .CO(MUL_9_mult_17_n4), .S(TRUNCATED_MULT_RES_9__6_)
         );
  XOR2_X1 ADD_9_add_18_U2 ( .A(SUM_RESULTS_8__0_), .B(TRUNCATED_MULT_RES_9__0_), .Z(SUM_RESULTS_9__0_) );
  AND2_X1 ADD_9_add_18_U1 ( .A1(SUM_RESULTS_8__0_), .A2(
        TRUNCATED_MULT_RES_9__0_), .ZN(ADD_9_add_18_n1) );
  FA_X1 ADD_9_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_9__1_), .B(SUM_RESULTS_8__1_), .CI(ADD_9_add_18_n1), .CO(ADD_9_add_18_carry[2]), .S(SUM_RESULTS_9__1_) );
  FA_X1 ADD_9_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_9__2_), .B(SUM_RESULTS_8__2_), .CI(ADD_9_add_18_carry[2]), .CO(ADD_9_add_18_carry[3]), .S(SUM_RESULTS_9__2_) );
  FA_X1 ADD_9_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_9__3_), .B(SUM_RESULTS_8__3_), .CI(ADD_9_add_18_carry[3]), .CO(ADD_9_add_18_carry[4]), .S(SUM_RESULTS_9__3_) );
  FA_X1 ADD_9_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_9__4_), .B(SUM_RESULTS_8__4_), .CI(ADD_9_add_18_carry[4]), .CO(ADD_9_add_18_carry[5]), .S(SUM_RESULTS_9__4_) );
  FA_X1 ADD_9_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_9__5_), .B(SUM_RESULTS_8__5_), .CI(ADD_9_add_18_carry[5]), .CO(ADD_9_add_18_carry[6]), .S(SUM_RESULTS_9__5_) );
  FA_X1 ADD_9_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_9__6_), .B(SUM_RESULTS_8__6_), .CI(ADD_9_add_18_carry[6]), .CO(ADD_9_add_18_carry[7]), .S(SUM_RESULTS_9__6_) );
  FA_X1 ADD_9_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_9__7_), .B(SUM_RESULTS_8__7_), .CI(ADD_9_add_18_carry[7]), .CO(ADD_9_add_18_carry[8]), .S(SUM_RESULTS_9__7_) );
  FA_X1 ADD_9_add_18_U1_8 ( .A(TRUNCATED_MULT_RES_9__7_), .B(SUM_RESULTS_8__8_), .CI(ADD_9_add_18_carry[8]), .CO(ADD_9_add_18_carry[9]), .S(SUM_RESULTS_9__8_) );
  FA_X1 ADD_9_add_18_U1_9 ( .A(TRUNCATED_MULT_RES_9__7_), .B(
        SUM_RESULTS_8__12_), .CI(ADD_9_add_18_carry[9]), .CO(
        ADD_9_add_18_carry[10]), .S(SUM_RESULTS_9__9_) );
  FA_X1 ADD_9_add_18_U1_10 ( .A(TRUNCATED_MULT_RES_9__7_), .B(
        SUM_RESULTS_8__12_), .CI(ADD_9_add_18_carry[10]), .S(
        SUM_RESULTS_9__12_) );
  BUF_X1 SAMPLE_REG_10_U31 ( .A(n545), .Z(SAMPLE_REG_10_n42) );
  NAND2_X1 SAMPLE_REG_10_U30 ( .A1(SAMPLE_REG_10_n42), .A2(SAMPLES[13]), .ZN(
        SAMPLE_REG_10_n82) );
  OAI21_X1 SAMPLE_REG_10_U29 ( .B1(SAMPLE_REG_10_n69), .B2(SAMPLE_REG_10_n42), 
        .A(SAMPLE_REG_10_n82), .ZN(SAMPLE_REG_10_n56) );
  NAND2_X1 SAMPLE_REG_10_U28 ( .A1(SAMPLES[15]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n80) );
  OAI21_X1 SAMPLE_REG_10_U27 ( .B1(SAMPLE_REG_10_n67), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n80), .ZN(SAMPLE_REG_10_n54) );
  NAND2_X1 SAMPLE_REG_10_U26 ( .A1(SAMPLES[25]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n70) );
  OAI21_X1 SAMPLE_REG_10_U25 ( .B1(SAMPLE_REG_10_n57), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n70), .ZN(SAMPLE_REG_10_n44) );
  NAND2_X1 SAMPLE_REG_10_U24 ( .A1(SAMPLES[24]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n71) );
  OAI21_X1 SAMPLE_REG_10_U23 ( .B1(SAMPLE_REG_10_n58), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n71), .ZN(SAMPLE_REG_10_n45) );
  NAND2_X1 SAMPLE_REG_10_U22 ( .A1(SAMPLES[23]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n72) );
  OAI21_X1 SAMPLE_REG_10_U21 ( .B1(SAMPLE_REG_10_n59), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n72), .ZN(SAMPLE_REG_10_n46) );
  NAND2_X1 SAMPLE_REG_10_U20 ( .A1(SAMPLES[22]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n73) );
  OAI21_X1 SAMPLE_REG_10_U19 ( .B1(SAMPLE_REG_10_n60), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n73), .ZN(SAMPLE_REG_10_n47) );
  NAND2_X1 SAMPLE_REG_10_U18 ( .A1(SAMPLES[21]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n74) );
  OAI21_X1 SAMPLE_REG_10_U17 ( .B1(SAMPLE_REG_10_n61), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n74), .ZN(SAMPLE_REG_10_n48) );
  NAND2_X1 SAMPLE_REG_10_U16 ( .A1(SAMPLES[20]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n75) );
  OAI21_X1 SAMPLE_REG_10_U15 ( .B1(SAMPLE_REG_10_n62), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n75), .ZN(SAMPLE_REG_10_n49) );
  NAND2_X1 SAMPLE_REG_10_U14 ( .A1(SAMPLES[19]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n76) );
  OAI21_X1 SAMPLE_REG_10_U13 ( .B1(SAMPLE_REG_10_n63), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n76), .ZN(SAMPLE_REG_10_n50) );
  NAND2_X1 SAMPLE_REG_10_U12 ( .A1(SAMPLES[18]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n77) );
  OAI21_X1 SAMPLE_REG_10_U11 ( .B1(SAMPLE_REG_10_n64), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n77), .ZN(SAMPLE_REG_10_n51) );
  NAND2_X1 SAMPLE_REG_10_U10 ( .A1(SAMPLES[17]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n78) );
  OAI21_X1 SAMPLE_REG_10_U9 ( .B1(SAMPLE_REG_10_n65), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n78), .ZN(SAMPLE_REG_10_n52) );
  NAND2_X1 SAMPLE_REG_10_U8 ( .A1(SAMPLES[16]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n79) );
  OAI21_X1 SAMPLE_REG_10_U7 ( .B1(SAMPLE_REG_10_n66), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n79), .ZN(SAMPLE_REG_10_n53) );
  NAND2_X1 SAMPLE_REG_10_U6 ( .A1(SAMPLES[14]), .A2(SAMPLE_REG_10_n40), .ZN(
        SAMPLE_REG_10_n81) );
  OAI21_X1 SAMPLE_REG_10_U5 ( .B1(SAMPLE_REG_10_n68), .B2(SAMPLE_REG_10_n41), 
        .A(SAMPLE_REG_10_n81), .ZN(SAMPLE_REG_10_n55) );
  BUF_X1 SAMPLE_REG_10_U4 ( .A(n545), .Z(SAMPLE_REG_10_n41) );
  BUF_X1 SAMPLE_REG_10_U3 ( .A(n545), .Z(SAMPLE_REG_10_n40) );
  BUF_X1 SAMPLE_REG_10_U2 ( .A(n546), .Z(SAMPLE_REG_10_n43) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_1_ ( .D(SAMPLE_REG_10_n55), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[1]), .QN(SAMPLE_REG_10_n68) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_12_ ( .D(SAMPLE_REG_10_n44), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[12]), .QN(SAMPLE_REG_10_n57) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_2_ ( .D(SAMPLE_REG_10_n54), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[2]), .QN(SAMPLE_REG_10_n67) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_4_ ( .D(SAMPLE_REG_10_n52), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[4]), .QN(SAMPLE_REG_10_n65) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_6_ ( .D(SAMPLE_REG_10_n50), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[6]), .QN(SAMPLE_REG_10_n63) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_8_ ( .D(SAMPLE_REG_10_n48), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[8]), .QN(SAMPLE_REG_10_n61) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_10_ ( .D(SAMPLE_REG_10_n46), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[10]), .QN(SAMPLE_REG_10_n59) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_0_ ( .D(SAMPLE_REG_10_n56), .CK(CLK), .RN(
        n546), .Q(SAMPLES[0]), .QN(SAMPLE_REG_10_n69) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_3_ ( .D(SAMPLE_REG_10_n53), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[3]), .QN(SAMPLE_REG_10_n66) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_5_ ( .D(SAMPLE_REG_10_n51), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[5]), .QN(SAMPLE_REG_10_n64) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_7_ ( .D(SAMPLE_REG_10_n49), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[7]), .QN(SAMPLE_REG_10_n62) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_9_ ( .D(SAMPLE_REG_10_n47), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[9]), .QN(SAMPLE_REG_10_n60) );
  DFFR_X1 SAMPLE_REG_10_DOUT_reg_11_ ( .D(SAMPLE_REG_10_n45), .CK(CLK), .RN(
        SAMPLE_REG_10_n43), .Q(SAMPLES[11]), .QN(SAMPLE_REG_10_n58) );
  XOR2_X1 MUL_10_mult_17_U660 ( .A(SAMPLES[2]), .B(SAMPLES[1]), .Z(
        MUL_10_mult_17_n681) );
  NAND2_X1 MUL_10_mult_17_U659 ( .A1(SAMPLES[1]), .A2(MUL_10_mult_17_n544), 
        .ZN(MUL_10_mult_17_n571) );
  XNOR2_X1 MUL_10_mult_17_U658 ( .A(A[2]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n570) );
  OAI22_X1 MUL_10_mult_17_U657 ( .A1(A[1]), .A2(MUL_10_mult_17_n571), .B1(
        MUL_10_mult_17_n570), .B2(MUL_10_mult_17_n544), .ZN(
        MUL_10_mult_17_n683) );
  XNOR2_X1 MUL_10_mult_17_U656 ( .A(MUL_10_mult_17_n541), .B(SAMPLES[2]), .ZN(
        MUL_10_mult_17_n682) );
  NAND2_X1 MUL_10_mult_17_U655 ( .A1(MUL_10_mult_17_n542), .A2(
        MUL_10_mult_17_n682), .ZN(MUL_10_mult_17_n552) );
  NAND3_X1 MUL_10_mult_17_U654 ( .A1(MUL_10_mult_17_n681), .A2(
        MUL_10_mult_17_n546), .A3(SAMPLES[3]), .ZN(MUL_10_mult_17_n680) );
  OAI21_X1 MUL_10_mult_17_U653 ( .B1(MUL_10_mult_17_n541), .B2(
        MUL_10_mult_17_n552), .A(MUL_10_mult_17_n680), .ZN(MUL_10_mult_17_n679) );
  AOI222_X1 MUL_10_mult_17_U652 ( .A1(MUL_10_mult_17_n506), .A2(
        MUL_10_mult_17_n171), .B1(MUL_10_mult_17_n679), .B2(
        MUL_10_mult_17_n506), .C1(MUL_10_mult_17_n679), .C2(
        MUL_10_mult_17_n171), .ZN(MUL_10_mult_17_n678) );
  AOI222_X1 MUL_10_mult_17_U651 ( .A1(MUL_10_mult_17_n538), .A2(
        MUL_10_mult_17_n169), .B1(MUL_10_mult_17_n538), .B2(
        MUL_10_mult_17_n170), .C1(MUL_10_mult_17_n170), .C2(
        MUL_10_mult_17_n169), .ZN(MUL_10_mult_17_n677) );
  AOI222_X1 MUL_10_mult_17_U650 ( .A1(MUL_10_mult_17_n537), .A2(
        MUL_10_mult_17_n165), .B1(MUL_10_mult_17_n537), .B2(
        MUL_10_mult_17_n168), .C1(MUL_10_mult_17_n168), .C2(
        MUL_10_mult_17_n165), .ZN(MUL_10_mult_17_n676) );
  AOI222_X1 MUL_10_mult_17_U649 ( .A1(MUL_10_mult_17_n533), .A2(
        MUL_10_mult_17_n161), .B1(MUL_10_mult_17_n533), .B2(
        MUL_10_mult_17_n164), .C1(MUL_10_mult_17_n164), .C2(
        MUL_10_mult_17_n161), .ZN(MUL_10_mult_17_n675) );
  AOI222_X1 MUL_10_mult_17_U648 ( .A1(MUL_10_mult_17_n532), .A2(
        MUL_10_mult_17_n155), .B1(MUL_10_mult_17_n532), .B2(
        MUL_10_mult_17_n160), .C1(MUL_10_mult_17_n160), .C2(
        MUL_10_mult_17_n155), .ZN(MUL_10_mult_17_n674) );
  AOI222_X1 MUL_10_mult_17_U647 ( .A1(MUL_10_mult_17_n528), .A2(
        MUL_10_mult_17_n149), .B1(MUL_10_mult_17_n528), .B2(
        MUL_10_mult_17_n154), .C1(MUL_10_mult_17_n154), .C2(
        MUL_10_mult_17_n149), .ZN(MUL_10_mult_17_n673) );
  AOI222_X1 MUL_10_mult_17_U646 ( .A1(MUL_10_mult_17_n527), .A2(
        MUL_10_mult_17_n141), .B1(MUL_10_mult_17_n527), .B2(
        MUL_10_mult_17_n148), .C1(MUL_10_mult_17_n148), .C2(
        MUL_10_mult_17_n141), .ZN(MUL_10_mult_17_n672) );
  AOI222_X1 MUL_10_mult_17_U645 ( .A1(MUL_10_mult_17_n523), .A2(
        MUL_10_mult_17_n133), .B1(MUL_10_mult_17_n523), .B2(
        MUL_10_mult_17_n140), .C1(MUL_10_mult_17_n140), .C2(
        MUL_10_mult_17_n133), .ZN(MUL_10_mult_17_n671) );
  AOI222_X1 MUL_10_mult_17_U644 ( .A1(MUL_10_mult_17_n522), .A2(
        MUL_10_mult_17_n123), .B1(MUL_10_mult_17_n522), .B2(
        MUL_10_mult_17_n132), .C1(MUL_10_mult_17_n132), .C2(
        MUL_10_mult_17_n123), .ZN(MUL_10_mult_17_n670) );
  AOI222_X1 MUL_10_mult_17_U643 ( .A1(MUL_10_mult_17_n517), .A2(
        MUL_10_mult_17_n113), .B1(MUL_10_mult_17_n517), .B2(
        MUL_10_mult_17_n122), .C1(MUL_10_mult_17_n122), .C2(
        MUL_10_mult_17_n113), .ZN(MUL_10_mult_17_n669) );
  AOI222_X1 MUL_10_mult_17_U642 ( .A1(MUL_10_mult_17_n515), .A2(
        MUL_10_mult_17_n101), .B1(MUL_10_mult_17_n515), .B2(
        MUL_10_mult_17_n112), .C1(MUL_10_mult_17_n112), .C2(
        MUL_10_mult_17_n101), .ZN(MUL_10_mult_17_n668) );
  AOI222_X1 MUL_10_mult_17_U641 ( .A1(MUL_10_mult_17_n513), .A2(
        MUL_10_mult_17_n89), .B1(MUL_10_mult_17_n513), .B2(MUL_10_mult_17_n100), .C1(MUL_10_mult_17_n100), .C2(MUL_10_mult_17_n89), .ZN(MUL_10_mult_17_n667)
         );
  AOI222_X1 MUL_10_mult_17_U640 ( .A1(MUL_10_mult_17_n512), .A2(
        MUL_10_mult_17_n79), .B1(MUL_10_mult_17_n512), .B2(MUL_10_mult_17_n88), 
        .C1(MUL_10_mult_17_n88), .C2(MUL_10_mult_17_n79), .ZN(
        MUL_10_mult_17_n666) );
  AOI222_X1 MUL_10_mult_17_U639 ( .A1(MUL_10_mult_17_n511), .A2(
        MUL_10_mult_17_n69), .B1(MUL_10_mult_17_n511), .B2(MUL_10_mult_17_n78), 
        .C1(MUL_10_mult_17_n78), .C2(MUL_10_mult_17_n69), .ZN(
        MUL_10_mult_17_n665) );
  AOI222_X1 MUL_10_mult_17_U638 ( .A1(MUL_10_mult_17_n510), .A2(
        MUL_10_mult_17_n61), .B1(MUL_10_mult_17_n510), .B2(MUL_10_mult_17_n68), 
        .C1(MUL_10_mult_17_n68), .C2(MUL_10_mult_17_n61), .ZN(
        MUL_10_mult_17_n664) );
  XNOR2_X1 MUL_10_mult_17_U637 ( .A(A[2]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n633) );
  XNOR2_X1 MUL_10_mult_17_U636 ( .A(MUL_10_mult_17_n521), .B(SAMPLES[10]), 
        .ZN(MUL_10_mult_17_n663) );
  NAND2_X1 MUL_10_mult_17_U635 ( .A1(MUL_10_mult_17_n568), .A2(
        MUL_10_mult_17_n663), .ZN(MUL_10_mult_17_n567) );
  XNOR2_X1 MUL_10_mult_17_U634 ( .A(A[3]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n634) );
  OAI22_X1 MUL_10_mult_17_U633 ( .A1(MUL_10_mult_17_n633), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n634), .ZN(MUL_10_mult_17_n662) );
  XNOR2_X1 MUL_10_mult_17_U632 ( .A(MUL_10_mult_17_n545), .B(SAMPLES[12]), 
        .ZN(MUL_10_mult_17_n661) );
  XNOR2_X1 MUL_10_mult_17_U631 ( .A(SAMPLES[12]), .B(MUL_10_mult_17_n521), 
        .ZN(MUL_10_mult_17_n549) );
  NAND2_X1 MUL_10_mult_17_U630 ( .A1(MUL_10_mult_17_n661), .A2(
        MUL_10_mult_17_n549), .ZN(MUL_10_mult_17_n660) );
  NAND2_X1 MUL_10_mult_17_U629 ( .A1(MUL_10_mult_17_n520), .A2(
        MUL_10_mult_17_n660), .ZN(MUL_10_mult_17_n110) );
  XNOR2_X1 MUL_10_mult_17_U628 ( .A(MUL_10_mult_17_n660), .B(
        MUL_10_mult_17_n520), .ZN(MUL_10_mult_17_n111) );
  NOR3_X1 MUL_10_mult_17_U627 ( .A1(MUL_10_mult_17_n514), .A2(A[0]), .A3(
        MUL_10_mult_17_n516), .ZN(MUL_10_mult_17_n193) );
  OR3_X1 MUL_10_mult_17_U626 ( .A1(MUL_10_mult_17_n568), .A2(A[0]), .A3(
        MUL_10_mult_17_n521), .ZN(MUL_10_mult_17_n659) );
  OAI21_X1 MUL_10_mult_17_U625 ( .B1(MUL_10_mult_17_n521), .B2(
        MUL_10_mult_17_n567), .A(MUL_10_mult_17_n659), .ZN(MUL_10_mult_17_n194) );
  XNOR2_X1 MUL_10_mult_17_U624 ( .A(MUL_10_mult_17_n526), .B(SAMPLES[8]), .ZN(
        MUL_10_mult_17_n658) );
  NAND2_X1 MUL_10_mult_17_U623 ( .A1(MUL_10_mult_17_n564), .A2(
        MUL_10_mult_17_n658), .ZN(MUL_10_mult_17_n563) );
  OR3_X1 MUL_10_mult_17_U622 ( .A1(MUL_10_mult_17_n564), .A2(A[0]), .A3(
        MUL_10_mult_17_n526), .ZN(MUL_10_mult_17_n657) );
  OAI21_X1 MUL_10_mult_17_U621 ( .B1(MUL_10_mult_17_n526), .B2(
        MUL_10_mult_17_n563), .A(MUL_10_mult_17_n657), .ZN(MUL_10_mult_17_n195) );
  XNOR2_X1 MUL_10_mult_17_U620 ( .A(MUL_10_mult_17_n531), .B(SAMPLES[6]), .ZN(
        MUL_10_mult_17_n656) );
  NAND2_X1 MUL_10_mult_17_U619 ( .A1(MUL_10_mult_17_n560), .A2(
        MUL_10_mult_17_n656), .ZN(MUL_10_mult_17_n559) );
  OR3_X1 MUL_10_mult_17_U618 ( .A1(MUL_10_mult_17_n560), .A2(A[0]), .A3(
        MUL_10_mult_17_n531), .ZN(MUL_10_mult_17_n655) );
  OAI21_X1 MUL_10_mult_17_U617 ( .B1(MUL_10_mult_17_n531), .B2(
        MUL_10_mult_17_n559), .A(MUL_10_mult_17_n655), .ZN(MUL_10_mult_17_n196) );
  XNOR2_X1 MUL_10_mult_17_U616 ( .A(MUL_10_mult_17_n536), .B(SAMPLES[4]), .ZN(
        MUL_10_mult_17_n654) );
  NAND2_X1 MUL_10_mult_17_U615 ( .A1(MUL_10_mult_17_n556), .A2(
        MUL_10_mult_17_n654), .ZN(MUL_10_mult_17_n555) );
  OR3_X1 MUL_10_mult_17_U614 ( .A1(MUL_10_mult_17_n556), .A2(A[0]), .A3(
        MUL_10_mult_17_n536), .ZN(MUL_10_mult_17_n653) );
  OAI21_X1 MUL_10_mult_17_U613 ( .B1(MUL_10_mult_17_n536), .B2(
        MUL_10_mult_17_n555), .A(MUL_10_mult_17_n653), .ZN(MUL_10_mult_17_n197) );
  XNOR2_X1 MUL_10_mult_17_U612 ( .A(A[11]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n652) );
  NOR2_X1 MUL_10_mult_17_U611 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n652), .ZN(MUL_10_mult_17_n201) );
  XNOR2_X1 MUL_10_mult_17_U610 ( .A(A[10]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n651) );
  NOR2_X1 MUL_10_mult_17_U609 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n651), .ZN(MUL_10_mult_17_n202) );
  XNOR2_X1 MUL_10_mult_17_U608 ( .A(A[9]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n650) );
  NOR2_X1 MUL_10_mult_17_U607 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n650), .ZN(MUL_10_mult_17_n203) );
  XNOR2_X1 MUL_10_mult_17_U606 ( .A(A[8]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n649) );
  NOR2_X1 MUL_10_mult_17_U605 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n649), .ZN(MUL_10_mult_17_n204) );
  XNOR2_X1 MUL_10_mult_17_U604 ( .A(A[7]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n648) );
  NOR2_X1 MUL_10_mult_17_U603 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n648), .ZN(MUL_10_mult_17_n205) );
  XNOR2_X1 MUL_10_mult_17_U602 ( .A(A[6]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n647) );
  NOR2_X1 MUL_10_mult_17_U601 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n647), .ZN(MUL_10_mult_17_n206) );
  XNOR2_X1 MUL_10_mult_17_U600 ( .A(A[5]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n646) );
  NOR2_X1 MUL_10_mult_17_U599 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n646), .ZN(MUL_10_mult_17_n207) );
  XNOR2_X1 MUL_10_mult_17_U598 ( .A(A[4]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n645) );
  NOR2_X1 MUL_10_mult_17_U597 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n645), .ZN(MUL_10_mult_17_n208) );
  XNOR2_X1 MUL_10_mult_17_U596 ( .A(A[3]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n644) );
  NOR2_X1 MUL_10_mult_17_U595 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n644), .ZN(MUL_10_mult_17_n209) );
  XNOR2_X1 MUL_10_mult_17_U594 ( .A(A[2]), .B(SAMPLES[12]), .ZN(
        MUL_10_mult_17_n643) );
  NOR2_X1 MUL_10_mult_17_U593 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n643), .ZN(MUL_10_mult_17_n210) );
  NOR2_X1 MUL_10_mult_17_U592 ( .A1(MUL_10_mult_17_n516), .A2(
        MUL_10_mult_17_n546), .ZN(MUL_10_mult_17_n212) );
  XNOR2_X1 MUL_10_mult_17_U591 ( .A(A[12]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n569) );
  OAI22_X1 MUL_10_mult_17_U590 ( .A1(MUL_10_mult_17_n569), .A2(
        MUL_10_mult_17_n568), .B1(MUL_10_mult_17_n567), .B2(
        MUL_10_mult_17_n569), .ZN(MUL_10_mult_17_n642) );
  XNOR2_X1 MUL_10_mult_17_U589 ( .A(A[10]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n641) );
  XNOR2_X1 MUL_10_mult_17_U588 ( .A(A[11]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n566) );
  OAI22_X1 MUL_10_mult_17_U587 ( .A1(MUL_10_mult_17_n641), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n566), .ZN(MUL_10_mult_17_n214) );
  XNOR2_X1 MUL_10_mult_17_U586 ( .A(A[9]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n640) );
  OAI22_X1 MUL_10_mult_17_U585 ( .A1(MUL_10_mult_17_n640), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n641), .ZN(MUL_10_mult_17_n215) );
  XNOR2_X1 MUL_10_mult_17_U584 ( .A(A[8]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n639) );
  OAI22_X1 MUL_10_mult_17_U583 ( .A1(MUL_10_mult_17_n639), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n640), .ZN(MUL_10_mult_17_n216) );
  XNOR2_X1 MUL_10_mult_17_U582 ( .A(A[7]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n638) );
  OAI22_X1 MUL_10_mult_17_U581 ( .A1(MUL_10_mult_17_n638), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n639), .ZN(MUL_10_mult_17_n217) );
  XNOR2_X1 MUL_10_mult_17_U580 ( .A(A[6]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n637) );
  OAI22_X1 MUL_10_mult_17_U579 ( .A1(MUL_10_mult_17_n637), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n638), .ZN(MUL_10_mult_17_n218) );
  XNOR2_X1 MUL_10_mult_17_U578 ( .A(A[5]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n636) );
  OAI22_X1 MUL_10_mult_17_U577 ( .A1(MUL_10_mult_17_n636), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n637), .ZN(MUL_10_mult_17_n219) );
  XNOR2_X1 MUL_10_mult_17_U576 ( .A(A[4]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n635) );
  OAI22_X1 MUL_10_mult_17_U575 ( .A1(MUL_10_mult_17_n635), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n636), .ZN(MUL_10_mult_17_n220) );
  OAI22_X1 MUL_10_mult_17_U574 ( .A1(MUL_10_mult_17_n634), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n635), .ZN(MUL_10_mult_17_n221) );
  XNOR2_X1 MUL_10_mult_17_U573 ( .A(A[1]), .B(SAMPLES[11]), .ZN(
        MUL_10_mult_17_n632) );
  OAI22_X1 MUL_10_mult_17_U572 ( .A1(MUL_10_mult_17_n632), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n633), .ZN(MUL_10_mult_17_n223) );
  XNOR2_X1 MUL_10_mult_17_U571 ( .A(SAMPLES[11]), .B(A[0]), .ZN(
        MUL_10_mult_17_n631) );
  OAI22_X1 MUL_10_mult_17_U570 ( .A1(MUL_10_mult_17_n631), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n632), .ZN(MUL_10_mult_17_n224) );
  NOR2_X1 MUL_10_mult_17_U569 ( .A1(MUL_10_mult_17_n568), .A2(
        MUL_10_mult_17_n546), .ZN(MUL_10_mult_17_n225) );
  XNOR2_X1 MUL_10_mult_17_U568 ( .A(A[12]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n565) );
  OAI22_X1 MUL_10_mult_17_U567 ( .A1(MUL_10_mult_17_n565), .A2(
        MUL_10_mult_17_n564), .B1(MUL_10_mult_17_n563), .B2(
        MUL_10_mult_17_n565), .ZN(MUL_10_mult_17_n630) );
  XNOR2_X1 MUL_10_mult_17_U566 ( .A(A[10]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n629) );
  XNOR2_X1 MUL_10_mult_17_U565 ( .A(A[11]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n562) );
  OAI22_X1 MUL_10_mult_17_U564 ( .A1(MUL_10_mult_17_n629), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n562), .ZN(MUL_10_mult_17_n227) );
  XNOR2_X1 MUL_10_mult_17_U563 ( .A(A[9]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n628) );
  OAI22_X1 MUL_10_mult_17_U562 ( .A1(MUL_10_mult_17_n628), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n629), .ZN(MUL_10_mult_17_n228) );
  XNOR2_X1 MUL_10_mult_17_U561 ( .A(A[8]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n627) );
  OAI22_X1 MUL_10_mult_17_U560 ( .A1(MUL_10_mult_17_n627), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n628), .ZN(MUL_10_mult_17_n229) );
  XNOR2_X1 MUL_10_mult_17_U559 ( .A(A[7]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n626) );
  OAI22_X1 MUL_10_mult_17_U558 ( .A1(MUL_10_mult_17_n626), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n627), .ZN(MUL_10_mult_17_n230) );
  XNOR2_X1 MUL_10_mult_17_U557 ( .A(A[6]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n625) );
  OAI22_X1 MUL_10_mult_17_U556 ( .A1(MUL_10_mult_17_n625), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n626), .ZN(MUL_10_mult_17_n231) );
  XNOR2_X1 MUL_10_mult_17_U555 ( .A(A[5]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n624) );
  OAI22_X1 MUL_10_mult_17_U554 ( .A1(MUL_10_mult_17_n624), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n625), .ZN(MUL_10_mult_17_n232) );
  XNOR2_X1 MUL_10_mult_17_U553 ( .A(A[4]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n623) );
  OAI22_X1 MUL_10_mult_17_U552 ( .A1(MUL_10_mult_17_n623), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n624), .ZN(MUL_10_mult_17_n233) );
  XNOR2_X1 MUL_10_mult_17_U551 ( .A(A[3]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n622) );
  OAI22_X1 MUL_10_mult_17_U550 ( .A1(MUL_10_mult_17_n622), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n623), .ZN(MUL_10_mult_17_n234) );
  XNOR2_X1 MUL_10_mult_17_U549 ( .A(A[2]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n621) );
  OAI22_X1 MUL_10_mult_17_U548 ( .A1(MUL_10_mult_17_n621), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n622), .ZN(MUL_10_mult_17_n235) );
  XNOR2_X1 MUL_10_mult_17_U547 ( .A(A[1]), .B(SAMPLES[9]), .ZN(
        MUL_10_mult_17_n620) );
  OAI22_X1 MUL_10_mult_17_U546 ( .A1(MUL_10_mult_17_n620), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n621), .ZN(MUL_10_mult_17_n236) );
  XNOR2_X1 MUL_10_mult_17_U545 ( .A(SAMPLES[9]), .B(A[0]), .ZN(
        MUL_10_mult_17_n619) );
  OAI22_X1 MUL_10_mult_17_U544 ( .A1(MUL_10_mult_17_n619), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n620), .ZN(MUL_10_mult_17_n237) );
  NOR2_X1 MUL_10_mult_17_U543 ( .A1(MUL_10_mult_17_n564), .A2(
        MUL_10_mult_17_n546), .ZN(MUL_10_mult_17_n238) );
  XNOR2_X1 MUL_10_mult_17_U542 ( .A(A[12]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n561) );
  OAI22_X1 MUL_10_mult_17_U541 ( .A1(MUL_10_mult_17_n561), .A2(
        MUL_10_mult_17_n560), .B1(MUL_10_mult_17_n559), .B2(
        MUL_10_mult_17_n561), .ZN(MUL_10_mult_17_n618) );
  XNOR2_X1 MUL_10_mult_17_U540 ( .A(A[10]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n617) );
  XNOR2_X1 MUL_10_mult_17_U539 ( .A(A[11]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n558) );
  OAI22_X1 MUL_10_mult_17_U538 ( .A1(MUL_10_mult_17_n617), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n558), .ZN(MUL_10_mult_17_n240) );
  XNOR2_X1 MUL_10_mult_17_U537 ( .A(A[9]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n616) );
  OAI22_X1 MUL_10_mult_17_U536 ( .A1(MUL_10_mult_17_n616), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n617), .ZN(MUL_10_mult_17_n241) );
  XNOR2_X1 MUL_10_mult_17_U535 ( .A(A[8]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n615) );
  OAI22_X1 MUL_10_mult_17_U534 ( .A1(MUL_10_mult_17_n615), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n616), .ZN(MUL_10_mult_17_n242) );
  XNOR2_X1 MUL_10_mult_17_U533 ( .A(A[7]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n614) );
  OAI22_X1 MUL_10_mult_17_U532 ( .A1(MUL_10_mult_17_n614), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n615), .ZN(MUL_10_mult_17_n243) );
  XNOR2_X1 MUL_10_mult_17_U531 ( .A(A[6]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n613) );
  OAI22_X1 MUL_10_mult_17_U530 ( .A1(MUL_10_mult_17_n613), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n614), .ZN(MUL_10_mult_17_n244) );
  XNOR2_X1 MUL_10_mult_17_U529 ( .A(A[5]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n612) );
  OAI22_X1 MUL_10_mult_17_U528 ( .A1(MUL_10_mult_17_n612), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n613), .ZN(MUL_10_mult_17_n245) );
  XNOR2_X1 MUL_10_mult_17_U527 ( .A(A[4]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n611) );
  OAI22_X1 MUL_10_mult_17_U526 ( .A1(MUL_10_mult_17_n611), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n612), .ZN(MUL_10_mult_17_n246) );
  XNOR2_X1 MUL_10_mult_17_U525 ( .A(A[3]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n610) );
  OAI22_X1 MUL_10_mult_17_U524 ( .A1(MUL_10_mult_17_n610), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n611), .ZN(MUL_10_mult_17_n247) );
  XNOR2_X1 MUL_10_mult_17_U523 ( .A(A[2]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n609) );
  OAI22_X1 MUL_10_mult_17_U522 ( .A1(MUL_10_mult_17_n609), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n610), .ZN(MUL_10_mult_17_n248) );
  XNOR2_X1 MUL_10_mult_17_U521 ( .A(A[1]), .B(SAMPLES[7]), .ZN(
        MUL_10_mult_17_n608) );
  OAI22_X1 MUL_10_mult_17_U520 ( .A1(MUL_10_mult_17_n608), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n609), .ZN(MUL_10_mult_17_n249) );
  XNOR2_X1 MUL_10_mult_17_U519 ( .A(SAMPLES[7]), .B(A[0]), .ZN(
        MUL_10_mult_17_n607) );
  OAI22_X1 MUL_10_mult_17_U518 ( .A1(MUL_10_mult_17_n607), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n608), .ZN(MUL_10_mult_17_n250) );
  NOR2_X1 MUL_10_mult_17_U517 ( .A1(MUL_10_mult_17_n560), .A2(
        MUL_10_mult_17_n546), .ZN(MUL_10_mult_17_n251) );
  XNOR2_X1 MUL_10_mult_17_U516 ( .A(A[12]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n557) );
  OAI22_X1 MUL_10_mult_17_U515 ( .A1(MUL_10_mult_17_n557), .A2(
        MUL_10_mult_17_n556), .B1(MUL_10_mult_17_n555), .B2(
        MUL_10_mult_17_n557), .ZN(MUL_10_mult_17_n606) );
  XNOR2_X1 MUL_10_mult_17_U514 ( .A(A[10]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n605) );
  XNOR2_X1 MUL_10_mult_17_U513 ( .A(A[11]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n554) );
  OAI22_X1 MUL_10_mult_17_U512 ( .A1(MUL_10_mult_17_n605), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n554), .ZN(MUL_10_mult_17_n253) );
  XNOR2_X1 MUL_10_mult_17_U511 ( .A(A[9]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n604) );
  OAI22_X1 MUL_10_mult_17_U510 ( .A1(MUL_10_mult_17_n604), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n605), .ZN(MUL_10_mult_17_n254) );
  XNOR2_X1 MUL_10_mult_17_U509 ( .A(A[8]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n603) );
  OAI22_X1 MUL_10_mult_17_U508 ( .A1(MUL_10_mult_17_n603), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n604), .ZN(MUL_10_mult_17_n255) );
  XNOR2_X1 MUL_10_mult_17_U507 ( .A(A[7]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n602) );
  OAI22_X1 MUL_10_mult_17_U506 ( .A1(MUL_10_mult_17_n602), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n603), .ZN(MUL_10_mult_17_n256) );
  XNOR2_X1 MUL_10_mult_17_U505 ( .A(A[6]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n601) );
  OAI22_X1 MUL_10_mult_17_U504 ( .A1(MUL_10_mult_17_n601), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n602), .ZN(MUL_10_mult_17_n257) );
  XNOR2_X1 MUL_10_mult_17_U503 ( .A(A[5]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n600) );
  OAI22_X1 MUL_10_mult_17_U502 ( .A1(MUL_10_mult_17_n600), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n601), .ZN(MUL_10_mult_17_n258) );
  XNOR2_X1 MUL_10_mult_17_U501 ( .A(A[4]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n599) );
  OAI22_X1 MUL_10_mult_17_U500 ( .A1(MUL_10_mult_17_n599), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n600), .ZN(MUL_10_mult_17_n259) );
  XNOR2_X1 MUL_10_mult_17_U499 ( .A(A[3]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n598) );
  OAI22_X1 MUL_10_mult_17_U498 ( .A1(MUL_10_mult_17_n598), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n599), .ZN(MUL_10_mult_17_n260) );
  XNOR2_X1 MUL_10_mult_17_U497 ( .A(A[2]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n597) );
  OAI22_X1 MUL_10_mult_17_U496 ( .A1(MUL_10_mult_17_n597), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n598), .ZN(MUL_10_mult_17_n261) );
  XNOR2_X1 MUL_10_mult_17_U495 ( .A(A[1]), .B(SAMPLES[5]), .ZN(
        MUL_10_mult_17_n596) );
  OAI22_X1 MUL_10_mult_17_U494 ( .A1(MUL_10_mult_17_n596), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n597), .ZN(MUL_10_mult_17_n262) );
  XNOR2_X1 MUL_10_mult_17_U493 ( .A(SAMPLES[5]), .B(A[0]), .ZN(
        MUL_10_mult_17_n595) );
  OAI22_X1 MUL_10_mult_17_U492 ( .A1(MUL_10_mult_17_n595), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n596), .ZN(MUL_10_mult_17_n263) );
  NOR2_X1 MUL_10_mult_17_U491 ( .A1(MUL_10_mult_17_n556), .A2(
        MUL_10_mult_17_n546), .ZN(MUL_10_mult_17_n264) );
  XOR2_X1 MUL_10_mult_17_U490 ( .A(A[12]), .B(MUL_10_mult_17_n541), .Z(
        MUL_10_mult_17_n553) );
  OAI22_X1 MUL_10_mult_17_U489 ( .A1(MUL_10_mult_17_n553), .A2(
        MUL_10_mult_17_n542), .B1(MUL_10_mult_17_n552), .B2(
        MUL_10_mult_17_n553), .ZN(MUL_10_mult_17_n594) );
  XNOR2_X1 MUL_10_mult_17_U488 ( .A(A[10]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n593) );
  XNOR2_X1 MUL_10_mult_17_U487 ( .A(A[11]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n551) );
  OAI22_X1 MUL_10_mult_17_U486 ( .A1(MUL_10_mult_17_n593), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n551), .ZN(MUL_10_mult_17_n266) );
  XNOR2_X1 MUL_10_mult_17_U485 ( .A(A[9]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n592) );
  OAI22_X1 MUL_10_mult_17_U484 ( .A1(MUL_10_mult_17_n592), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n593), .ZN(MUL_10_mult_17_n267) );
  XNOR2_X1 MUL_10_mult_17_U483 ( .A(A[8]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n591) );
  OAI22_X1 MUL_10_mult_17_U482 ( .A1(MUL_10_mult_17_n591), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n592), .ZN(MUL_10_mult_17_n268) );
  XNOR2_X1 MUL_10_mult_17_U481 ( .A(A[7]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n590) );
  OAI22_X1 MUL_10_mult_17_U480 ( .A1(MUL_10_mult_17_n590), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n591), .ZN(MUL_10_mult_17_n269) );
  XNOR2_X1 MUL_10_mult_17_U479 ( .A(A[6]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n589) );
  OAI22_X1 MUL_10_mult_17_U478 ( .A1(MUL_10_mult_17_n589), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n590), .ZN(MUL_10_mult_17_n270) );
  XNOR2_X1 MUL_10_mult_17_U477 ( .A(A[5]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n588) );
  OAI22_X1 MUL_10_mult_17_U476 ( .A1(MUL_10_mult_17_n588), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n589), .ZN(MUL_10_mult_17_n271) );
  XNOR2_X1 MUL_10_mult_17_U475 ( .A(A[4]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n587) );
  OAI22_X1 MUL_10_mult_17_U474 ( .A1(MUL_10_mult_17_n587), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n588), .ZN(MUL_10_mult_17_n272) );
  XNOR2_X1 MUL_10_mult_17_U473 ( .A(A[3]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n586) );
  OAI22_X1 MUL_10_mult_17_U472 ( .A1(MUL_10_mult_17_n586), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n587), .ZN(MUL_10_mult_17_n273) );
  XNOR2_X1 MUL_10_mult_17_U471 ( .A(A[2]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n585) );
  OAI22_X1 MUL_10_mult_17_U470 ( .A1(MUL_10_mult_17_n585), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n586), .ZN(MUL_10_mult_17_n274) );
  XNOR2_X1 MUL_10_mult_17_U469 ( .A(A[1]), .B(SAMPLES[3]), .ZN(
        MUL_10_mult_17_n584) );
  OAI22_X1 MUL_10_mult_17_U468 ( .A1(MUL_10_mult_17_n584), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n585), .ZN(MUL_10_mult_17_n275) );
  XNOR2_X1 MUL_10_mult_17_U467 ( .A(SAMPLES[3]), .B(A[0]), .ZN(
        MUL_10_mult_17_n583) );
  OAI22_X1 MUL_10_mult_17_U466 ( .A1(MUL_10_mult_17_n583), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n584), .ZN(MUL_10_mult_17_n276) );
  XNOR2_X1 MUL_10_mult_17_U465 ( .A(A[12]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n581) );
  OAI22_X1 MUL_10_mult_17_U464 ( .A1(MUL_10_mult_17_n544), .A2(
        MUL_10_mult_17_n581), .B1(MUL_10_mult_17_n571), .B2(
        MUL_10_mult_17_n581), .ZN(MUL_10_mult_17_n582) );
  XNOR2_X1 MUL_10_mult_17_U463 ( .A(A[11]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n580) );
  OAI22_X1 MUL_10_mult_17_U462 ( .A1(MUL_10_mult_17_n580), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n581), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n279) );
  XNOR2_X1 MUL_10_mult_17_U461 ( .A(A[10]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n579) );
  OAI22_X1 MUL_10_mult_17_U460 ( .A1(MUL_10_mult_17_n579), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n580), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n280) );
  XNOR2_X1 MUL_10_mult_17_U459 ( .A(A[9]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n578) );
  OAI22_X1 MUL_10_mult_17_U458 ( .A1(MUL_10_mult_17_n578), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n579), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n281) );
  XNOR2_X1 MUL_10_mult_17_U457 ( .A(A[8]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n577) );
  OAI22_X1 MUL_10_mult_17_U456 ( .A1(MUL_10_mult_17_n577), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n578), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n282) );
  XNOR2_X1 MUL_10_mult_17_U455 ( .A(A[7]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n576) );
  OAI22_X1 MUL_10_mult_17_U454 ( .A1(MUL_10_mult_17_n576), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n577), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n283) );
  XNOR2_X1 MUL_10_mult_17_U453 ( .A(A[6]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n575) );
  OAI22_X1 MUL_10_mult_17_U452 ( .A1(MUL_10_mult_17_n575), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n576), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n284) );
  XNOR2_X1 MUL_10_mult_17_U451 ( .A(A[5]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n574) );
  OAI22_X1 MUL_10_mult_17_U450 ( .A1(MUL_10_mult_17_n574), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n575), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n285) );
  XNOR2_X1 MUL_10_mult_17_U449 ( .A(A[4]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n573) );
  OAI22_X1 MUL_10_mult_17_U448 ( .A1(MUL_10_mult_17_n573), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n574), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n286) );
  XNOR2_X1 MUL_10_mult_17_U447 ( .A(A[3]), .B(SAMPLES[1]), .ZN(
        MUL_10_mult_17_n572) );
  OAI22_X1 MUL_10_mult_17_U446 ( .A1(MUL_10_mult_17_n572), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n573), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n287) );
  OAI22_X1 MUL_10_mult_17_U445 ( .A1(MUL_10_mult_17_n570), .A2(
        MUL_10_mult_17_n571), .B1(MUL_10_mult_17_n572), .B2(
        MUL_10_mult_17_n544), .ZN(MUL_10_mult_17_n288) );
  XNOR2_X1 MUL_10_mult_17_U444 ( .A(A[12]), .B(MUL_10_mult_17_n514), .ZN(
        MUL_10_mult_17_n550) );
  NAND2_X1 MUL_10_mult_17_U443 ( .A1(MUL_10_mult_17_n550), .A2(
        MUL_10_mult_17_n549), .ZN(MUL_10_mult_17_n29) );
  OAI22_X1 MUL_10_mult_17_U442 ( .A1(MUL_10_mult_17_n566), .A2(
        MUL_10_mult_17_n567), .B1(MUL_10_mult_17_n568), .B2(
        MUL_10_mult_17_n569), .ZN(MUL_10_mult_17_n34) );
  OAI22_X1 MUL_10_mult_17_U441 ( .A1(MUL_10_mult_17_n562), .A2(
        MUL_10_mult_17_n563), .B1(MUL_10_mult_17_n564), .B2(
        MUL_10_mult_17_n565), .ZN(MUL_10_mult_17_n44) );
  OAI22_X1 MUL_10_mult_17_U440 ( .A1(MUL_10_mult_17_n558), .A2(
        MUL_10_mult_17_n559), .B1(MUL_10_mult_17_n560), .B2(
        MUL_10_mult_17_n561), .ZN(MUL_10_mult_17_n58) );
  OAI22_X1 MUL_10_mult_17_U439 ( .A1(MUL_10_mult_17_n554), .A2(
        MUL_10_mult_17_n555), .B1(MUL_10_mult_17_n556), .B2(
        MUL_10_mult_17_n557), .ZN(MUL_10_mult_17_n76) );
  OAI22_X1 MUL_10_mult_17_U438 ( .A1(MUL_10_mult_17_n551), .A2(
        MUL_10_mult_17_n552), .B1(MUL_10_mult_17_n542), .B2(
        MUL_10_mult_17_n553), .ZN(MUL_10_mult_17_n98) );
  NOR2_X1 MUL_10_mult_17_U437 ( .A1(MUL_10_mult_17_n544), .A2(
        MUL_10_mult_17_n546), .ZN(MUL_10_O_0_) );
  XOR2_X1 MUL_10_mult_17_U436 ( .A(MUL_10_mult_17_n29), .B(MUL_10_mult_17_n4), 
        .Z(MUL_10_mult_17_n547) );
  AND2_X1 MUL_10_mult_17_U435 ( .A1(MUL_10_mult_17_n549), .A2(
        MUL_10_mult_17_n550), .ZN(MUL_10_mult_17_n548) );
  XOR2_X1 MUL_10_mult_17_U434 ( .A(MUL_10_mult_17_n547), .B(
        MUL_10_mult_17_n548), .Z(TRUNCATED_MULT_RES_10__7_) );
  XOR2_X2 MUL_10_mult_17_U433 ( .A(SAMPLES[10]), .B(MUL_10_mult_17_n526), .Z(
        MUL_10_mult_17_n568) );
  XOR2_X2 MUL_10_mult_17_U432 ( .A(SAMPLES[8]), .B(MUL_10_mult_17_n531), .Z(
        MUL_10_mult_17_n564) );
  XOR2_X2 MUL_10_mult_17_U431 ( .A(SAMPLES[6]), .B(MUL_10_mult_17_n536), .Z(
        MUL_10_mult_17_n560) );
  XOR2_X2 MUL_10_mult_17_U430 ( .A(SAMPLES[4]), .B(MUL_10_mult_17_n541), .Z(
        MUL_10_mult_17_n556) );
  INV_X1 MUL_10_mult_17_U429 ( .A(MUL_10_mult_17_n642), .ZN(
        MUL_10_mult_17_n519) );
  INV_X1 MUL_10_mult_17_U428 ( .A(MUL_10_mult_17_n34), .ZN(MUL_10_mult_17_n518) );
  INV_X1 MUL_10_mult_17_U427 ( .A(MUL_10_mult_17_n594), .ZN(
        MUL_10_mult_17_n540) );
  INV_X1 MUL_10_mult_17_U426 ( .A(SAMPLES[12]), .ZN(MUL_10_mult_17_n514) );
  INV_X1 MUL_10_mult_17_U425 ( .A(SAMPLES[11]), .ZN(MUL_10_mult_17_n521) );
  INV_X1 MUL_10_mult_17_U424 ( .A(A[1]), .ZN(MUL_10_mult_17_n545) );
  AND3_X1 MUL_10_mult_17_U423 ( .A1(MUL_10_mult_17_n683), .A2(
        MUL_10_mult_17_n545), .A3(SAMPLES[1]), .ZN(MUL_10_mult_17_n508) );
  AND2_X1 MUL_10_mult_17_U422 ( .A1(MUL_10_mult_17_n681), .A2(
        MUL_10_mult_17_n683), .ZN(MUL_10_mult_17_n507) );
  MUX2_X1 MUL_10_mult_17_U421 ( .A(MUL_10_mult_17_n507), .B(
        MUL_10_mult_17_n508), .S(MUL_10_mult_17_n546), .Z(MUL_10_mult_17_n506)
         );
  INV_X1 MUL_10_mult_17_U420 ( .A(A[0]), .ZN(MUL_10_mult_17_n546) );
  INV_X1 MUL_10_mult_17_U419 ( .A(SAMPLES[9]), .ZN(MUL_10_mult_17_n526) );
  INV_X1 MUL_10_mult_17_U418 ( .A(SAMPLES[5]), .ZN(MUL_10_mult_17_n536) );
  INV_X1 MUL_10_mult_17_U417 ( .A(SAMPLES[7]), .ZN(MUL_10_mult_17_n531) );
  INV_X1 MUL_10_mult_17_U416 ( .A(SAMPLES[3]), .ZN(MUL_10_mult_17_n541) );
  INV_X1 MUL_10_mult_17_U415 ( .A(SAMPLES[0]), .ZN(MUL_10_mult_17_n544) );
  INV_X1 MUL_10_mult_17_U414 ( .A(MUL_10_mult_17_n630), .ZN(
        MUL_10_mult_17_n525) );
  INV_X1 MUL_10_mult_17_U413 ( .A(MUL_10_mult_17_n618), .ZN(
        MUL_10_mult_17_n530) );
  INV_X1 MUL_10_mult_17_U412 ( .A(MUL_10_mult_17_n44), .ZN(MUL_10_mult_17_n524) );
  INV_X1 MUL_10_mult_17_U411 ( .A(MUL_10_mult_17_n76), .ZN(MUL_10_mult_17_n534) );
  INV_X1 MUL_10_mult_17_U410 ( .A(MUL_10_mult_17_n606), .ZN(
        MUL_10_mult_17_n535) );
  INV_X1 MUL_10_mult_17_U409 ( .A(MUL_10_mult_17_n98), .ZN(MUL_10_mult_17_n539) );
  INV_X1 MUL_10_mult_17_U408 ( .A(MUL_10_mult_17_n582), .ZN(
        MUL_10_mult_17_n543) );
  INV_X1 MUL_10_mult_17_U407 ( .A(MUL_10_mult_17_n549), .ZN(
        MUL_10_mult_17_n516) );
  INV_X1 MUL_10_mult_17_U406 ( .A(MUL_10_mult_17_n662), .ZN(
        MUL_10_mult_17_n520) );
  INV_X1 MUL_10_mult_17_U405 ( .A(MUL_10_mult_17_n681), .ZN(
        MUL_10_mult_17_n542) );
  INV_X1 MUL_10_mult_17_U404 ( .A(MUL_10_mult_17_n678), .ZN(
        MUL_10_mult_17_n538) );
  INV_X1 MUL_10_mult_17_U403 ( .A(MUL_10_mult_17_n677), .ZN(
        MUL_10_mult_17_n537) );
  INV_X1 MUL_10_mult_17_U402 ( .A(MUL_10_mult_17_n58), .ZN(MUL_10_mult_17_n529) );
  INV_X1 MUL_10_mult_17_U401 ( .A(MUL_10_mult_17_n676), .ZN(
        MUL_10_mult_17_n533) );
  INV_X1 MUL_10_mult_17_U400 ( .A(MUL_10_mult_17_n675), .ZN(
        MUL_10_mult_17_n532) );
  INV_X1 MUL_10_mult_17_U399 ( .A(MUL_10_mult_17_n664), .ZN(
        MUL_10_mult_17_n509) );
  INV_X1 MUL_10_mult_17_U398 ( .A(MUL_10_mult_17_n674), .ZN(
        MUL_10_mult_17_n528) );
  INV_X1 MUL_10_mult_17_U397 ( .A(MUL_10_mult_17_n673), .ZN(
        MUL_10_mult_17_n527) );
  INV_X1 MUL_10_mult_17_U396 ( .A(MUL_10_mult_17_n668), .ZN(
        MUL_10_mult_17_n513) );
  INV_X1 MUL_10_mult_17_U395 ( .A(MUL_10_mult_17_n667), .ZN(
        MUL_10_mult_17_n512) );
  INV_X1 MUL_10_mult_17_U394 ( .A(MUL_10_mult_17_n670), .ZN(
        MUL_10_mult_17_n517) );
  INV_X1 MUL_10_mult_17_U393 ( .A(MUL_10_mult_17_n669), .ZN(
        MUL_10_mult_17_n515) );
  INV_X1 MUL_10_mult_17_U392 ( .A(MUL_10_mult_17_n672), .ZN(
        MUL_10_mult_17_n523) );
  INV_X1 MUL_10_mult_17_U391 ( .A(MUL_10_mult_17_n671), .ZN(
        MUL_10_mult_17_n522) );
  INV_X1 MUL_10_mult_17_U390 ( .A(MUL_10_mult_17_n666), .ZN(
        MUL_10_mult_17_n511) );
  INV_X1 MUL_10_mult_17_U389 ( .A(MUL_10_mult_17_n665), .ZN(
        MUL_10_mult_17_n510) );
  HA_X1 MUL_10_mult_17_U101 ( .A(MUL_10_mult_17_n276), .B(MUL_10_mult_17_n288), 
        .CO(MUL_10_mult_17_n170), .S(MUL_10_mult_17_n171) );
  FA_X1 MUL_10_mult_17_U100 ( .A(MUL_10_mult_17_n287), .B(MUL_10_mult_17_n264), 
        .CI(MUL_10_mult_17_n275), .CO(MUL_10_mult_17_n168), .S(
        MUL_10_mult_17_n169) );
  HA_X1 MUL_10_mult_17_U99 ( .A(MUL_10_mult_17_n197), .B(MUL_10_mult_17_n263), 
        .CO(MUL_10_mult_17_n166), .S(MUL_10_mult_17_n167) );
  FA_X1 MUL_10_mult_17_U98 ( .A(MUL_10_mult_17_n274), .B(MUL_10_mult_17_n286), 
        .CI(MUL_10_mult_17_n167), .CO(MUL_10_mult_17_n164), .S(
        MUL_10_mult_17_n165) );
  FA_X1 MUL_10_mult_17_U97 ( .A(MUL_10_mult_17_n285), .B(MUL_10_mult_17_n251), 
        .CI(MUL_10_mult_17_n273), .CO(MUL_10_mult_17_n162), .S(
        MUL_10_mult_17_n163) );
  FA_X1 MUL_10_mult_17_U96 ( .A(MUL_10_mult_17_n166), .B(MUL_10_mult_17_n262), 
        .CI(MUL_10_mult_17_n163), .CO(MUL_10_mult_17_n160), .S(
        MUL_10_mult_17_n161) );
  HA_X1 MUL_10_mult_17_U95 ( .A(MUL_10_mult_17_n196), .B(MUL_10_mult_17_n250), 
        .CO(MUL_10_mult_17_n158), .S(MUL_10_mult_17_n159) );
  FA_X1 MUL_10_mult_17_U94 ( .A(MUL_10_mult_17_n261), .B(MUL_10_mult_17_n284), 
        .CI(MUL_10_mult_17_n272), .CO(MUL_10_mult_17_n156), .S(
        MUL_10_mult_17_n157) );
  FA_X1 MUL_10_mult_17_U93 ( .A(MUL_10_mult_17_n162), .B(MUL_10_mult_17_n159), 
        .CI(MUL_10_mult_17_n157), .CO(MUL_10_mult_17_n154), .S(
        MUL_10_mult_17_n155) );
  FA_X1 MUL_10_mult_17_U92 ( .A(MUL_10_mult_17_n260), .B(MUL_10_mult_17_n238), 
        .CI(MUL_10_mult_17_n283), .CO(MUL_10_mult_17_n152), .S(
        MUL_10_mult_17_n153) );
  FA_X1 MUL_10_mult_17_U91 ( .A(MUL_10_mult_17_n249), .B(MUL_10_mult_17_n271), 
        .CI(MUL_10_mult_17_n158), .CO(MUL_10_mult_17_n150), .S(
        MUL_10_mult_17_n151) );
  FA_X1 MUL_10_mult_17_U90 ( .A(MUL_10_mult_17_n153), .B(MUL_10_mult_17_n156), 
        .CI(MUL_10_mult_17_n151), .CO(MUL_10_mult_17_n148), .S(
        MUL_10_mult_17_n149) );
  HA_X1 MUL_10_mult_17_U89 ( .A(MUL_10_mult_17_n195), .B(MUL_10_mult_17_n237), 
        .CO(MUL_10_mult_17_n146), .S(MUL_10_mult_17_n147) );
  FA_X1 MUL_10_mult_17_U88 ( .A(MUL_10_mult_17_n248), .B(MUL_10_mult_17_n259), 
        .CI(MUL_10_mult_17_n270), .CO(MUL_10_mult_17_n144), .S(
        MUL_10_mult_17_n145) );
  FA_X1 MUL_10_mult_17_U87 ( .A(MUL_10_mult_17_n147), .B(MUL_10_mult_17_n282), 
        .CI(MUL_10_mult_17_n152), .CO(MUL_10_mult_17_n142), .S(
        MUL_10_mult_17_n143) );
  FA_X1 MUL_10_mult_17_U86 ( .A(MUL_10_mult_17_n145), .B(MUL_10_mult_17_n150), 
        .CI(MUL_10_mult_17_n143), .CO(MUL_10_mult_17_n140), .S(
        MUL_10_mult_17_n141) );
  FA_X1 MUL_10_mult_17_U85 ( .A(MUL_10_mult_17_n247), .B(MUL_10_mult_17_n225), 
        .CI(MUL_10_mult_17_n281), .CO(MUL_10_mult_17_n138), .S(
        MUL_10_mult_17_n139) );
  FA_X1 MUL_10_mult_17_U84 ( .A(MUL_10_mult_17_n236), .B(MUL_10_mult_17_n269), 
        .CI(MUL_10_mult_17_n258), .CO(MUL_10_mult_17_n136), .S(
        MUL_10_mult_17_n137) );
  FA_X1 MUL_10_mult_17_U83 ( .A(MUL_10_mult_17_n144), .B(MUL_10_mult_17_n146), 
        .CI(MUL_10_mult_17_n139), .CO(MUL_10_mult_17_n134), .S(
        MUL_10_mult_17_n135) );
  FA_X1 MUL_10_mult_17_U82 ( .A(MUL_10_mult_17_n142), .B(MUL_10_mult_17_n137), 
        .CI(MUL_10_mult_17_n135), .CO(MUL_10_mult_17_n132), .S(
        MUL_10_mult_17_n133) );
  HA_X1 MUL_10_mult_17_U81 ( .A(MUL_10_mult_17_n194), .B(MUL_10_mult_17_n224), 
        .CO(MUL_10_mult_17_n130), .S(MUL_10_mult_17_n131) );
  FA_X1 MUL_10_mult_17_U80 ( .A(MUL_10_mult_17_n235), .B(MUL_10_mult_17_n257), 
        .CI(MUL_10_mult_17_n280), .CO(MUL_10_mult_17_n128), .S(
        MUL_10_mult_17_n129) );
  FA_X1 MUL_10_mult_17_U79 ( .A(MUL_10_mult_17_n246), .B(MUL_10_mult_17_n268), 
        .CI(MUL_10_mult_17_n131), .CO(MUL_10_mult_17_n126), .S(
        MUL_10_mult_17_n127) );
  FA_X1 MUL_10_mult_17_U78 ( .A(MUL_10_mult_17_n136), .B(MUL_10_mult_17_n138), 
        .CI(MUL_10_mult_17_n129), .CO(MUL_10_mult_17_n124), .S(
        MUL_10_mult_17_n125) );
  FA_X1 MUL_10_mult_17_U77 ( .A(MUL_10_mult_17_n134), .B(MUL_10_mult_17_n127), 
        .CI(MUL_10_mult_17_n125), .CO(MUL_10_mult_17_n122), .S(
        MUL_10_mult_17_n123) );
  FA_X1 MUL_10_mult_17_U76 ( .A(MUL_10_mult_17_n234), .B(MUL_10_mult_17_n212), 
        .CI(MUL_10_mult_17_n279), .CO(MUL_10_mult_17_n120), .S(
        MUL_10_mult_17_n121) );
  FA_X1 MUL_10_mult_17_U75 ( .A(MUL_10_mult_17_n223), .B(MUL_10_mult_17_n267), 
        .CI(MUL_10_mult_17_n245), .CO(MUL_10_mult_17_n118), .S(
        MUL_10_mult_17_n119) );
  FA_X1 MUL_10_mult_17_U74 ( .A(MUL_10_mult_17_n130), .B(MUL_10_mult_17_n256), 
        .CI(MUL_10_mult_17_n128), .CO(MUL_10_mult_17_n116), .S(
        MUL_10_mult_17_n117) );
  FA_X1 MUL_10_mult_17_U73 ( .A(MUL_10_mult_17_n119), .B(MUL_10_mult_17_n121), 
        .CI(MUL_10_mult_17_n126), .CO(MUL_10_mult_17_n114), .S(
        MUL_10_mult_17_n115) );
  FA_X1 MUL_10_mult_17_U72 ( .A(MUL_10_mult_17_n117), .B(MUL_10_mult_17_n124), 
        .CI(MUL_10_mult_17_n115), .CO(MUL_10_mult_17_n112), .S(
        MUL_10_mult_17_n113) );
  FA_X1 MUL_10_mult_17_U69 ( .A(MUL_10_mult_17_n233), .B(MUL_10_mult_17_n244), 
        .CI(MUL_10_mult_17_n543), .CO(MUL_10_mult_17_n108), .S(
        MUL_10_mult_17_n109) );
  FA_X1 MUL_10_mult_17_U68 ( .A(MUL_10_mult_17_n193), .B(MUL_10_mult_17_n266), 
        .CI(MUL_10_mult_17_n255), .CO(MUL_10_mult_17_n106), .S(
        MUL_10_mult_17_n107) );
  FA_X1 MUL_10_mult_17_U67 ( .A(MUL_10_mult_17_n120), .B(MUL_10_mult_17_n111), 
        .CI(MUL_10_mult_17_n118), .CO(MUL_10_mult_17_n104), .S(
        MUL_10_mult_17_n105) );
  FA_X1 MUL_10_mult_17_U66 ( .A(MUL_10_mult_17_n109), .B(MUL_10_mult_17_n107), 
        .CI(MUL_10_mult_17_n116), .CO(MUL_10_mult_17_n102), .S(
        MUL_10_mult_17_n103) );
  FA_X1 MUL_10_mult_17_U65 ( .A(MUL_10_mult_17_n114), .B(MUL_10_mult_17_n105), 
        .CI(MUL_10_mult_17_n103), .CO(MUL_10_mult_17_n100), .S(
        MUL_10_mult_17_n101) );
  FA_X1 MUL_10_mult_17_U63 ( .A(MUL_10_mult_17_n210), .B(MUL_10_mult_17_n221), 
        .CI(MUL_10_mult_17_n254), .CO(MUL_10_mult_17_n96), .S(
        MUL_10_mult_17_n97) );
  FA_X1 MUL_10_mult_17_U62 ( .A(MUL_10_mult_17_n232), .B(MUL_10_mult_17_n243), 
        .CI(MUL_10_mult_17_n539), .CO(MUL_10_mult_17_n94), .S(
        MUL_10_mult_17_n95) );
  FA_X1 MUL_10_mult_17_U61 ( .A(MUL_10_mult_17_n108), .B(MUL_10_mult_17_n110), 
        .CI(MUL_10_mult_17_n106), .CO(MUL_10_mult_17_n92), .S(
        MUL_10_mult_17_n93) );
  FA_X1 MUL_10_mult_17_U60 ( .A(MUL_10_mult_17_n95), .B(MUL_10_mult_17_n97), 
        .CI(MUL_10_mult_17_n104), .CO(MUL_10_mult_17_n90), .S(
        MUL_10_mult_17_n91) );
  FA_X1 MUL_10_mult_17_U59 ( .A(MUL_10_mult_17_n102), .B(MUL_10_mult_17_n93), 
        .CI(MUL_10_mult_17_n91), .CO(MUL_10_mult_17_n88), .S(
        MUL_10_mult_17_n89) );
  FA_X1 MUL_10_mult_17_U58 ( .A(MUL_10_mult_17_n98), .B(MUL_10_mult_17_n209), 
        .CI(MUL_10_mult_17_n540), .CO(MUL_10_mult_17_n86), .S(
        MUL_10_mult_17_n87) );
  FA_X1 MUL_10_mult_17_U57 ( .A(MUL_10_mult_17_n220), .B(MUL_10_mult_17_n253), 
        .CI(MUL_10_mult_17_n231), .CO(MUL_10_mult_17_n84), .S(
        MUL_10_mult_17_n85) );
  FA_X1 MUL_10_mult_17_U56 ( .A(MUL_10_mult_17_n96), .B(MUL_10_mult_17_n242), 
        .CI(MUL_10_mult_17_n94), .CO(MUL_10_mult_17_n82), .S(
        MUL_10_mult_17_n83) );
  FA_X1 MUL_10_mult_17_U55 ( .A(MUL_10_mult_17_n87), .B(MUL_10_mult_17_n85), 
        .CI(MUL_10_mult_17_n92), .CO(MUL_10_mult_17_n80), .S(
        MUL_10_mult_17_n81) );
  FA_X1 MUL_10_mult_17_U54 ( .A(MUL_10_mult_17_n90), .B(MUL_10_mult_17_n83), 
        .CI(MUL_10_mult_17_n81), .CO(MUL_10_mult_17_n78), .S(
        MUL_10_mult_17_n79) );
  FA_X1 MUL_10_mult_17_U52 ( .A(MUL_10_mult_17_n241), .B(MUL_10_mult_17_n219), 
        .CI(MUL_10_mult_17_n208), .CO(MUL_10_mult_17_n74), .S(
        MUL_10_mult_17_n75) );
  FA_X1 MUL_10_mult_17_U51 ( .A(MUL_10_mult_17_n534), .B(MUL_10_mult_17_n230), 
        .CI(MUL_10_mult_17_n86), .CO(MUL_10_mult_17_n72), .S(
        MUL_10_mult_17_n73) );
  FA_X1 MUL_10_mult_17_U50 ( .A(MUL_10_mult_17_n75), .B(MUL_10_mult_17_n84), 
        .CI(MUL_10_mult_17_n82), .CO(MUL_10_mult_17_n70), .S(
        MUL_10_mult_17_n71) );
  FA_X1 MUL_10_mult_17_U49 ( .A(MUL_10_mult_17_n80), .B(MUL_10_mult_17_n73), 
        .CI(MUL_10_mult_17_n71), .CO(MUL_10_mult_17_n68), .S(
        MUL_10_mult_17_n69) );
  FA_X1 MUL_10_mult_17_U48 ( .A(MUL_10_mult_17_n240), .B(MUL_10_mult_17_n207), 
        .CI(MUL_10_mult_17_n535), .CO(MUL_10_mult_17_n66), .S(
        MUL_10_mult_17_n67) );
  FA_X1 MUL_10_mult_17_U47 ( .A(MUL_10_mult_17_n218), .B(MUL_10_mult_17_n76), 
        .CI(MUL_10_mult_17_n229), .CO(MUL_10_mult_17_n64), .S(
        MUL_10_mult_17_n65) );
  FA_X1 MUL_10_mult_17_U46 ( .A(MUL_10_mult_17_n65), .B(MUL_10_mult_17_n74), 
        .CI(MUL_10_mult_17_n67), .CO(MUL_10_mult_17_n62), .S(
        MUL_10_mult_17_n63) );
  FA_X1 MUL_10_mult_17_U45 ( .A(MUL_10_mult_17_n70), .B(MUL_10_mult_17_n72), 
        .CI(MUL_10_mult_17_n63), .CO(MUL_10_mult_17_n60), .S(
        MUL_10_mult_17_n61) );
  FA_X1 MUL_10_mult_17_U43 ( .A(MUL_10_mult_17_n206), .B(MUL_10_mult_17_n217), 
        .CI(MUL_10_mult_17_n228), .CO(MUL_10_mult_17_n56), .S(
        MUL_10_mult_17_n57) );
  FA_X1 MUL_10_mult_17_U42 ( .A(MUL_10_mult_17_n66), .B(MUL_10_mult_17_n529), 
        .CI(MUL_10_mult_17_n64), .CO(MUL_10_mult_17_n54), .S(
        MUL_10_mult_17_n55) );
  FA_X1 MUL_10_mult_17_U41 ( .A(MUL_10_mult_17_n55), .B(MUL_10_mult_17_n57), 
        .CI(MUL_10_mult_17_n62), .CO(MUL_10_mult_17_n52), .S(
        MUL_10_mult_17_n53) );
  FA_X1 MUL_10_mult_17_U40 ( .A(MUL_10_mult_17_n216), .B(MUL_10_mult_17_n205), 
        .CI(MUL_10_mult_17_n530), .CO(MUL_10_mult_17_n50), .S(
        MUL_10_mult_17_n51) );
  FA_X1 MUL_10_mult_17_U39 ( .A(MUL_10_mult_17_n58), .B(MUL_10_mult_17_n227), 
        .CI(MUL_10_mult_17_n56), .CO(MUL_10_mult_17_n48), .S(
        MUL_10_mult_17_n49) );
  FA_X1 MUL_10_mult_17_U38 ( .A(MUL_10_mult_17_n54), .B(MUL_10_mult_17_n51), 
        .CI(MUL_10_mult_17_n49), .CO(MUL_10_mult_17_n46), .S(
        MUL_10_mult_17_n47) );
  FA_X1 MUL_10_mult_17_U36 ( .A(MUL_10_mult_17_n204), .B(MUL_10_mult_17_n215), 
        .CI(MUL_10_mult_17_n524), .CO(MUL_10_mult_17_n42), .S(
        MUL_10_mult_17_n43) );
  FA_X1 MUL_10_mult_17_U35 ( .A(MUL_10_mult_17_n43), .B(MUL_10_mult_17_n50), 
        .CI(MUL_10_mult_17_n48), .CO(MUL_10_mult_17_n40), .S(
        MUL_10_mult_17_n41) );
  FA_X1 MUL_10_mult_17_U34 ( .A(MUL_10_mult_17_n214), .B(MUL_10_mult_17_n44), 
        .CI(MUL_10_mult_17_n525), .CO(MUL_10_mult_17_n38), .S(
        MUL_10_mult_17_n39) );
  FA_X1 MUL_10_mult_17_U33 ( .A(MUL_10_mult_17_n42), .B(MUL_10_mult_17_n203), 
        .CI(MUL_10_mult_17_n39), .CO(MUL_10_mult_17_n36), .S(
        MUL_10_mult_17_n37) );
  FA_X1 MUL_10_mult_17_U31 ( .A(MUL_10_mult_17_n518), .B(MUL_10_mult_17_n202), 
        .CI(MUL_10_mult_17_n38), .CO(MUL_10_mult_17_n32), .S(
        MUL_10_mult_17_n33) );
  FA_X1 MUL_10_mult_17_U30 ( .A(MUL_10_mult_17_n201), .B(MUL_10_mult_17_n34), 
        .CI(MUL_10_mult_17_n519), .CO(MUL_10_mult_17_n30), .S(
        MUL_10_mult_17_n31) );
  FA_X1 MUL_10_mult_17_U11 ( .A(MUL_10_mult_17_n53), .B(MUL_10_mult_17_n60), 
        .CI(MUL_10_mult_17_n509), .CO(MUL_10_mult_17_n10), .S(
        TRUNCATED_MULT_RES_10__0_) );
  FA_X1 MUL_10_mult_17_U10 ( .A(MUL_10_mult_17_n47), .B(MUL_10_mult_17_n52), 
        .CI(MUL_10_mult_17_n10), .CO(MUL_10_mult_17_n9), .S(
        TRUNCATED_MULT_RES_10__1_) );
  FA_X1 MUL_10_mult_17_U9 ( .A(MUL_10_mult_17_n41), .B(MUL_10_mult_17_n46), 
        .CI(MUL_10_mult_17_n9), .CO(MUL_10_mult_17_n8), .S(
        TRUNCATED_MULT_RES_10__2_) );
  FA_X1 MUL_10_mult_17_U8 ( .A(MUL_10_mult_17_n37), .B(MUL_10_mult_17_n40), 
        .CI(MUL_10_mult_17_n8), .CO(MUL_10_mult_17_n7), .S(
        TRUNCATED_MULT_RES_10__3_) );
  FA_X1 MUL_10_mult_17_U7 ( .A(MUL_10_mult_17_n33), .B(MUL_10_mult_17_n36), 
        .CI(MUL_10_mult_17_n7), .CO(MUL_10_mult_17_n6), .S(
        TRUNCATED_MULT_RES_10__4_) );
  FA_X1 MUL_10_mult_17_U6 ( .A(MUL_10_mult_17_n32), .B(MUL_10_mult_17_n31), 
        .CI(MUL_10_mult_17_n6), .CO(MUL_10_mult_17_n5), .S(
        TRUNCATED_MULT_RES_10__5_) );
  FA_X1 MUL_10_mult_17_U5 ( .A(MUL_10_mult_17_n30), .B(MUL_10_mult_17_n29), 
        .CI(MUL_10_mult_17_n5), .CO(MUL_10_mult_17_n4), .S(
        TRUNCATED_MULT_RES_10__6_) );
  AND2_X1 ADD_10_add_18_U2 ( .A1(SUM_RESULTS_9__0_), .A2(
        TRUNCATED_MULT_RES_10__0_), .ZN(ADD_10_add_18_n2) );
  XOR2_X1 ADD_10_add_18_U1 ( .A(SUM_RESULTS_9__0_), .B(
        TRUNCATED_MULT_RES_10__0_), .Z(SUM_RESULTS_10__0_) );
  FA_X1 ADD_10_add_18_U1_1 ( .A(TRUNCATED_MULT_RES_10__1_), .B(
        SUM_RESULTS_9__1_), .CI(ADD_10_add_18_n2), .CO(ADD_10_add_18_carry[2]), 
        .S(SUM_RESULTS_10__1_) );
  FA_X1 ADD_10_add_18_U1_2 ( .A(TRUNCATED_MULT_RES_10__2_), .B(
        SUM_RESULTS_9__2_), .CI(ADD_10_add_18_carry[2]), .CO(
        ADD_10_add_18_carry[3]), .S(SUM_RESULTS_10__2_) );
  FA_X1 ADD_10_add_18_U1_3 ( .A(TRUNCATED_MULT_RES_10__3_), .B(
        SUM_RESULTS_9__3_), .CI(ADD_10_add_18_carry[3]), .CO(
        ADD_10_add_18_carry[4]), .S(SUM_RESULTS_10__3_) );
  FA_X1 ADD_10_add_18_U1_4 ( .A(TRUNCATED_MULT_RES_10__4_), .B(
        SUM_RESULTS_9__4_), .CI(ADD_10_add_18_carry[4]), .CO(
        ADD_10_add_18_carry[5]), .S(SUM_RESULTS_10__4_) );
  FA_X1 ADD_10_add_18_U1_5 ( .A(TRUNCATED_MULT_RES_10__5_), .B(
        SUM_RESULTS_9__5_), .CI(ADD_10_add_18_carry[5]), .CO(
        ADD_10_add_18_carry[6]), .S(SUM_RESULTS_10__5_) );
  FA_X1 ADD_10_add_18_U1_6 ( .A(TRUNCATED_MULT_RES_10__6_), .B(
        SUM_RESULTS_9__6_), .CI(ADD_10_add_18_carry[6]), .CO(
        ADD_10_add_18_carry[7]), .S(SUM_RESULTS_10__6_) );
  FA_X1 ADD_10_add_18_U1_7 ( .A(TRUNCATED_MULT_RES_10__7_), .B(
        SUM_RESULTS_9__7_), .CI(ADD_10_add_18_carry[7]), .CO(
        ADD_10_add_18_carry[8]), .S(SUM_RESULTS_10__7_) );
  FA_X1 ADD_10_add_18_U1_8 ( .A(TRUNCATED_MULT_RES_10__7_), .B(
        SUM_RESULTS_9__8_), .CI(ADD_10_add_18_carry[8]), .CO(
        ADD_10_add_18_carry[9]), .S(SUM_RESULTS_10__8_) );
  FA_X1 ADD_10_add_18_U1_9 ( .A(TRUNCATED_MULT_RES_10__7_), .B(
        SUM_RESULTS_9__9_), .CI(ADD_10_add_18_carry[9]), .CO(
        ADD_10_add_18_carry[10]), .S(SUM_RESULTS_10__9_) );
  FA_X1 ADD_10_add_18_U1_10 ( .A(TRUNCATED_MULT_RES_10__7_), .B(
        SUM_RESULTS_9__12_), .CI(ADD_10_add_18_carry[10]), .S(
        SUM_RESULTS_10__12_) );
endmodule


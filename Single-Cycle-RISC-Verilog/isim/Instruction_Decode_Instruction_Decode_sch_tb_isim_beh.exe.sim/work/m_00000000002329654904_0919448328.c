/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/ib701/Desktop/Single-Cycle-RISC-Verilog/Single-Cycle-RISC-Verilog/tb_Instruction_Decode.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {4095U, 2047U};
static unsigned int ng3[] = {6143U, 2047U};
static unsigned int ng4[] = {8191U, 2047U};
static unsigned int ng5[] = {12287U, 2047U};
static unsigned int ng6[] = {2044U, 2044U};
static unsigned int ng7[] = {2045U, 2044U};
static unsigned int ng8[] = {2046U, 2044U};
static unsigned int ng9[] = {2047U, 2044U};
static unsigned int ng10[] = {14333U, 2044U};
static unsigned int ng11[] = {16383U, 2047U};
static unsigned int ng12[] = {18431U, 2047U};
static unsigned int ng13[] = {24575U, 2047U};
static unsigned int ng14[] = {50175U, 255U};
static unsigned int ng15[] = {49919U, 255U};
static unsigned int ng16[] = {49663U, 255U};
static unsigned int ng17[] = {49407U, 255U};
static unsigned int ng18[] = {52991U, 255U};
static unsigned int ng19[] = {34815U, 2047U};
static unsigned int ng20[] = {36863U, 2047U};
static unsigned int ng21[] = {38911U, 2047U};
static unsigned int ng22[] = {40959U, 2047U};
static unsigned int ng23[] = {59388U, 2044U};
static unsigned int ng24[] = {59389U, 2044U};



static void Initial_63_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 5728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);

LAB4:    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(80, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(81, ng0);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng18)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB22:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB23:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng20)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB24:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB25:    xsi_set_current_line(93, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB26:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB27:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 4488);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 16);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 5536);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(97, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}


extern void work_m_00000000002329654904_0919448328_init()
{
	static char *pe[] = {(void *)Initial_63_0};
	xsi_register_didat("work_m_00000000002329654904_0919448328", "isim/Instruction_Decode_Instruction_Decode_sch_tb_isim_beh.exe.sim/work/m_00000000002329654904_0919448328.didat");
	xsi_register_executes(pe);
}

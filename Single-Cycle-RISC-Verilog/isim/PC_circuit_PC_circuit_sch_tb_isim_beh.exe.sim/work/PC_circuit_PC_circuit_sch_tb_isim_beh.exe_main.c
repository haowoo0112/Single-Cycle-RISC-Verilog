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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003223983431_3652382398_init();
    work_m_00000000003084767183_2064229261_init();
    work_m_00000000003883018569_3190593924_init();
    work_m_00000000001848935363_2043485009_init();
    work_m_00000000001911534297_2709206797_init();
    work_m_00000000003309794932_0792827797_init();
    work_m_00000000000129322120_1265034481_init();
    work_m_00000000000872925056_3773700693_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000872925056_3773700693");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}

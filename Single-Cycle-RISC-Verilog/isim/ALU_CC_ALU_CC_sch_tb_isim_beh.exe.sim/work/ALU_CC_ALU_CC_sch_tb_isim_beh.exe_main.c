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
    work_m_00000000003883018569_3190593924_init();
    work_m_00000000001848935363_2043485009_init();
    work_m_00000000002889891044_0886308060_init();
    work_m_00000000003769681903_0552342893_init();
    work_m_00000000001226567067_2704706748_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001226567067_2704706748");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}

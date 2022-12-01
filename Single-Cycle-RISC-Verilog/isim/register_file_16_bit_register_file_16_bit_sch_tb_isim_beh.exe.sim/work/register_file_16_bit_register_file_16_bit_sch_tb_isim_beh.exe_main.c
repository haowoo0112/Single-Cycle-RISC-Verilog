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
    work_m_00000000001538271762_3932265890_init();
    work_m_00000000003915265032_4274822196_init();
    work_m_00000000003152421113_1096205739_init();
    work_m_00000000000164606126_3026187476_init();
    work_m_00000000002910472034_0737778065_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002910472034_0737778065");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}

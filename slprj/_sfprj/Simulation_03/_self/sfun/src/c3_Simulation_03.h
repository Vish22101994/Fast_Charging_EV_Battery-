#ifndef __c3_Simulation_03_h__
#define __c3_Simulation_03_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc3_Simulation_03InstanceStruct
#define typedef_SFc3_Simulation_03InstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c3_sfEvent;
  boolean_T c3_isStable;
  boolean_T c3_doneDoubleBufferReInit;
  uint8_T c3_is_active_c3_Simulation_03;
  real_T c3_dco;
  boolean_T c3_dco_not_empty;
  real_T c3_Vo;
  boolean_T c3_Vo_not_empty;
  real_T c3_Io;
  boolean_T c3_Io_not_empty;
} SFc3_Simulation_03InstanceStruct;

#endif                                 /*typedef_SFc3_Simulation_03InstanceStruct*/

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c3_Simulation_03_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c3_Simulation_03_get_check_sum(mxArray *plhs[]);
extern void c3_Simulation_03_method_dispatcher(SimStruct *S, int_T method, void *
  data);

#endif

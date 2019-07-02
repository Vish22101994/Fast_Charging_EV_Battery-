#ifndef __c2_PnO_MPPT_h__
#define __c2_PnO_MPPT_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc2_PnO_MPPTInstanceStruct
#define typedef_SFc2_PnO_MPPTInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c2_sfEvent;
  boolean_T c2_isStable;
  boolean_T c2_doneDoubleBufferReInit;
  uint8_T c2_is_active_c2_PnO_MPPT;
  real_T c2_V1;
  boolean_T c2_V1_not_empty;
  real_T c2_I1;
  boolean_T c2_I1_not_empty;
  real_T c2_V0;
  boolean_T c2_V0_not_empty;
  real_T c2_I0;
  boolean_T c2_I0_not_empty;
  real_T c2_D0;
  boolean_T c2_D0_not_empty;
} SFc2_PnO_MPPTInstanceStruct;

#endif                                 /*typedef_SFc2_PnO_MPPTInstanceStruct*/

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c2_PnO_MPPT_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c2_PnO_MPPT_get_check_sum(mxArray *plhs[]);
extern void c2_PnO_MPPT_method_dispatcher(SimStruct *S, int_T method, void *data);

#endif

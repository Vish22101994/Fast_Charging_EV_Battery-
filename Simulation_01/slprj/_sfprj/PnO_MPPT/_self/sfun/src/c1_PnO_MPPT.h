#ifndef __c1_PnO_MPPT_h__
#define __c1_PnO_MPPT_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc1_PnO_MPPTInstanceStruct
#define typedef_SFc1_PnO_MPPTInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c1_sfEvent;
  boolean_T c1_isStable;
  boolean_T c1_doneDoubleBufferReInit;
  uint8_T c1_is_active_c1_PnO_MPPT;
} SFc1_PnO_MPPTInstanceStruct;

#endif                                 /*typedef_SFc1_PnO_MPPTInstanceStruct*/

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c1_PnO_MPPT_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c1_PnO_MPPT_get_check_sum(mxArray *plhs[]);
extern void c1_PnO_MPPT_method_dispatcher(SimStruct *S, int_T method, void *data);

#endif

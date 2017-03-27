
#include <Rdefines.h>
#include <R_ext/Rdynload.h>
#include <R_ext/Visibility.h>
#include "tshrc.h"

static R_NativePrimitiveArgType twostage_types[11] = {INTSXP, INTSXP,
    REALSXP, INTSXP, INTSXP, INTSXP, REALSXP, REALSXP, REALSXP, REALSXP,
    REALSXP};

static R_CMethodDef cMethods[] = {
    {NULL, NULL, 0, NULL}
};

static R_CallMethodDef callMethods[]  = {
    {NULL, NULL, 0}
};

static R_FortranMethodDef fortranMethods[] = {
    {"TWOSTAGE", (DL_FUNC) &F77_SUB(twostage), 11, twostage_types},
    {NULL, NULL, 0, NULL}
};

void attribute_visible R_init_TSHRC(DllInfo *info)
{
    R_registerRoutines(info, cMethods, callMethods, fortranMethods, NULL);
    R_useDynamicSymbols(info, FALSE);
    R_forceSymbols(info, TRUE);
}


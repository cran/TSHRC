
#ifndef TSHRC_TSHRC_H
#define TSHRC_TSHRC_H

void F77_SUB(rndstart)(void);

void F77_SUB(rndend)(void);

double F77_SUB(unifrnd)(void);

void F77_SUB(twostage)(int *WORK, int *DATASIZE, double *T, int *DELTA,
    int *GP, int *BOOTSN, double *ALPHA, double *EPS, double *LRPV,
    double *MTPV, double *TSPV);

#endif /* TSHRC_TSHRC_H */


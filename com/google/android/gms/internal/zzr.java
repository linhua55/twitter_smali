package com.google.android.gms.internal;

public class zzr extends Exception {
    private long zzC;
    public final pn zzaj;

    public zzr() {
        this.zzaj = null;
    }

    public zzr(pn pnVar) {
        this.zzaj = pnVar;
    }

    public zzr(Throwable th) {
        super(th);
        this.zzaj = null;
    }

    void a(long j) {
        this.zzC = j;
    }
}

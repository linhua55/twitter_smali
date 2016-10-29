package com.google.android.gms.common.api.internal;

abstract class ai {
    private final ag a;

    protected ai(ag agVar) {
        this.a = agVar;
    }

    protected abstract void a();

    public final void a(ah ahVar) {
        ahVar.i.lock();
        try {
            if (ahVar.n == this.a) {
                a();
                ahVar.i.unlock();
            }
        } finally {
            ahVar.i.unlock();
        }
    }
}

package com.google.android.gms.internal;

class hs implements Runnable {
    final /* synthetic */ hq a;
    private final zzk b;
    private final uy c;
    private final Runnable d;

    public hs(hq hqVar, zzk com_google_android_gms_internal_zzk, uy uyVar, Runnable runnable) {
        this.a = hqVar;
        this.b = com_google_android_gms_internal_zzk;
        this.c = uyVar;
        this.d = runnable;
    }

    public void run() {
        if (this.b.g()) {
            this.b.c("canceled-at-delivery");
            return;
        }
        if (this.c.a()) {
            this.b.a(this.c.a);
        } else {
            this.b.b(this.c.c);
        }
        if (this.c.d) {
            this.b.b("intermediate-response");
        } else {
            this.b.c("done");
        }
        if (this.d != null) {
            this.d.run();
        }
    }
}

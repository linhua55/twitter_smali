package io.fabric.sdk.android.services.common;

/* compiled from: Twttr */
class u extends l {
    final /* synthetic */ Runnable a;
    final /* synthetic */ t b;

    u(t tVar, Runnable runnable) {
        this.b = tVar;
        this.a = runnable;
    }

    public void a() {
        this.a.run();
    }
}

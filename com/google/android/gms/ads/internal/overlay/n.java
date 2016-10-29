package com.google.android.gms.ads.internal.overlay;

import android.graphics.drawable.Drawable;

class n implements Runnable {
    final /* synthetic */ Drawable a;
    final /* synthetic */ m b;

    n(m mVar, Drawable drawable) {
        this.b = mVar;
        this.a = drawable;
    }

    public void run() {
        zzd.a(this.b.a).getWindow().setBackgroundDrawable(this.a);
    }
}

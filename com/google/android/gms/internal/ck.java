package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.ar;
import java.util.concurrent.Callable;

final class ck implements Callable<Void> {
    final /* synthetic */ Context a;

    ck(Context context) {
        this.a = context;
    }

    public Void a() {
        ar.n().a(this.a);
        return null;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }
}

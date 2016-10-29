package com.google.android.gms.ads.internal;

import android.view.View;
import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.sz;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class ae implements fj {
    final /* synthetic */ CountDownLatch a;

    ae(CountDownLatch countDownLatch) {
        this.a = countDownLatch;
    }

    public void a(sz szVar, Map<String, String> map) {
        this.a.countDown();
        View b = szVar.b();
        if (b != null) {
            b.setVisibility(0);
        }
    }
}

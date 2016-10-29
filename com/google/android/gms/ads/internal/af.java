package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.sz;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class af implements fj {
    final /* synthetic */ CountDownLatch a;

    af(CountDownLatch countDownLatch) {
        this.a = countDownLatch;
    }

    public void a(sz szVar, Map<String, String> map) {
        qd.d("Adapter returned an ad, but assets substitution failed");
        this.a.countDown();
        szVar.destroy();
    }
}

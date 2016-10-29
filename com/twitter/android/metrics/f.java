package com.twitter.android.metrics;

import android.content.Context;
import android.view.WindowManager;
import arj;
import arp;
import arq;
import aru;
import com.twitter.app.common.list.k;

/* compiled from: Twttr */
public class f extends g {
    private final float c;

    public static f a(String str, arp arp, aru aru, boolean z, int i, k kVar) {
        arj a = aru.a(a("TwitterListFragmentDroppedFramesMetric", str));
        if (a == null) {
            a = aru.d(new f(aru.f(), str, arp, a("TwitterListFragmentDroppedFramesMetric", str), aru, z, i, kVar));
        }
        return (f) a;
    }

    public f(Context context, String str, arp arp, String str2, arq arq, boolean z, int i, k kVar) {
        super(context, str, arp, str2, arq, z, i, kVar);
        this.c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRefreshRate();
    }

    public Long d() {
        long j = -1;
        long longValue = super.d().longValue();
        if (longValue != -1) {
            j = (long) (100.0f - ((((float) longValue) / this.c) * 100.0f));
        }
        return Long.valueOf(j);
    }
}

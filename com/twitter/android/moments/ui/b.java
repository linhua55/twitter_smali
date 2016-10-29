package com.twitter.android.moments.ui;

import android.support.v4.app.FragmentActivity;
import com.twitter.library.client.bg;
import defpackage.byi;
import defpackage.cni;
import defpackage.cvn;
import defpackage.dbd;
import rx.w;

/* compiled from: Twttr */
public class b {
    private final e a;
    private final byi b;
    private final cvn c;

    public static b a(FragmentActivity fragmentActivity, byi byi) {
        return new b(new e(fragmentActivity, fragmentActivity.getSupportFragmentManager(), bg.a()), byi, new cvn(dbd.d()));
    }

    public b(e eVar, byi byi, cvn cvn) {
        this.a = eVar;
        this.b = byi;
        this.c = cvn;
    }

    public w<Boolean> a(long j, String str, cni cni) {
        return this.a.a(str).b(new c(this, j, cni));
    }
}

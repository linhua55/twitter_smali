package com.twitter.library.provider;

import android.content.Context;
import com.twitter.util.h;
import rx.am;
import rx.p;

/* compiled from: Twttr */
final class x implements p<long[]> {
    final /* synthetic */ Context a;
    final /* synthetic */ long b;

    x(Context context, long j) {
        this.a = context;
        this.b = j;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super long[]> amVar) {
        h.c();
        amVar.c();
        Object c = v.a(this.a, this.b).c();
        if (c.length > 0) {
            amVar.b_(c);
        }
        amVar.bs_();
    }
}

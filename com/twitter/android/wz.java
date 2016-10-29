package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import cni;

/* compiled from: Twttr */
class wz implements OnClickListener {
    final /* synthetic */ xc a;
    final /* synthetic */ long b;
    final /* synthetic */ cni c;
    final /* synthetic */ xe d;
    final /* synthetic */ wv e;

    wz(wv wvVar, xc xcVar, long j, cni cni, xe xeVar) {
        this.e = wvVar;
        this.a = xcVar;
        this.b = j;
        this.c = cni;
        this.d = xeVar;
    }

    public void onClick(View view) {
        this.a.a(this.b, this.c, this.e.e, this.d);
    }
}

package com.twitter.android;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import cni;

/* compiled from: Twttr */
class ww implements OnClickListener {
    final /* synthetic */ xc a;
    final /* synthetic */ long b;
    final /* synthetic */ cni c;
    final /* synthetic */ xe d;
    final /* synthetic */ xb e;
    final /* synthetic */ Resources f;
    final /* synthetic */ wv g;

    ww(wv wvVar, xc xcVar, long j, cni cni, xe xeVar, xb xbVar, Resources resources) {
        this.g = wvVar;
        this.a = xcVar;
        this.b = j;
        this.c = cni;
        this.d = xeVar;
        this.e = xbVar;
        this.f = resources;
    }

    public void onClick(View view) {
        int b = this.a.b(this.b, this.c, this.g.e, this.d);
        this.e.a(b, this.f);
        this.d.b = b;
    }
}

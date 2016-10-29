package com.twitter.android.media.imageeditor.stickers;

import android.view.View;
import android.view.View.OnClickListener;
import cjw;
import defpackage.ckp;

/* compiled from: Twttr */
class e implements OnClickListener {
    final /* synthetic */ cjw a;
    final /* synthetic */ ckp b;
    final /* synthetic */ d c;

    e(d dVar, cjw cjw, ckp ckp) {
        this.c = dVar;
        this.a = cjw;
        this.b = ckp;
    }

    public void onClick(View view) {
        this.c.d.a(this.a, this.b.c);
    }
}

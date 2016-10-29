package com.twitter.android.media.imageeditor.stickers;

import android.view.View;
import android.view.View.OnClickListener;
import cjw;

/* compiled from: Twttr */
class p implements OnClickListener {
    final /* synthetic */ cjw a;
    final /* synthetic */ o b;

    p(o oVar, cjw cjw) {
        this.b = oVar;
        this.a = cjw;
    }

    public void onClick(View view) {
        this.b.c.a((cjw) this.b.b.get(0), this.a);
    }
}

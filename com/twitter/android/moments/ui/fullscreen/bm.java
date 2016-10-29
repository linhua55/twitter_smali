package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;

/* compiled from: Twttr */
class bm implements OnClickListener {
    final /* synthetic */ ab a;
    final /* synthetic */ a b;
    final /* synthetic */ bj c;

    bm(bj bjVar, ab abVar, a aVar) {
        this.c = bjVar;
        this.a = abVar;
        this.b = aVar;
    }

    public void onClick(View view) {
        this.c.b.a(this.a, this.b, this.c.g);
    }
}

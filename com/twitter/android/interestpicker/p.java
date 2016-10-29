package com.twitter.android.interestpicker;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class p implements OnClickListener {
    final /* synthetic */ h a;
    final /* synthetic */ m b;

    p(m mVar, h hVar) {
        this.b = mVar;
        this.a = hVar;
    }

    public void onClick(View view) {
        if (this.b.a != null) {
            this.b.a.a(this.a);
        }
    }
}

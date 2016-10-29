package com.twitter.android.interestpicker;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class o implements OnClickListener {
    final /* synthetic */ ba a;
    final /* synthetic */ v b;
    final /* synthetic */ m c;

    o(m mVar, ba baVar, v vVar) {
        this.c = mVar;
        this.a = baVar;
        this.b = vVar;
    }

    public void onClick(View view) {
        this.a.b();
        this.b.c.toggle();
        if (this.c.a != null) {
            this.c.a.a(this.a);
        }
    }
}

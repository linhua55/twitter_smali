package com.twitter.android.timeline;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.widget.ex;

/* compiled from: Twttr */
class ad implements OnClickListener {
    final /* synthetic */ ex a;
    final /* synthetic */ int b;
    final /* synthetic */ Activity c;
    final /* synthetic */ ab d;

    ad(ab abVar, ex exVar, int i, Activity activity) {
        this.d = abVar;
        this.a = exVar;
        this.b = i;
        this.c = activity;
    }

    public void onClick(View view) {
        this.d.f.b(this.a, this.b);
        this.d.g.a(this.c);
    }
}

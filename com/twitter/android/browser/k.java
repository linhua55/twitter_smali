package com.twitter.android.browser;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.TextView;

/* compiled from: Twttr */
class k implements OnClickListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ FrameLayout b;
    final /* synthetic */ TextView c;
    final /* synthetic */ j d;

    k(j jVar, Activity activity, FrameLayout frameLayout, TextView textView) {
        this.d = jVar;
        this.a = activity;
        this.b = frameLayout;
        this.c = textView;
    }

    public void onClick(View view) {
        j.a(this.a, this.b);
        this.c.setOnClickListener(null);
    }
}

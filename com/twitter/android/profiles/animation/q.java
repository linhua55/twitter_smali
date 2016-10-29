package com.twitter.android.profiles.animation;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.twitter.library.widget.ah;

/* compiled from: Twttr */
class q implements ah {
    final /* synthetic */ View a;
    final /* synthetic */ p b;

    q(p pVar, View view) {
        this.b = pVar;
        this.a = view;
    }

    public void a() {
        new Handler(Looper.getMainLooper()).postDelayed(new r(this), this.b.a.b);
    }
}

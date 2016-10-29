package com.twitter.android.moments.ui.fullscreen;

import android.os.Build.VERSION;
import com.twitter.util.c;
import com.twitter.util.collection.x;
import crr;

/* compiled from: Twttr */
class by implements crr {
    final /* synthetic */ bt a;

    by(bt btVar) {
        this.a = btVar;
    }

    public void a() {
        if (VERSION.SDK_INT >= 19) {
            c.a(bt.a(this.a).getWindow().getDecorView());
        }
        if (!bt.a(this.a).isFinishing()) {
            if (bt.d(this.a) != null) {
                bt.d(this.a).setBackgroundColor(-16777216);
            }
            if (bt.e(this.a) != null) {
                bt.a(this.a, bt.e(this.a), bt.f(this.a), x.a(Integer.valueOf(bt.g(this.a))));
                bt.a(this.a, null);
            }
        }
    }

    public void b() {
    }
}

package com.twitter.library.client;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import bmy;
import bne;
import com.twitter.app.common.util.h;

/* compiled from: Twttr */
public class bt implements h {
    private final Handler a;
    private final Context b;
    private final bg c;
    private final az d;

    public bt(Context context) {
        this.a = new Handler(Looper.getMainLooper());
        this.b = context;
        this.c = bg.a();
        this.d = az.a(this.b);
    }

    public void a(Activity activity) {
    }

    public void b(Activity activity) {
        this.a.postDelayed(new bu(this), 15000);
    }

    private void a() {
        bmy a = bne.a(this.b, this.c.c(), false);
        if (a != null) {
            this.d.a(a);
        }
    }
}

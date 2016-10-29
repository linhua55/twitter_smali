package com.twitter.library.media.util;

import android.content.Context;
import android.media.AudioManager.OnAudioFocusChangeListener;

/* compiled from: Twttr */
public class b {
    private static b e;
    final g a;
    final OnAudioFocusChangeListener b;
    boolean c;
    int d;
    private final e f;

    public static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (e == null) {
                e = new b(context.getApplicationContext());
            }
            bVar = e;
        }
        return bVar;
    }

    b(Context context) {
        this.a = new g();
        this.b = new c(this);
        this.f = new f(null);
    }

    public boolean a(d dVar) {
        boolean z = true;
        if (!this.c) {
            if (a().a(this.b, 3, 1) != 1) {
                z = false;
            }
            this.c = z;
        }
        if (this.c) {
            this.a.a(dVar);
        }
        return this.c;
    }

    public void b(d dVar) {
        this.a.b(dVar);
        if (this.c && !this.a.f()) {
            b();
        }
    }

    private void b() {
        if (this.c) {
            a().a(this.b);
            this.c = false;
        }
        this.a.e();
    }

    public static float a(int i, int i2) {
        return (float) (1.0d - (Math.log((double) ((i - i2) + 1)) / Math.log((double) (i + 1))));
    }

    e a() {
        return this.f;
    }
}

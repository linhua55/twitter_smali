package com.twitter.android.initialization;

import android.graphics.Bitmap;
import com.twitter.media.util.a;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class k implements e<Bitmap> {
    private int a;
    private long b;

    private k() {
    }

    public void a(Bitmap bitmap) {
        this.a++;
        this.b += (long) a.b(bitmap);
    }

    public int a() {
        return this.a;
    }

    public long b() {
        return this.b;
    }

    public void c() {
        this.a = 0;
        this.b = 0;
    }
}

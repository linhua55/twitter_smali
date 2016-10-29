package com.twitter.library.media.fresco;

import android.content.Context;
import com.twitter.util.c;
import defpackage.bz;
import ex;

/* compiled from: Twttr */
public class a implements bz<ex> {
    private final Context a;

    public /* synthetic */ Object a() {
        return b();
    }

    public a(Context context) {
        this.a = context;
    }

    public ex b() {
        return new ex(c(), Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
    }

    private int c() {
        int min = Math.min(c.a(this.a), Integer.MAX_VALUE);
        if (min < 33554432) {
            return 4194304;
        }
        if (min < 67108864) {
            return 6291456;
        }
        return 33554432;
    }
}

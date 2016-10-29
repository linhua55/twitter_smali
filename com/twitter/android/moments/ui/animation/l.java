package com.twitter.android.moments.ui.animation;

import android.content.Context;
import atn;
import java.io.File;
import rx.t;

/* compiled from: Twttr */
class l extends atn<String, File, k> {
    private final Context a;
    private final String b;
    private final File c;

    l(Context context, String str, File file) {
        this.a = context;
        this.b = str;
        this.c = file;
    }

    protected File a(k kVar) {
        return this.c;
    }

    protected k a(String str) {
        return new k(this.a, this.b, str, this.c);
    }

    protected t b() {
        return c();
    }
}

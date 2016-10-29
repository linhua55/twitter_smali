package com.twitter.android.moments.ui.maker.navigation;

import com.twitter.util.object.b;
import rx.w;

/* compiled from: Twttr */
public class d implements y {
    public static b<v, x> a;
    private final b<v, x> b;

    static {
        a = new e();
    }

    public d(b<v, x> bVar) {
        this.b = bVar;
    }

    public w<Void> a(v vVar) {
        return ((x) this.b.a(vVar)).a();
    }
}

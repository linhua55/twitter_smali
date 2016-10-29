package com.twitter.android.moments.ui.maker.navigation;

import com.twitter.util.object.e;

/* compiled from: Twttr */
public class v<S1 extends u, S2 extends u, TS extends z> {
    public final S1 a;
    public final S2 b;
    public final TS c;

    public static <S1 extends u, S2 extends u, TS extends z> w<S1, S2, TS> a() {
        return new w();
    }

    public v(w<S1, S2, TS> wVar) {
        this.a = wVar.a;
        this.b = (u) e.a(wVar.b);
        this.c = (z) e.a(wVar.c);
    }
}

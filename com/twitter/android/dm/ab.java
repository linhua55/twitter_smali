package com.twitter.android.dm;

import android.view.View;

/* compiled from: Twttr */
public class ab implements as {
    private final View b;
    private final View c;
    private final View d;

    public ab(View view) {
        this.b = view;
        this.c = view.findViewById(2131953284);
        this.d = view.findViewById(2131953283);
    }

    public void a(ao aoVar) {
        i.a(this.d, 300);
        i.a(this.c, 300);
    }

    public void b(ao aoVar) {
        int i = aoVar.b ? 0 : 300;
        int a = a();
        i.a(this.c, i, a);
        i.a(this.d, i, a);
    }

    private int a() {
        return this.b.getHeight();
    }
}

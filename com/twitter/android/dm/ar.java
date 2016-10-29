package com.twitter.android.dm;

import android.view.View;
import com.twitter.util.d;

/* compiled from: Twttr */
public class ar implements as {
    private final View b;
    private final View c;
    private final View d;
    private final View e;

    public ar(View view) {
        this.e = view;
        this.b = view.findViewById(2131952265);
        this.c = view.findViewById(2131953282);
        this.d = view.findViewById(2131952568);
    }

    public void a(ao aoVar) {
        int i = 300;
        if (aoVar.e) {
            d.a(this.d, this.b, 150);
        } else {
            d.a(this.b, this.d, 300);
        }
        View view = this.c;
        if (aoVar.b) {
            i = 0;
        }
        i.a(view, i);
    }

    public void b(ao aoVar) {
        i.b(this.c, 300, a());
    }

    private int a() {
        return this.e.getHeight();
    }
}

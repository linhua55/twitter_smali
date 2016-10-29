package com.twitter.platform;

import com.twitter.util.y;

/* compiled from: Twttr */
public class m extends y<p> {
    private static final m a;
    private TwRadioType b;

    public m() {
        this.b = TwRadioType.b;
    }

    static {
        a = new m();
    }

    public static m a() {
        return a;
    }

    public void a(p pVar) {
        if (pVar != null) {
            this.b = pVar.a();
        }
        super.a((Object) pVar);
    }

    public TwRadioType b() {
        return this.b;
    }
}

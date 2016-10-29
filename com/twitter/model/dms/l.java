package com.twitter.model.dms;

import cgl;
import com.twitter.config.d;

/* compiled from: Twttr */
public abstract class l extends c {
    protected final cgl c;
    private final boolean d;

    public abstract String j();

    public abstract long k();

    protected l(m mVar) {
        super(mVar);
        this.c = mVar.b;
        this.d = d.a("dm_cards_enabled");
    }

    public boolean l() {
        return this.d;
    }

    public boolean m() {
        return "2586390716:feedback_nps".equals(j()) || "2586390716:feedback_csat".equals(j());
    }

    public <T> T a(String str, Class<T> cls) {
        if (this.c != null) {
            return this.c.a(str, cls);
        }
        return null;
    }

    public int a() {
        return 5;
    }
}

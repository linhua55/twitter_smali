package com.twitter.model.dms;

import com.twitter.config.d;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class p extends s {
    public static final n<p> d;
    private final boolean e;

    static {
        d = new r();
    }

    public p(q qVar) {
        super(qVar);
        this.e = d.a("b2c_csat_feedback_in_dm_enabled");
    }

    public String j() {
        return "2586390716:feedback_csat";
    }

    public boolean l() {
        return super.l() && this.e;
    }
}

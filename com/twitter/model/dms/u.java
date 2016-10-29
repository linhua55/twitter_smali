package com.twitter.model.dms;

import com.twitter.config.d;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class u extends s {
    public static final n<u> d;
    private final boolean e;

    static {
        d = new w();
    }

    public u(v vVar) {
        super(vVar);
        this.e = d.a("b2c_nps_feedback_in_dm_enabled");
    }

    public String j() {
        return "2586390716:feedback_nps";
    }

    public boolean l() {
        return super.l() && this.e;
    }
}

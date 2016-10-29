package com.twitter.android.dm.cards.dmfeedbackcard;

import android.content.Context;
import caw;
import cly;
import com.twitter.config.d;
import com.twitter.model.dms.s;
import com.twitter.util.aj;
import com.twitter.util.al;
import com.twitter.util.collection.CollectionUtils;
import xa;

/* compiled from: Twttr */
public class c extends xa {
    private static final int[] g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final String l;
    private final long m;
    private final boolean n;
    private final Long o;
    private final int p;
    private final int q;

    static {
        g = new int[]{0, 1, 2, 3};
    }

    public c(Context context, String str, long j, s sVar, cly cly, String str2, String str3, String str4) {
        super(context, str, j, sVar, cly);
        this.p = "2586390716:feedback_nps".equals(sVar.j()) ? 1 : 2;
        this.h = str2;
        this.i = str3;
        this.j = str4;
        this.m = sVar.n();
        this.k = sVar.o();
        long j2 = 0;
        if (a.a()) {
            j2 = aj.a((String) sVar.a("expire_at_timestamp", String.class), 0);
        }
        this.o = j2 > 0 ? Long.valueOf(j2) : null;
        this.l = u();
        boolean z = aj.b(j()) && aj.b(l()) && aj.b(n()) && aj.b(o());
        this.n = z;
        this.q = this.p == 1 ? d.a("b2c_feedback_display_tweet_button_min_score_nps", 0) : d.a("b2c_feedback_display_tweet_button_min_score_csat", 1);
    }

    public long b() {
        return this.m;
    }

    public String c() {
        return this.c;
    }

    public cly d() {
        return this.b;
    }

    public int e() {
        if (!this.n) {
            return -1;
        }
        if (v()) {
            return 5;
        }
        if (i()) {
            return 4;
        }
        if (f()) {
            return 3;
        }
        if (h() != -1) {
            return 2;
        }
        return this.p == 1 ? 0 : 1;
    }

    public boolean f() {
        Boolean bool = (Boolean) this.a.a("text_submitted", Boolean.class);
        return (bool != null && bool.booleanValue()) || aj.b(g());
    }

    public String g() {
        return caw.a("text_submitted", this.b);
    }

    public int h() {
        String str = (String) this.a.a("score", String.class);
        if (str != null) {
            return aj.d(str, -1);
        }
        return aj.d(caw.a("score", this.b), -1);
    }

    public boolean i() {
        Boolean bool = (Boolean) this.a.a("dismissed", Boolean.class);
        return (bool != null && bool.booleanValue()) || Boolean.parseBoolean(caw.a("dismissed", this.b));
    }

    public String j() {
        return this.h;
    }

    private String t() {
        return this.k;
    }

    public String k() {
        return aj.b(t()) ? t() : j();
    }

    public String l() {
        return this.i;
    }

    public String m() {
        return this.j;
    }

    public String n() {
        return (String) this.a.a("privacy_url", String.class);
    }

    public String o() {
        return this.l;
    }

    public String p() {
        return a.a(this.f.getResources(), h(), this.a.j());
    }

    public String q() {
        return this.p == 1 ? "nps_feedback_survey" : "csat_feedback_survey";
    }

    public boolean a(boolean z, boolean z2) {
        if (z || z2) {
            return false;
        }
        return r();
    }

    public boolean r() {
        return CollectionUtils.a(g, e());
    }

    public boolean s() {
        return h() >= this.q;
    }

    private String u() {
        int d = aj.d((String) this.a.a("question_variant_id", String.class), -1);
        String[] stringArray;
        if (this.p == 2) {
            stringArray = this.f.getResources().getStringArray(2131427330);
            if (d < stringArray.length && d >= 0) {
                return String.format(stringArray[d], new Object[]{k()});
            }
        } else if (this.p == 1) {
            stringArray = this.f.getResources().getStringArray(2131427332);
            if (d >= stringArray.length || d < 0) {
                return String.format(stringArray[0], new Object[]{k()});
            }
            return String.format(stringArray[d], new Object[]{k()});
        }
        return null;
    }

    private boolean v() {
        return this.o != null && this.o.longValue() < al.c();
    }
}

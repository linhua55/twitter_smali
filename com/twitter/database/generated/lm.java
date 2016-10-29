package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.azq;
import defpackage.azr;
import java.util.Collection;

/* compiled from: Twttr */
public final class lm extends o implements azq {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<azr> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "topic", "filter_name", "filter_location", "filter_follow"};
    }

    @aoa
    public lm(f fVar) {
        super(fVar);
        this.e = new lp(this, this.e_);
    }

    public final String a() {
        return "one_click";
    }

    public final String b() {
        return "CREATE TABLE one_click (\n\t_id INTEGER PRIMARY KEY,\n\ttopic TEXT,\n\tfilter_name TEXT,\n\tfilter_location TEXT,\n\tfilter_follow INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<azr> e() {
        return this.e;
    }
}

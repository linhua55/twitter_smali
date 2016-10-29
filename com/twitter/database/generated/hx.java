package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.ayc;
import defpackage.ayd;
import defpackage.aye;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class hx extends o implements ayc {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<ayd> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[0];
        d = new String[]{"_id", "moment_id", "is_updated", "is_read"};
        b.add(aye.class);
    }

    @aoa
    public hx(f fVar) {
        super(fVar);
        this.e = new ia(this, this.e_);
    }

    public final String a() {
        return "moments_guide_user_states";
    }

    public final String b() {
        return "CREATE TABLE moments_guide_user_states (\n\t_id INTEGER PRIMARY KEY,\n\tmoment_id INTEGER NOT NULL,\n\tis_updated INTEGER,\n\tis_read INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<ayd> e() {
        return this.e;
    }
}

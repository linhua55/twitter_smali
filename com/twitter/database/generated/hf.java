package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.axs;
import defpackage.axt;
import defpackage.aye;
import defpackage.ayi;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class hf extends o implements axs {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<axt> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(2);
        c = new e[]{new e("moment_sports_events_key_index", "CREATE INDEX moment_sports_events_key_index ON moment_sports_events (\n\tkey\n);")};
        d = new String[]{"_id", "key", "value"};
        b.add(ayi.class);
        b.add(aye.class);
    }

    @aoa
    public hf(f fVar) {
        super(fVar);
        this.e = new hi(this, this.e_);
    }

    public final String a() {
        return "moment_sports_events";
    }

    public final String b() {
        return "CREATE TABLE moment_sports_events (\n\t_id INTEGER PRIMARY KEY,\n\tkey TEXT UNIQUE ON CONFLICT REPLACE NOT NULL,\n\tvalue BLOB\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<axt> e() {
        return this.e;
    }
}

package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.avh;
import defpackage.avi;
import java.util.Collection;

/* compiled from: Twttr */
public final class bz extends o implements avh {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<avi> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "user_id", "business_profile", "last_synced"};
    }

    @aoa
    public bz(f fVar) {
        super(fVar);
        this.e = new cc(this, this.e_);
    }

    public final String a() {
        return "business_profiles";
    }

    public final String b() {
        return "CREATE TABLE business_profiles (\n\t_id INTEGER PRIMARY KEY,\n\tuser_id INTEGER UNIQUE NOT NULL,\n\tbusiness_profile BLOB /*NULLABLE*/,\n\tlast_synced INTEGER NOT NULL\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<avi> e() {
        return this.e;
    }
}

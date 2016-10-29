package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.avf;
import defpackage.avg;
import java.util.Collection;

/* compiled from: Twttr */
public final class bv extends o implements avf {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<avg> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "promotable_users", "last_synced"};
    }

    @aoa
    public bv(f fVar) {
        super(fVar);
        this.e = new by(this, this.e_);
    }

    public final String a() {
        return "ads_account_permissions";
    }

    public final String b() {
        return "CREATE TABLE ads_account_permissions (\n\t_id INTEGER PRIMARY KEY,\n\tpromotable_users BLOB /*NULLABLE*/,\n\tlast_synced INTEGER NOT NULL\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<avg> e() {
        return this.e;
    }
}

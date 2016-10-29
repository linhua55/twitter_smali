package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.awb;
import defpackage.awc;
import java.util.Collection;

/* compiled from: Twttr */
public final class dj extends o implements awb {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<awc> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[]{new e("cursors_user_index", "CREATE INDEX cursors_user_index ON cursors (\n\tkind,\n\ttype,\n\towner_id\n);")};
        d = new String[]{"_id", "kind", "type", "owner_id", "ref_id", "next"};
    }

    @aoa
    public dj(f fVar) {
        super(fVar);
        this.e = new dm(this, this.e_);
    }

    public final String a() {
        return "cursors";
    }

    public final String b() {
        return "CREATE TABLE cursors (\n\t_id INTEGER PRIMARY KEY,\n\tkind INTEGER,\n\ttype INTEGER,\n\towner_id INTEGER,\n\tref_id INTEGER,\n\tnext TEXT\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<awc> e() {
        return this.e;
    }
}

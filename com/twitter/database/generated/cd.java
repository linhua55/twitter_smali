package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.avj;
import defpackage.avk;
import java.util.Collection;

/* compiled from: Twttr */
public final class cd extends o implements avj {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<avk> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "order_id", "ordered_at", "data"};
    }

    @aoa
    public cd(f fVar) {
        super(fVar);
        this.e = new cg(this, this.e_);
    }

    public final String a() {
        return "order_history";
    }

    public final String b() {
        return "CREATE TABLE order_history (\n\t_id INTEGER PRIMARY KEY,\n\torder_id INTEGER,\n\tordered_at INTEGER,\n\tdata BLOB\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<avk> e() {
        return this.e;
    }
}

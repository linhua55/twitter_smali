package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.aza;
import defpackage.azb;
import java.util.Collection;

/* compiled from: Twttr */
public final class kg extends o implements aza {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<azb> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "key", "value", "ttl"};
    }

    @aoa
    public kg(f fVar) {
        super(fVar);
        this.e = new kj(this, this.e_);
    }

    public final String a() {
        return "modules_cache";
    }

    public final String b() {
        return "CREATE TABLE modules_cache (\n\t_id INTEGER PRIMARY KEY,\n\tkey TEXT UNIQUE ON CONFLICT REPLACE NOT NULL,\n\tvalue BLOB,\n\tttl INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<azb> e() {
        return this.e;
    }
}

package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.aym;
import defpackage.ayn;
import java.util.Collection;

/* compiled from: Twttr */
public final class jj extends o implements aym {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<ayn> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[]{new e("pivot_guide_impression_ids_key_index", "CREATE INDEX pivot_guide_impression_ids_key_index ON pivot_guide_impression_ids (\n\tkey\n);")};
        d = new String[]{"_id", "key", "value"};
    }

    @aoa
    public jj(f fVar) {
        super(fVar);
        this.e = new jm(this, this.e_);
    }

    public final String a() {
        return "pivot_guide_impression_ids";
    }

    public final String b() {
        return "CREATE TABLE pivot_guide_impression_ids (\n\t_id INTEGER PRIMARY KEY,\n\tkey TEXT UNIQUE ON CONFLICT REPLACE NOT NULL,\n\tvalue BLOB\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<ayn> e() {
        return this.e;
    }
}

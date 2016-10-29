package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.avn;
import defpackage.avo;
import java.util.Collection;

/* compiled from: Twttr */
public final class cj extends o implements avn {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<avo> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[]{new e("communities_id_index", "CREATE INDEX communities_id_index ON communities (\n\tcommunity_id\n);")};
        d = new String[]{"_id", "community_id", "updated_at", "name", "description", "image_url"};
    }

    @aoa
    public cj(f fVar) {
        super(fVar);
        this.e = new cm(this, this.e_);
    }

    public final String a() {
        return "communities";
    }

    public final String b() {
        return "CREATE TABLE communities (\n\t_id INTEGER PRIMARY KEY,\n\tcommunity_id INTEGER UNIQUE ON CONFLICT REPLACE NOT NULL,\n\tupdated_at INTEGER NOT NULL,\n\tname TEXT,\n\tdescription TEXT,\n\timage_url TEXT\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<avo> e() {
        return this.e;
    }
}

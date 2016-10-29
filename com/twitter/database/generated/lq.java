package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.ayy;
import defpackage.azs;
import defpackage.azt;
import defpackage.bae;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class lq extends o implements azs {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<azt> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(2);
        c = new e[]{new e("search_queries_type_name_index", "CREATE INDEX search_queries_type_name_index ON search_queries (\n\ttype,\n\tname,\n\tquery\n);")};
        d = new String[]{"_id", "type", "name", "query", "query_id", "time", "latitude", "longitude", "radius", "location", "pc", "cluster_titles"};
        b.add(bae.class);
        b.add(ayy.class);
    }

    @aoa
    public lq(f fVar) {
        super(fVar);
        this.e = new lt(this, this.e_);
    }

    public final String a() {
        return "search_queries";
    }

    public final String b() {
        return "CREATE TABLE search_queries (\n\t_id INTEGER PRIMARY KEY,\n\ttype INTEGER,\n\tname TEXT NOT NULL,\n\tquery TEXT NOT NULL,\n\tquery_id INTEGER,\n\ttime INTEGER,\n\tlatitude REAL /*NULLABLE*/,\n\tlongitude REAL /*NULLABLE*/,\n\tradius REAL /*NULLABLE*/,\n\tlocation TEXT,\n\tpc BLOB /*NULLABLE*/,\n\tcluster_titles BLOB /*NULLABLE*/\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<azt> e() {
        return this.e;
    }
}

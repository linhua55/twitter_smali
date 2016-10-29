package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.ayg;
import defpackage.ayh;
import defpackage.ayi;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class ip extends o implements ayg {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<ayh> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("moments_pages_moment_id_index", "CREATE INDEX moments_pages_moment_id_index ON moments_pages (\n\tmoment_id\n);")};
        d = new String[]{"_id", "moment_id", "page_id", "tweet_id", "page_number", "last_read_timestamp", "content_version", "capsule_page_data"};
        b.add(ayi.class);
    }

    @aoa
    public ip(f fVar) {
        super(fVar);
        this.e = new is(this, this.e_);
    }

    public final String a() {
        return "moments_pages";
    }

    public final String b() {
        return "CREATE TABLE moments_pages (\n\t_id INTEGER PRIMARY KEY,\n\tmoment_id INTEGER,\n\tpage_id TEXT NOT NULL,\n\ttweet_id INTEGER,\n\tpage_number INTEGER DEFAULT 0,\n\tlast_read_timestamp INTEGER /*NULLABLE*/,\n\tcontent_version INTEGER,\n\tcapsule_page_data BLOB NOT NULL\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<ayh> e() {
        return this.e;
    }
}

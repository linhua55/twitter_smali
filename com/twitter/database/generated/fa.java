package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.awr;
import defpackage.aws;
import defpackage.axj;
import defpackage.azw;
import defpackage.bbg;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class fa extends o implements awr {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<aws> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(3);
        c = new e[]{new e("topics_id_owner_index", "CREATE INDEX topics_id_owner_index ON topics (\n\tev_id,\n\tev_owner_id\n);")};
        d = new String[]{"_id", "ev_id", "ev_type", "ev_query", "ev_seed_hashtag", "ev_title", "ev_subtitle", "ev_view_url", "ev_status", "ev_image_url", "ev_explanation", "ev_tweet_count", "ev_start_time", "ev_owner_id", "ev_pc", "ev_content", "ev_hash"};
        b.add(azw.class);
        b.add(axj.class);
        b.add(bbg.class);
    }

    @aoa
    public fa(f fVar) {
        super(fVar);
        this.e = new fd(this, this.e_);
    }

    public final String a() {
        return "topics";
    }

    public final String b() {
        return "CREATE TABLE topics (\n\t_id INTEGER PRIMARY KEY,\n\tev_id TEXT UNIQUE NOT NULL,\n\tev_type INTEGER,\n\tev_query TEXT NOT NULL,\n\tev_seed_hashtag TEXT,\n\tev_title TEXT,\n\tev_subtitle TEXT,\n\tev_view_url TEXT,\n\tev_status TEXT,\n\tev_image_url TEXT,\n\tev_explanation TEXT,\n\tev_tweet_count INTEGER,\n\tev_start_time INTEGER,\n\tev_owner_id INTEGER,\n\tev_pc BLOB /*NULLABLE*/,\n\tev_content BLOB,\n\tev_hash INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<aws> e() {
        return this.e;
    }
}

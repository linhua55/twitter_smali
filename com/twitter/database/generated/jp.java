package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.ayq;
import defpackage.ayr;
import java.util.Collection;

/* compiled from: Twttr */
public final class jp extends o implements ayq {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<ayr> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "country", "language", "topic_id", "news_id", "title", "image_url", "author_name", "article_description", "article_url", "tweet_count", "start_time", "news_id_hash"};
    }

    @aoa
    public jp(f fVar) {
        super(fVar);
        this.e = new js(this, this.e_);
    }

    public final String a() {
        return "news";
    }

    public final String b() {
        return "CREATE TABLE news (\n\t_id INTEGER PRIMARY KEY AUTOINCREMENT,\n\tcountry TEXT,\n\tlanguage TEXT,\n\ttopic_id INTEGER,\n\tnews_id TEXT,\n\ttitle TEXT,\n\timage_url TEXT,\n\tauthor_name TEXT,\n\tarticle_description TEXT,\n\tarticle_url TEXT,\n\ttweet_count INTEGER,\n\tstart_time INTEGER,\n\tnews_id_hash INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<ayr> e() {
        return this.e;
    }
}

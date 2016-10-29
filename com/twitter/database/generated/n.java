package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.database.schema.a;
import com.twitter.database.schema.b;
import com.twitter.util.collection.ar;
import java.util.Collection;

/* compiled from: Twttr */
public final class n extends o implements a {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<b> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "content", "in_r_status_id", "updated_at", "sending_state", "pc", "quoted_tweet_data", "media", "prepared_media_ids", "media_prepared_at", "geo_tag", "card_url", "poll", "reply_prefill_disabled"};
    }

    @aoa
    public n(f fVar) {
        super(fVar);
        this.e = new q(this, this.e_);
    }

    public final String a() {
        return "drafts";
    }

    public final String b() {
        return "CREATE TABLE drafts (\n\t_id INTEGER PRIMARY KEY AUTOINCREMENT,\n\tcontent TEXT,\n\tin_r_status_id INTEGER,\n\tupdated_at INTEGER,\n\tsending_state INTEGER DEFAULT 0,\n\tpc BLOB /*NULLABLE*/,\n\tquoted_tweet_data BLOB,\n\tmedia BLOB,\n\tprepared_media_ids BLOB /*NULLABLE*/,\n\tmedia_prepared_at INTEGER,\n\tgeo_tag BLOB,\n\tcard_url TEXT,\n\tpoll BLOB /*NULLABLE*/,\n\treply_prefill_disabled INTEGER DEFAULT 0\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<b> e() {
        return this.e;
    }
}

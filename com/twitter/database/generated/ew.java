package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.awj;
import defpackage.awp;
import defpackage.awq;
import defpackage.ayi;
import defpackage.bbg;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class ew extends o implements awp {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<awq> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(3);
        c = new e[0];
        d = new String[]{"_id", "status_id", "author_id", "content", "r_content", "source", "created", "in_r_user_id", "in_r_status_id", "in_r_screen_name", "favorited", "retweeted", "favorite_count", "retweet_count", "view_count", "flags", "latitude", "longitude", "place_data", "entities", "card", "lang", "supplemental_language", "quoted_tweet_data", "quoted_tweet_id"};
        b.add(awj.class);
        b.add(ayi.class);
        b.add(bbg.class);
    }

    @aoa
    public ew(f fVar) {
        super(fVar);
        this.e = new ez(this, this.e_);
    }

    public final String a() {
        return "statuses";
    }

    public final String b() {
        return "CREATE TABLE statuses (\n\t_id INTEGER PRIMARY KEY,\n\tstatus_id INTEGER UNIQUE NOT NULL,\n\tauthor_id INTEGER,\n\tcontent TEXT,\n\tr_content TEXT,\n\tsource TEXT,\n\tcreated INTEGER,\n\tin_r_user_id INTEGER,\n\tin_r_status_id INTEGER,\n\tin_r_screen_name TEXT,\n\tfavorited INTEGER,\n\tretweeted INTEGER,\n\tfavorite_count INTEGER,\n\tretweet_count INTEGER,\n\tview_count INTEGER,\n\tflags INTEGER,\n\tlatitude TEXT,\n\tlongitude TEXT,\n\tplace_data BLOB /*NULLABLE*/,\n\tentities TEXT,\n\tcard BLOB /*NULLABLE*/,\n\tlang TEXT,\n\tsupplemental_language TEXT,\n\tquoted_tweet_data BLOB,\n\tquoted_tweet_id INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<awq> e() {
        return this.e;
    }
}

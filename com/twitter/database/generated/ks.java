package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.azi;
import defpackage.azj;
import defpackage.azk;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class ks extends o implements azi {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<azj> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("ads_ad_id_index", "CREATE INDEX ads_ad_id_index ON ads (\n\tad_id\n);")};
        d = new String[]{"_id", "ad_id", "tweet_id", "tag", "type", "sort_index", "slot_id", "assigned_slot_id", "expiration_interval_secs", "last_seen_timestamp", "created_at"};
        b.add(azk.class);
    }

    @aoa
    public ks(f fVar) {
        super(fVar);
        this.e = new kv(this, this.e_);
    }

    public final String a() {
        return "ads";
    }

    public final String b() {
        return "CREATE TABLE ads (\n\t_id INTEGER PRIMARY KEY,\n\tad_id INTEGER NOT NULL,\n\ttweet_id INTEGER NOT NULL,\n\ttag INTEGER NOT NULL,\n\ttype TEXT NOT NULL,\n\tsort_index INTEGER NOT NULL,\n\tslot_id TEXT,\n\tassigned_slot_id TEXT,\n\texpiration_interval_secs INTEGER,\n\tlast_seen_timestamp INTEGER,\n\tcreated_at INTEGER NOT NULL\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<azj> e() {
        return this.e;
    }
}

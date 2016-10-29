package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.awf;
import defpackage.awg;
import defpackage.awj;
import defpackage.bbg;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class dr extends o implements awf {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<awg> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(2);
        c = new e[]{new e("status_groups_access_index", "CREATE INDEX status_groups_access_index ON status_groups (\n\ttype,\n\towner_id,\n\ttag,\n\tg_status_id\n);")};
        d = new String[]{"_id", "tweet_type", "type", "sender_id", "owner_id", "tag", "g_status_id", "ref_id", "is_read", "is_last", "timeline", "page", "updated_at", "pc", "g_flags", "preview_draft_id", "preview_media", "tweet_pivots"};
        b.add(awj.class);
        b.add(bbg.class);
    }

    @aoa
    public dr(f fVar) {
        super(fVar);
        this.e = new du(this, this.e_);
    }

    public final String a() {
        return "status_groups";
    }

    public final String b() {
        return "CREATE TABLE status_groups (\n\t_id INTEGER PRIMARY KEY,\n\ttweet_type INTEGER DEFAULT 0,\n\ttype INTEGER,\n\tsender_id INTEGER,\n\towner_id INTEGER,\n\ttag INTEGER,\n\tg_status_id INTEGER,\n\tref_id INTEGER,\n\tis_read INTEGER,\n\tis_last INTEGER,\n\ttimeline INTEGER,\n\tpage INTEGER,\n\tupdated_at INTEGER,\n\tpc BLOB /*NULLABLE*/,\n\tg_flags INTEGER,\n\tpreview_draft_id INTEGER,\n\tpreview_media BLOB,\n\ttweet_pivots BLOB /*NULLABLE*/\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<awg> e() {
        return this.e;
    }
}

package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.axw;
import defpackage.axx;
import defpackage.aye;
import defpackage.ayi;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class hl extends o implements axw {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<axx> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(2);
        c = new e[0];
        d = new String[]{"_id", "title", "can_subscribe", "is_live", "is_sensitive", "subcategory_string", "subcategory_favicon_url", "time_string", "duration_string", "is_subscribed", "description", "moment_url", "num_subscribers", "author_info", "promoted_content", "event_id", "event_type", "capsule_content_version"};
        b.add(ayi.class);
        b.add(aye.class);
    }

    @aoa
    public hl(f fVar) {
        super(fVar);
        this.e = new ho(this, this.e_);
    }

    public final String a() {
        return "moments";
    }

    public final String b() {
        return "CREATE TABLE moments (\n\t_id INTEGER PRIMARY KEY,\n\ttitle TEXT NOT NULL,\n\tcan_subscribe INTEGER,\n\tis_live INTEGER,\n\tis_sensitive INTEGER,\n\tsubcategory_string TEXT,\n\tsubcategory_favicon_url TEXT,\n\ttime_string TEXT,\n\tduration_string TEXT,\n\tis_subscribed INTEGER,\n\tdescription TEXT NOT NULL,\n\tmoment_url TEXT,\n\tnum_subscribers INTEGER,\n\tauthor_info BLOB,\n\tpromoted_content BLOB,\n\tevent_id TEXT,\n\tevent_type TEXT,\n\tcapsule_content_version INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<axx> e() {
        return this.e;
    }
}

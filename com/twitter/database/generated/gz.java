package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.axl;
import defpackage.axm;
import java.util.Collection;

/* compiled from: Twttr */
public final class gz extends o implements axl {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<axm> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[]{new e("live_video_events_event_id_index", "CREATE INDEX live_video_events_event_id_index ON live_video_events (\n\tevent_id\n);")};
        d = new String[]{"_id", "event_id", "start_time", "end_time", "title", "hashtag", "media_entity", "updated_at"};
    }

    @aoa
    public gz(f fVar) {
        super(fVar);
        this.e = new hc(this, this.e_);
    }

    public final String a() {
        return "live_video_events";
    }

    public final String b() {
        return "CREATE TABLE live_video_events (\n\t_id INTEGER PRIMARY KEY,\n\tevent_id TEXT UNIQUE ON CONFLICT REPLACE NOT NULL,\n\tstart_time INTEGER NOT NULL,\n\tend_time INTEGER NOT NULL,\n\ttitle TEXT NOT NULL,\n\thashtag TEXT NOT NULL,\n\tmedia_entity BLOB NOT NULL,\n\tupdated_at INTEGER NOT NULL\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<axm> e() {
        return this.e;
    }
}

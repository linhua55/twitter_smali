package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.aze;
import defpackage.azf;
import java.util.Collection;

/* compiled from: Twttr */
public final class km extends o implements aze {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<azf> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"impression_id", "event", "is_earned", "trend_id", "num_retries", "url", "video_playlist_url", "video_content_uuid", "video_content_type", "video_cta_url", "video_cta_app_id", "video_cta_app_name", "card_event", "engagement_metadata"};
    }

    @aoa
    public km(f fVar) {
        super(fVar);
        this.e = new kp(this, this.e_);
    }

    public final String a() {
        return "promoted_retry";
    }

    public final String b() {
        return "CREATE TABLE promoted_retry (\n\timpression_id TEXT,\n\tevent TEXT NOT NULL,\n\tis_earned INTEGER NOT NULL,\n\ttrend_id INTEGER,\n\tnum_retries INTEGER NOT NULL,\n\turl TEXT,\n\tvideo_playlist_url TEXT,\n\tvideo_content_uuid TEXT,\n\tvideo_content_type TEXT,\n\tvideo_cta_url TEXT,\n\tvideo_cta_app_id TEXT,\n\tvideo_cta_app_name TEXT,\n\tcard_event TEXT,\n\tengagement_metadata TEXT,\n\tPRIMARY KEY (impression_id, event, is_earned, trend_id)\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<azf> e() {
        return this.e;
    }
}

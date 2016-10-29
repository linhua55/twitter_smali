package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.axy;
import defpackage.axz;
import defpackage.aye;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class hp extends o implements axy {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<axz> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("moments_guide_section_id_index", "CREATE INDEX moments_guide_section_id_index ON moments_guide (\n\tsection_id\n);")};
        d = new String[]{"_id", "moment_id", "section_id", "tweet_id", "crop_data", "media_id", "media_url", "media_size", "display_type", "impression_id", "context_string", "context_scribe_info"};
        b.add(aye.class);
    }

    @aoa
    public hp(f fVar) {
        super(fVar);
        this.e = new hs(this, this.e_);
    }

    public final String a() {
        return "moments_guide";
    }

    public final String b() {
        return "CREATE TABLE moments_guide (\n\t_id INTEGER PRIMARY KEY,\n\tmoment_id INTEGER,\n\tsection_id INTEGER,\n\ttweet_id INTEGER,\n\tcrop_data BLOB,\n\tmedia_id INTEGER,\n\tmedia_url TEXT,\n\tmedia_size BLOB,\n\tdisplay_type BLOB,\n\timpression_id INTEGER,\n\tcontext_string TEXT,\n\tcontext_scribe_info BLOB\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<axz> e() {
        return this.e;
    }
}

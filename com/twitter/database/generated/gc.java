package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.axf;
import defpackage.axg;
import defpackage.axh;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class gc extends o implements axf {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<axg> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("stories_notif_index", "CREATE INDEX stories_notif_index ON stories (\n\tstory_tag,\n\tdata_type,\n\tstory_is_read\n);")};
        d = new String[]{"_id", "story_id", "story_order", "story_type", "story_proof_type", "story_proof_addl_count", "data_type", "data_id", "story_is_read", "story_meta_title", "story_meta_subtitle", "story_meta_query", "story_meta_header_img_url", "story_source", "story_impression_info", "story_tag"};
        b.add(axh.class);
    }

    @aoa
    public gc(f fVar) {
        super(fVar);
        this.e = new gf(this, this.e_);
    }

    public final String a() {
        return "stories";
    }

    public final String b() {
        return "CREATE TABLE stories (\n\t_id INTEGER PRIMARY KEY,\n\tstory_id TEXT,\n\tstory_order INTEGER,\n\tstory_type INTEGER,\n\tstory_proof_type INTEGER,\n\tstory_proof_addl_count INTEGER,\n\tdata_type INTEGER,\n\tdata_id INTEGER,\n\tstory_is_read INTEGER,\n\tstory_meta_title TEXT,\n\tstory_meta_subtitle TEXT,\n\tstory_meta_query TEXT,\n\tstory_meta_header_img_url TEXT,\n\tstory_source TEXT,\n\tstory_impression_info TEXT,\n\tstory_tag INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<axg> e() {
        return this.e;
    }
}

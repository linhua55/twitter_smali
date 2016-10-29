package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.bbe;
import defpackage.bbf;
import defpackage.bbg;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class oz extends o implements bbe {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<bbf> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("timeline_type_index", "CREATE INDEX timeline_type_index ON timeline (\n\ttype,\n\tsort_index,\n\tupdated_at\n);")};
        d = new String[]{"_id", "owner_id", "type", "sort_index", "entity_id", "entity_type", "data_type", "data_type_group", "data_type_tag", "timeline_tag", "timeline_group_id", "timeline_scribe_group_id", "data_id", "data", "flags", "updated_at", "data_origin_id", "is_last", "is_read", "scribe_content", "timeline_moment_info", "dismissed", "dismiss_actions", "pinned_header_state"};
        b.add(bbg.class);
    }

    @aoa
    public oz(f fVar) {
        super(fVar);
        this.e = new pc(this, this.e_);
    }

    public final String a() {
        return "timeline";
    }

    public final String b() {
        return "CREATE TABLE timeline (\n\t_id INTEGER PRIMARY KEY AUTOINCREMENT,\n\towner_id INTEGER,\n\ttype INTEGER,\n\tsort_index INTEGER,\n\tentity_id INTEGER,\n\tentity_type INTEGER,\n\tdata_type INTEGER,\n\tdata_type_group INTEGER,\n\tdata_type_tag INTEGER,\n\ttimeline_tag TEXT,\n\ttimeline_group_id INTEGER,\n\ttimeline_scribe_group_id INTEGER,\n\tdata_id INTEGER,\n\tdata BLOB,\n\tflags INTEGER,\n\tupdated_at INTEGER,\n\tdata_origin_id TEXT,\n\tis_last INTEGER,\n\tis_read INTEGER,\n\tscribe_content BLOB /*NULLABLE*/,\n\ttimeline_moment_info BLOB /*NULLABLE*/,\n\tdismissed INTEGER NOT NULL DEFAULT 0,\n\tdismiss_actions INTEGER NOT NULL DEFAULT 0,\n\tpinned_header_state INTEGER NOT NULL DEFAULT 0\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<bbf> e() {
        return this.e;
    }
}

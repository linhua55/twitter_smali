package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.awj;
import defpackage.awl;
import defpackage.awm;
import defpackage.bbg;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class eo extends o implements awl {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<awm> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(2);
        c = new e[]{new e("status_metadata_unique_index", "CREATE INDEX status_metadata_unique_index ON status_metadata (\n\towner_id,\n\tstatus_id,\n\tstatus_group\n);")};
        d = new String[]{"_id", "owner_id", "status_id", "status_group", "status_group_tag", "soc_type", "soc_name", "soc_second_name", "soc_others_count", "soc_fav_count", "soc_rt_count", "reason_icon_type", "reason_text", "highlights"};
        b.add(awj.class);
        b.add(bbg.class);
    }

    @aoa
    public eo(f fVar) {
        super(fVar);
        this.e = new er(this, this.e_);
    }

    public final String a() {
        return "status_metadata";
    }

    public final String b() {
        return "CREATE TABLE status_metadata (\n\t_id INTEGER PRIMARY KEY,\n\towner_id INTEGER NOT NULL,\n\tstatus_id INTEGER NOT NULL,\n\tstatus_group INTEGER NOT NULL,\n\tstatus_group_tag INTEGER NOT NULL,\n\tsoc_type INTEGER,\n\tsoc_name TEXT,\n\tsoc_second_name TEXT,\n\tsoc_others_count INTEGER,\n\tsoc_fav_count INTEGER,\n\tsoc_rt_count INTEGER,\n\treason_icon_type TEXT,\n\treason_text TEXT,\n\thighlights BLOB /*NULLABLE*/\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<awm> e() {
        return this.e;
    }
}

package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.aun;
import defpackage.auo;
import defpackage.aup;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class aq extends o implements aun {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<auo> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("notifications_tab_sort_index", "CREATE INDEX notifications_tab_sort_index ON notifications_tab (\n\tsort_id\n);")};
        d = new String[]{"_id", "type", "data_type", "data_id", "sort_id", "max_position", "min_position", "is_last", "is_unread"};
        b.add(aup.class);
    }

    @aoa
    public aq(f fVar) {
        super(fVar);
        this.e = new at(this, this.e_);
    }

    public final String a() {
        return "notifications_tab";
    }

    public final String b() {
        return "CREATE TABLE notifications_tab (\n\t_id INTEGER PRIMARY KEY,\n\ttype INTEGER NOT NULL,\n\tdata_type INTEGER NOT NULL,\n\tdata_id INTEGER NOT NULL,\n\tsort_id INTEGER NOT NULL,\n\tmax_position INTEGER NOT NULL,\n\tmin_position INTEGER NOT NULL,\n\tis_last INTEGER NOT NULL DEFAULT 0,\n\tis_unread INTEGER NOT NULL DEFAULT 1,\n\tUNIQUE (type, max_position) ON CONFLICT REPLACE\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<auo> e() {
        return this.e;
    }
}

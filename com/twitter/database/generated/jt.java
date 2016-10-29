package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.ays;
import defpackage.ayt;
import java.util.Collection;

/* compiled from: Twttr */
public final class jt extends o implements ays {
    private static final Collection<Class<? extends p>> i;
    private static final e[] j;
    private static final String[] k;
    private final m<ayt> l;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        i = ar.g();
        j = new e[0];
        k = new String[]{"_id", "type", "notif_id", "source_user_name", "s_name", "s_id", "notif_txt", "aggregation_data", "notif_extra_data"};
    }

    @aoa
    public jt(f fVar) {
        super(fVar);
        this.l = new jw(this, this.e_);
    }

    public final String a() {
        return "notifications";
    }

    public final String b() {
        return "CREATE TABLE notifications (\n\t_id INTEGER PRIMARY KEY,\n\ttype INTEGER,\n\tnotif_id INTEGER,\n\tsource_user_name TEXT,\n\ts_name TEXT,\n\ts_id INTEGER,\n\tnotif_txt TEXT,\n\taggregation_data TEXT,\n\tnotif_extra_data BLOB\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return i;
    }

    public final e[] d() {
        return j;
    }

    public final m<ayt> e() {
        return this.l;
    }
}

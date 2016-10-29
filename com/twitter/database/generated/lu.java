package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.azu;
import defpackage.azv;
import defpackage.azw;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class lu extends o implements azu {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<azv> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("search_results_sort_index", "CREATE INDEX search_results_sort_index ON search_results (\n\tsearch_id,\n\ts_type,\n\tdata_type,\n\ttype_id,\n\tpolled,\n\tdata_id\n);")};
        d = new String[]{"_id", "search_id", "s_type", "type_id", "data_type", "data_id", "polled", "related_data"};
        b.add(azw.class);
    }

    @aoa
    public lu(f fVar) {
        super(fVar);
        this.e = new lx(this, this.e_);
    }

    public final String a() {
        return "search_results";
    }

    public final String b() {
        return "CREATE TABLE search_results (\n\t_id INTEGER PRIMARY KEY,\n\tsearch_id INTEGER,\n\ts_type INTEGER,\n\ttype_id INTEGER,\n\tdata_type INTEGER,\n\tdata_id INTEGER,\n\tpolled INTEGER,\n\trelated_data BLOB\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<azv> e() {
        return this.e;
    }
}

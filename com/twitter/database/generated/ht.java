package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.aya;
import defpackage.ayb;
import java.util.Collection;

/* compiled from: Twttr */
public final class ht extends o implements aya {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<ayb> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "category_id", "is_default_category", "category_name", "fetch_timestamp"};
    }

    @aoa
    public ht(f fVar) {
        super(fVar);
        this.e = new hw(this, this.e_);
    }

    public final String a() {
        return "moments_guide_categories";
    }

    public final String b() {
        return "CREATE TABLE moments_guide_categories (\n\t_id INTEGER PRIMARY KEY,\n\tcategory_id TEXT NOT NULL,\n\tis_default_category INTEGER NOT NULL,\n\tcategory_name TEXT NOT NULL,\n\tfetch_timestamp INTEGER NOT NULL\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<ayb> e() {
        return this.e;
    }
}

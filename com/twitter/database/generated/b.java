package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.lru.schema.a;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import java.util.Collection;

/* compiled from: Twttr */
public final class b extends o implements a {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<com.twitter.database.lru.schema.b> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[]{new e("category_id_table_name_index", "CREATE INDEX category_id_table_name_index ON category_id_table (\n\tcategory_name\n);")};
        d = new String[]{"_id", "category_name"};
    }

    @aoa
    public b(f fVar) {
        super(fVar);
        this.e = new e(this, this.e_);
    }

    public final String a() {
        return "category_id_table";
    }

    public final String b() {
        return "CREATE TABLE category_id_table (\n\t_id INTEGER PRIMARY KEY,\n\tcategory_name TEXT NOT NULL\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<com.twitter.database.lru.schema.b> e() {
        return this.e;
    }
}

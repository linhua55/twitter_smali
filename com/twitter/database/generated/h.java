package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.lru.schema.e;
import com.twitter.database.lru.schema.f;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import java.util.Collection;

/* compiled from: Twttr */
public final class h extends o implements e {
    private static final Collection<Class<? extends p>> b;
    private static final com.twitter.database.model.e[] c;
    private static final String[] d;
    private final m<f> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new com.twitter.database.model.e[]{new com.twitter.database.model.e("lru_key_value_table_category_version_key_index", "CREATE INDEX lru_key_value_table_category_version_key_index ON lru_key_value_table (\n\tcategory_id,\n\tversion,\n\tkey\n);")};
        d = new String[]{"_id", "category_id", "version", "expiry_timestamp", "last_update_timestamp", "key", "value", "data_size_bytes"};
    }

    @aoa
    public h(com.twitter.database.internal.f fVar) {
        super(fVar);
        this.e = new k(this, this.e_);
    }

    public final String a() {
        return "lru_key_value_table";
    }

    public final String b() {
        return "CREATE TABLE lru_key_value_table (\n\t_id INTEGER PRIMARY KEY,\n\tcategory_id INTEGER,\n\tversion INTEGER,\n\texpiry_timestamp INTEGER,\n\tlast_update_timestamp INTEGER,\n\tkey TEXT NOT NULL,\n\tvalue BLOB,\n\tdata_size_bytes INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final com.twitter.database.model.e[] d() {
        return c;
    }

    public final m<f> e() {
        return this.e;
    }
}

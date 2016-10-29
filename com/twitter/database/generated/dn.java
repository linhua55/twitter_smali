package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.awd;
import defpackage.awe;
import defpackage.axj;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class dn extends o implements awd {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<awe> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("list_mapping_unique_index", "CREATE UNIQUE INDEX list_mapping_unique_index ON list_mapping (\n\tlist_mapping_list_id,\n\tlist_mapping_type,\n\tlist_mapping_user_id\n);")};
        d = new String[]{"_id", "list_mapping_list_id", "list_mapping_type", "list_mapping_user_id", "list_is_last"};
        b.add(axj.class);
    }

    @aoa
    public dn(f fVar) {
        super(fVar);
        this.e = new dq(this, this.e_);
    }

    public final String a() {
        return "list_mapping";
    }

    public final String b() {
        return "CREATE TABLE list_mapping (\n\t_id INTEGER PRIMARY KEY,\n\tlist_mapping_list_id TEXT,\n\tlist_mapping_type INTEGER,\n\tlist_mapping_user_id INTEGER,\n\tlist_is_last INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<awe> e() {
        return this.e;
    }
}

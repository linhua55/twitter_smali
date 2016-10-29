package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.awt;
import defpackage.awu;
import defpackage.awv;
import defpackage.azw;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class fe extends o implements awt {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<awu> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(2);
        c = new e[]{new e("user_groups_type_user_id_index", "CREATE INDEX user_groups_type_user_id_index ON user_groups (\n\ttype,\n\towner_id,\n\tuser_id\n);")};
        d = new String[]{"_id", "type", "tag", "rank", "owner_id", "user_id", "is_last", "pc", "g_flags"};
        b.add(azw.class);
        b.add(awv.class);
    }

    @aoa
    public fe(f fVar) {
        super(fVar);
        this.e = new fh(this, this.e_);
    }

    public final String a() {
        return "user_groups";
    }

    public final String b() {
        return "CREATE TABLE user_groups (\n\t_id INTEGER PRIMARY KEY,\n\ttype INTEGER,\n\ttag INTEGER,\n\trank INTEGER,\n\towner_id INTEGER,\n\tuser_id INTEGER,\n\tis_last INTEGER,\n\tpc BLOB /*NULLABLE*/,\n\tg_flags INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<awu> e() {
        return this.e;
    }
}

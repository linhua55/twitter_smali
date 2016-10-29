package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.awv;
import defpackage.awx;
import defpackage.awy;
import defpackage.azw;
import defpackage.bag;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class fo extends o implements awx {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<awy> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(3);
        c = new e[]{new e("user_metadata_id_type_index", "CREATE INDEX user_metadata_id_type_index ON user_metadata (\n\towner_id,\n\tuser_id,\n\tuser_group_type\n);")};
        d = new String[]{"_id", "owner_id", "user_id", "user_group_type", "user_group_tag", "soc_type", "soc_name", "soc_follow_count", "user_title", "token"};
        b.add(azw.class);
        b.add(bag.class);
        b.add(awv.class);
    }

    @aoa
    public fo(f fVar) {
        super(fVar);
        this.e = new fr(this, this.e_);
    }

    public final String a() {
        return "user_metadata";
    }

    public final String b() {
        return "CREATE TABLE user_metadata (\n\t_id INTEGER PRIMARY KEY,\n\towner_id INTEGER NOT NULL,\n\tuser_id INTEGER NOT NULL,\n\tuser_group_type INTEGER NOT NULL,\n\tuser_group_tag INTEGER NOT NULL,\n\tsoc_type INTEGER,\n\tsoc_name TEXT,\n\tsoc_follow_count INTEGER,\n\tuser_title TEXT,\n\ttoken TEXT\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<awy> e() {
        return this.e;
    }
}

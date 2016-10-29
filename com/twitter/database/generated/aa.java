package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.database.schema.i;
import com.twitter.database.schema.j;
import com.twitter.database.schema.k;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class aa extends o implements i {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<j> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("activity_states_account_index", "CREATE INDEX activity_states_account_index ON activity_states (\n\taccount_name\n);")};
        d = new String[]{"_id", "account_name", "tweet", "mention", "unread_interactions", "message", "discover"};
        b.add(k.class);
    }

    @aoa
    public aa(f fVar) {
        super(fVar);
        this.e = new ad(this, this.e_);
    }

    public final String a() {
        return "activity_states";
    }

    public final String b() {
        return "CREATE TABLE activity_states (\n\t_id INTEGER PRIMARY KEY,\n\taccount_name TEXT UNIQUE ON CONFLICT REPLACE NOT NULL,\n\ttweet INTEGER,\n\tmention INTEGER,\n\tunread_interactions INTEGER,\n\tmessage INTEGER,\n\tdiscover INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<j> e() {
        return this.e;
    }
}

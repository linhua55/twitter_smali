package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.database.schema.g;
import com.twitter.database.schema.h;
import com.twitter.database.schema.k;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class w extends o implements g {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<h> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("account_settings_account_index", "CREATE INDEX account_settings_account_index ON account_settings (\n\taccount_name\n);")};
        d = new String[]{"_id", "account_name", "notif_id", "push_flags", "vibrate", "ringtone", "interval", "light"};
        b.add(k.class);
    }

    @aoa
    public w(f fVar) {
        super(fVar);
        this.e = new z(this, this.e_);
    }

    public final String a() {
        return "account_settings";
    }

    public final String b() {
        return "CREATE TABLE account_settings (\n\t_id INTEGER PRIMARY KEY,\n\taccount_name TEXT UNIQUE ON CONFLICT REPLACE NOT NULL,\n\tnotif_id INTEGER /*NULLABLE*/,\n\tpush_flags INTEGER,\n\tvibrate INTEGER,\n\tringtone TEXT,\n\tinterval INTEGER,\n\tlight INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<h> e() {
        return this.e;
    }
}

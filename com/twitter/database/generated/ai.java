package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.database.schema.m;
import com.twitter.database.schema.n;
import com.twitter.util.collection.ar;
import java.util.Collection;

/* compiled from: Twttr */
public final class ai extends o implements m {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final com.twitter.database.internal.m<n> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[]{new e("widget_settings_account_index", "CREATE INDEX widget_settings_account_index ON widget_settings (\n\taccount_name\n);")};
        d = new String[]{"_id", "widget_id", "widget_type", "account_name", "content_type"};
    }

    @aoa
    public ai(f fVar) {
        super(fVar);
        this.e = new al(this, this.e_);
    }

    public final String a() {
        return "widget_settings";
    }

    public final String b() {
        return "CREATE TABLE widget_settings (\n\t_id INTEGER PRIMARY KEY,\n\twidget_id INTEGER UNIQUE ON CONFLICT REPLACE,\n\twidget_type INTEGER,\n\taccount_name TEXT NOT NULL,\n\tcontent_type INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final com.twitter.database.internal.m<n> e() {
        return this.e;
    }
}

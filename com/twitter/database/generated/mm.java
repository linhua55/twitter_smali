package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.azy;
import defpackage.azz;
import java.util.Collection;

/* compiled from: Twttr */
public final class mm extends o implements azy {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<azz> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "type", "last_update"};
    }

    @aoa
    public mm(f fVar) {
        super(fVar);
        this.e = new mp(this, this.e_);
    }

    public final String a() {
        return "search_suggestion_metadata";
    }

    public final String b() {
        return "CREATE TABLE search_suggestion_metadata (\n\t_id INTEGER PRIMARY KEY,\n\ttype INTEGER UNIQUE,\n\tlast_update INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<azz> e() {
        return this.e;
    }
}

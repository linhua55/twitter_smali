package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.azo;
import defpackage.azp;
import java.util.Collection;

/* compiled from: Twttr */
public final class li extends o implements azo {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<azp> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "name", "woeid", "country", "country_code"};
    }

    @aoa
    public li(f fVar) {
        super(fVar);
        this.e = new ll(this, this.e_);
    }

    public final String a() {
        return "locations";
    }

    public final String b() {
        return "CREATE TABLE locations (\n\t_id INTEGER PRIMARY KEY,\n\tname TEXT,\n\twoeid INTEGER,\n\tcountry TEXT,\n\tcountry_code TEXT\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<azp> e() {
        return this.e;
    }
}

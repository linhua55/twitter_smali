package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.aut;
import defpackage.auu;
import java.util.Collection;

/* compiled from: Twttr */
public final class bb extends o implements aut {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<auu> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "user_id", "hash_value", "remote_id"};
    }

    @aoa
    public bb(f fVar) {
        super(fVar);
        this.e = new be(this, this.e_);
    }

    public final String a() {
        return "contacts_hash";
    }

    public final String b() {
        return "CREATE TABLE contacts_hash (\n\t_id INTEGER PRIMARY KEY,\n\tuser_id INTEGER NOT NULL,\n\thash_value BLOB NOT NULL,\n\tremote_id INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<auu> e() {
        return this.e;
    }
}

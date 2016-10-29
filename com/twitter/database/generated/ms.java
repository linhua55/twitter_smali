package com.twitter.database.generated;

import aoa;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.bac;
import defpackage.bad;
import defpackage.bae;
import defpackage.bag;
import defpackage.bai;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class ms extends o implements bac {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<bad> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(3);
        c = new e[0];
        d = new String[]{"_id", MimeTypes.BASE_TYPE_TEXT, "weight", "type", "ref_id"};
        b.add(bag.class);
        b.add(bai.class);
        b.add(bae.class);
    }

    @aoa
    public ms(f fVar) {
        super(fVar);
        this.e = new mv(this, this.e_);
    }

    public final String a() {
        return "tokens";
    }

    public final String b() {
        return "CREATE TABLE tokens (\n\t_id INTEGER PRIMARY KEY,\n\ttext TEXT,\n\tweight INTEGER,\n\ttype INTEGER,\n\tref_id INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<bad> e() {
        return this.e;
    }
}

package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.bam;
import defpackage.ban;
import defpackage.baw;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class np extends o implements bam {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<ban> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[0];
        d = new String[]{"_id", "category_id"};
        b.add(baw.class);
    }

    @aoa
    public np(f fVar) {
        super(fVar);
        this.e = new ns(this, this.e_);
    }

    public final String a() {
        return "sticker_items";
    }

    public final String b() {
        return "CREATE TABLE sticker_items (\n\t_id INTEGER,\n\tcategory_id INTEGER,\n\tPRIMARY KEY (_id, category_id)\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<ban> e() {
        return this.e;
    }
}

package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.avb;
import defpackage.avc;
import defpackage.awj;
import defpackage.bbg;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class bn extends o implements avb {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<avc> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(2);
        c = new e[]{new e("card_state_id_index", "CREATE INDEX card_state_id_index ON card_state (\n\tcard_status_id\n);")};
        d = new String[]{"_id", "card_status_id", "card_id", "card_state"};
        b.add(awj.class);
        b.add(bbg.class);
    }

    @aoa
    public bn(f fVar) {
        super(fVar);
        this.e = new bq(this, this.e_);
    }

    public final String a() {
        return "card_state";
    }

    public final String b() {
        return "CREATE TABLE card_state (\n\t_id INTEGER PRIMARY KEY AUTOINCREMENT,\n\tcard_status_id INTEGER,\n\tcard_id INTEGER,\n\tcard_state BLOB\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<avc> e() {
        return this.e;
    }
}

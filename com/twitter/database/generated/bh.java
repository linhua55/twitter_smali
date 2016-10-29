package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.aux;
import defpackage.auy;
import java.util.Collection;

/* compiled from: Twttr */
public final class bh extends o implements aux {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<auy> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[]{new e("alerts_alert_id_index", "CREATE INDEX alerts_alert_id_index ON alerts (\n\talert_id\n);")};
        d = new String[]{"_id", "alert_id", "updated_at", "title", "type", TtmlNode.TAG_REGION, "senders_ids", "is_muted"};
    }

    @aoa
    public bh(f fVar) {
        super(fVar);
        this.e = new bk(this, this.e_);
    }

    public final String a() {
        return "alerts";
    }

    public final String b() {
        return "CREATE TABLE alerts (\n\t_id INTEGER PRIMARY KEY,\n\talert_id INTEGER UNIQUE ON CONFLICT REPLACE NOT NULL,\n\tupdated_at INTEGER NOT NULL,\n\ttitle TEXT NOT NULL,\n\ttype INTEGER NOT NULL,\n\tregion TEXT NOT NULL,\n\tsenders_ids BLOB NOT NULL,\n\tis_muted INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<auy> e() {
        return this.e;
    }
}

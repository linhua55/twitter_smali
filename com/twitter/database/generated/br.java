package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.avd;
import defpackage.ave;
import java.util.Collection;

/* compiled from: Twttr */
public final class br extends o implements avd {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<ave> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[0];
        d = new String[]{"_id", "card_conversation_id", "card_message_id", "card_id", "card_state"};
    }

    @aoa
    public br(f fVar) {
        super(fVar);
        this.e = new bu(this, this.e_);
    }

    public final String a() {
        return "dm_card_state";
    }

    public final String b() {
        return "CREATE TABLE dm_card_state (\n\t_id INTEGER PRIMARY KEY AUTOINCREMENT,\n\tcard_conversation_id TEXT,\n\tcard_message_id INTEGER,\n\tcard_id INTEGER,\n\tcard_state BLOB\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<ave> e() {
        return this.e;
    }
}

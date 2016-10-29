package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.avt;
import defpackage.avu;
import defpackage.avz;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class ct extends o implements avt {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<avu> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("conversation_participants_unique_index", "CREATE UNIQUE INDEX conversation_participants_unique_index ON conversation_participants (\n\tconversation_id,\n\tuser_id\n);")};
        d = new String[]{"_id", "conversation_id", "user_id", "join_time", "participant_type", "last_read_event_id"};
        b.add(avz.class);
    }

    @aoa
    public ct(f fVar) {
        super(fVar);
        this.e = new cw(this, this.e_);
    }

    public final String a() {
        return "conversation_participants";
    }

    public final String b() {
        return "CREATE TABLE conversation_participants (\n\t_id INTEGER PRIMARY KEY,\n\tconversation_id TEXT NOT NULL,\n\tuser_id TEXT NOT NULL,\n\tjoin_time INTEGER NOT NULL,\n\tparticipant_type INTEGER NOT NULL,\n\tlast_read_event_id INTEGER NOT NULL\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<avu> e() {
        return this.e;
    }
}

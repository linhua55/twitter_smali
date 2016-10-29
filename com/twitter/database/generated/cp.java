package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.avr;
import defpackage.avs;
import defpackage.avv;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class cp extends o implements avr {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<avs> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(1);
        c = new e[]{new e("conversation_entries_conversation_id_index", "CREATE INDEX conversation_entries_conversation_id_index ON conversation_entries (\n\tconversation_id\n);"), new e("conversation_entries_request_id_index", "CREATE INDEX conversation_entries_request_id_index ON conversation_entries (\n\trequest_id\n);")};
        d = new String[]{"_id", "entry_id", "sort_entry_id", "conversation_id", "user_id", "created", "entry_type", "data", "request_id"};
        b.add(avv.class);
    }

    @aoa
    public cp(f fVar) {
        super(fVar);
        this.e = new cs(this, this.e_);
    }

    public final String a() {
        return "conversation_entries";
    }

    public final String b() {
        return "CREATE TABLE conversation_entries (\n\t_id INTEGER PRIMARY KEY,\n\tentry_id INTEGER UNIQUE NOT NULL,\n\tsort_entry_id INTEGER UNIQUE NOT NULL,\n\tconversation_id TEXT,\n\tuser_id INTEGER,\n\tcreated INTEGER,\n\tentry_type INTEGER,\n\tdata BLOB,\n\trequest_id TEXT\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<avs> e() {
        return this.e;
    }
}

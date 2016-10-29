package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import defpackage.avv;
import defpackage.avx;
import defpackage.avy;
import defpackage.avz;
import java.util.Collection;
import java.util.LinkedHashSet;

/* compiled from: Twttr */
public final class db extends o implements avx {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<avy> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = new LinkedHashSet(2);
        c = new e[]{new e("conversations_unique_index", "CREATE UNIQUE INDEX conversations_unique_index ON conversations (\n\tconversation_id\n);")};
        d = new String[]{"_id", "conversation_id", "title", "avatar_url", "type", "sort_event_id", "last_readable_event_id", "last_read_event_id", "sort_timestamp", "is_muted", "min_event_id", "is_hidden", "has_more", "read_only"};
        b.add(avz.class);
        b.add(avv.class);
    }

    @aoa
    public db(f fVar) {
        super(fVar);
        this.e = new de(this, this.e_);
    }

    public final String a() {
        return "conversations";
    }

    public final String b() {
        return "CREATE TABLE conversations (\n\t_id INTEGER PRIMARY KEY,\n\tconversation_id TEXT UNIQUE NOT NULL,\n\ttitle TEXT,\n\tavatar_url TEXT,\n\ttype INTEGER,\n\tsort_event_id INTEGER,\n\tlast_readable_event_id INTEGER,\n\tlast_read_event_id INTEGER,\n\tsort_timestamp INTEGER,\n\tis_muted INTEGER,\n\tmin_event_id INTEGER,\n\tis_hidden INTEGER,\n\thas_more INTEGER,\n\tread_only INTEGER\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<avy> e() {
        return this.e;
    }
}

package com.twitter.database.generated;

import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.internal.o;
import com.twitter.database.model.e;
import com.twitter.database.model.p;
import com.twitter.database.model.q;
import com.twitter.util.collection.ar;
import defpackage.axb;
import defpackage.axc;
import java.util.Collection;

/* compiled from: Twttr */
public final class fw extends o implements axb {
    private static final Collection<Class<? extends p>> b;
    private static final e[] c;
    private static final String[] d;
    private final m<axc> e;

    public /* synthetic */ q f() {
        return e();
    }

    static {
        b = ar.g();
        c = new e[]{new e("tv_shows_event_id_index", "CREATE INDEX tv_shows_event_id_index ON tv_shows (\n\tid\n);")};
        d = new String[]{"_id", TtmlNode.ATTR_ID, "title", "genre", "primary_hashtag", "other_hashtags", "cast_screen_names"};
    }

    @aoa
    public fw(f fVar) {
        super(fVar);
        this.e = new fz(this, this.e_);
    }

    public final String a() {
        return "tv_shows";
    }

    public final String b() {
        return "CREATE TABLE tv_shows (\n\t_id INTEGER PRIMARY KEY,\n\tid INTEGER UNIQUE ON CONFLICT REPLACE,\n\ttitle TEXT,\n\tgenre TEXT,\n\tprimary_hashtag TEXT,\n\tother_hashtags BLOB /*NULLABLE*/,\n\tcast_screen_names BLOB /*NULLABLE*/\n);";
    }

    protected final Collection<Class<? extends p>> c() {
        return b;
    }

    public final e[] d() {
        return c;
    }

    public final m<axc> e() {
        return this.e;
    }
}

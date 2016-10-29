package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import chj;
import com.twitter.model.timeline.aj;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public abstract class bg<T extends aw> extends chj<T> {
    private final at a;

    public bg() {
        this.a = new at();
    }

    protected ar c(Cursor cursor) {
        if (this.a.a(cursor)) {
            return this.a.b(cursor);
        }
        return null;
    }

    protected aj d(Cursor cursor) {
        if (am.a(cursor)) {
            return (aj) m.a(cursor.getBlob(cdc.k), aj.a);
        }
        return null;
    }

    protected long e(Cursor cursor) {
        if (am.a(cursor)) {
            return cursor.getLong(cdc.b);
        }
        return cursor.getLong(23);
    }
}

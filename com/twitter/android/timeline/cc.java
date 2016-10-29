package com.twitter.android.timeline;

import android.database.Cursor;
import chj;

/* compiled from: Twttr */
public class cc extends chj<cd> {
    private final cg a;
    private final ch b;
    private final ce c;

    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public cc(cg cgVar, ch chVar, ce ceVar) {
        this.a = cgVar;
        this.b = chVar;
        this.c = ceVar;
    }

    public boolean a(Cursor cursor) {
        return this.a.a(cursor) || this.b.a(cursor) || this.c.a(cursor);
    }

    public cd b(Cursor cursor) {
        if (this.a.a(cursor)) {
            return this.a.b(cursor);
        }
        if (this.b.a(cursor)) {
            return this.b.b(cursor);
        }
        if (this.c.a(cursor)) {
            return this.c.b(cursor);
        }
        throw new IllegalStateException("Cannot be hydrated to a WhoToFollowItem");
    }
}

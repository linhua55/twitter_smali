package com.twitter.android.timeline;

import android.database.Cursor;
import chj;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class bx extends chj<aw> {
    private final List<bg<? extends aw>> a;

    public bx() {
        this(-1);
    }

    public bx(int i) {
        this.a = n.b(new bt(false, i));
    }

    public aw a(Cursor cursor) {
        for (bg bgVar : this.a) {
            if (bgVar.b(cursor)) {
                return (aw) bgVar.a(cursor);
            }
        }
        throw new IllegalArgumentException("no hydrator can hydrate this timeline item!");
    }
}

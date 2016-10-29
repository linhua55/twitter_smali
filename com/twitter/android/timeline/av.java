package com.twitter.android.timeline;

import android.database.Cursor;
import chj;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class av extends chj<aw> {
    private final List<chj<? extends aw>> a;

    public av(boolean z, int i) {
        bt btVar = new bt(z, i);
        this.a = n.a(new k(), new chj[]{new bu(i), new i(), new bo(btVar), new y(btVar), new cc(new cg(), new ch(), new ce()), new o(), new u(), new ah(new ai()), new au(), new bh(), new ak(), new r(), new by(), btVar});
    }

    public aw a(Cursor cursor) {
        chj chj;
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            chj = (chj) this.a.get(i);
            if (chj.b(cursor)) {
                break;
            }
        }
        chj = null;
        if (chj != null) {
            return (aw) chj.a(cursor);
        }
        throw new IllegalArgumentException("no hydrator can hydrate this timeline item!");
    }
}

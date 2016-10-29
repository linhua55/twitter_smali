package tv.periscope.android.ui.chat;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;
import tv.periscope.model.y;

/* compiled from: Twttr */
class g {
    final /* synthetic */ e a;
    private final int b;
    private final SortedMap<y, u> c;
    private final LinkedList<y> d;

    g(e eVar, int i) {
        this.a = eVar;
        this.b = i;
        this.c = new TreeMap(new h());
        this.d = new LinkedList();
    }

    void a(u uVar) {
        if (uVar.b()) {
            this.a.c.removeCallbacks(uVar);
        }
    }

    u a() {
        if (this.c.isEmpty()) {
            return null;
        }
        return (u) this.c.get(this.c.lastKey());
    }

    void a(y yVar, u uVar) {
        int i = 0;
        this.c.put(yVar, uVar);
        if (this.b > 0) {
            u uVar2;
            this.d.addAll(this.c.keySet());
            int i2 = 0;
            for (u uVar22 : this.c.values()) {
                int i3;
                if (uVar22.a()) {
                    i3 = i2;
                } else {
                    i3 = i2 + 1;
                }
                i2 = i3;
            }
            long max = Math.max((long) ((((float) this.b) / ((float) i2)) * 4500.0f), 300);
            Iterator descendingIterator = this.d.descendingIterator();
            while (descendingIterator.hasNext()) {
                uVar22 = (u) this.c.get((y) descendingIterator.next());
                if (i >= this.b) {
                    uVar22.a(max);
                    a(uVar22);
                }
                i++;
            }
            this.d.clear();
        }
        this.a.c.postDelayed(uVar, TimeUnit.SECONDS.toMillis(7));
    }

    void a(y yVar) {
        u uVar = (u) this.c.remove(yVar);
        if (uVar != null) {
            this.a.c.removeCallbacks(uVar);
            uVar.c();
        }
    }

    void b() {
        for (u uVar : this.c.values()) {
            this.a.c.removeCallbacks(uVar);
            uVar.c();
        }
        this.c.clear();
        this.d.clear();
    }

    public int c() {
        return this.c.size();
    }
}

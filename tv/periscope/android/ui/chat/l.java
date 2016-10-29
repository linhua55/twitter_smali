package tv.periscope.android.ui.chat;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
class l implements Runnable {
    final /* synthetic */ ArrayList a;
    final /* synthetic */ ArrayList b;
    final /* synthetic */ ArrayList c;
    final /* synthetic */ k d;

    l(k kVar, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        this.d = kVar;
        this.a = arrayList;
        this.b = arrayList2;
        this.c = arrayList3;
    }

    public void run() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            this.d.a((r) it.next());
        }
        this.b.clear();
        this.d.e.remove(this.b);
        this.c.clear();
        this.d.d.remove(this.c);
    }
}

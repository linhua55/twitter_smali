package tv.periscope.android.ui.chat;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
class m implements Runnable {
    final /* synthetic */ ArrayList a;
    final /* synthetic */ k b;

    m(k kVar, ArrayList arrayList) {
        this.b = kVar;
        this.a = arrayList;
    }

    public void run() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            this.b.a((q) it.next());
        }
        this.a.clear();
        this.b.f.remove(this.a);
    }
}

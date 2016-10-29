package tv.periscope.android.chat;

import java.util.Comparator;

/* compiled from: Twttr */
class u implements Comparator<w> {
    u() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((w) obj, (w) obj2);
    }

    public int a(w wVar, w wVar2) {
        return Long.compare(wVar.a(), wVar2.a());
    }
}

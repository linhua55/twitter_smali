package tv.periscope.android.chat;

import java.util.Comparator;

/* compiled from: Twttr */
class v implements Comparator<w> {
    v() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((w) obj, (w) obj2);
    }

    public int a(w wVar, w wVar2) {
        if (wVar.c < wVar2.c) {
            return -1;
        }
        if (wVar.c > wVar2.c) {
            return 1;
        }
        return 0;
    }
}

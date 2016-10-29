package tv.periscope.android.ui.chat;

import java.util.Comparator;
import tv.periscope.model.y;

/* compiled from: Twttr */
class h implements Comparator<y> {
    h() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((y) obj, (y) obj2);
    }

    public int a(y yVar, y yVar2) {
        int compareTo = Long.valueOf(yVar.a()).compareTo(Long.valueOf(yVar2.a()));
        if (compareTo == 0) {
            return Integer.valueOf(yVar.b()).compareTo(Integer.valueOf(yVar2.b()));
        }
        return compareTo;
    }
}

package defpackage;

import com.twitter.library.api.TwitterLocation;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: td */
class td implements tb {
    final /* synthetic */ String a;
    final /* synthetic */ sx b;
    final /* synthetic */ tc c;

    td(tc tcVar, String str, sx sxVar) {
        this.c = tcVar;
        this.a = str;
        this.b = sxVar;
    }

    public void a(List<TwitterLocation> list) {
        if (!list.isEmpty()) {
            this.c.a(this.a, this.b);
        }
    }
}

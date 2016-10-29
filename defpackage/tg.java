package defpackage;

import com.twitter.library.api.search.TwitterTypeAheadGroup;
import com.twitter.library.api.search.r;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
/* renamed from: tg */
class tg extends z {
    final /* synthetic */ tf a;

    tg(tf tfVar) {
        this.a = tfVar;
    }

    public void a(x xVar) {
        if (((aa) xVar.l().b()).b()) {
            this.a.d.a(((r) xVar).h(), this.a.a);
            return;
        }
        this.a.d.a(new TwitterTypeAheadGroup(null, null, null), this.a.a);
    }
}

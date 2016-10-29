package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.au;
import com.twitter.model.core.Tweet;
import com.twitter.util.j;

/* compiled from: Twttr */
/* renamed from: amk */
public class amk implements amm {
    private final Context a;
    private final bg b;
    private final az c;
    private final amn d;
    private final Tweet e;
    private final FriendshipCache f;
    private final TwitterScribeItem g;
    private final au h;
    private final String i;

    public amk(aml aml) {
        this.a = aml.a;
        this.b = aml.b;
        this.c = aml.c;
        this.d = aml.d;
        this.e = aml.e;
        this.f = aml.f;
        this.g = aml.g;
        this.h = aml.h;
        this.i = aml.i;
    }

    public void a() {
        boolean z = true;
        int i = 0;
        j.a(this.f != null, "FriendshipCache is null in FollowAction");
        if (this.f != null) {
            if (this.f.k(this.e.s)) {
                z = false;
            }
            if (this.h != null) {
                this.h.c(z);
            }
            Session c = this.b.c();
            if (z) {
                this.d.a(this.i, "follow", this.e, this.g);
                this.c.a(new boh(this.a, c, this.e.s, this.e.f));
                if (this.f.a(this.e.s)) {
                    i = this.f.j(this.e.s).intValue();
                }
                this.f.b(this.e.s, (i | 1) | 64);
                return;
            }
            this.d.a(this.i, "unfollow", this.e, null);
            this.c.a(new bok(this.a, c, this.e.s, this.e.f, this.e.A()));
            this.f.c(this.e.s);
        }
    }
}

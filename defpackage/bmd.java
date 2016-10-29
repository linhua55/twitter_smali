package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bmd */
public class bmd extends b<c> {
    private final boolean a;
    private final long b;
    private final long c;
    private final String g;
    private final String h;

    public bmd(Context context, Session session, boolean z, long j, long j2, String str, String str2) {
        super(context, bmd.class.getName(), session);
        this.a = z;
        this.b = j;
        this.c = j2;
        this.g = str;
        this.h = str2;
    }

    protected d a() {
        e a = K().a("moments", "feedback", "add").a("moment_id", this.b).a("cover", this.a).a("problem", this.g);
        if (aj.b(this.h)) {
            a.a("comment", this.h);
        }
        if (this.c > 0) {
            a.a("tweet_id", this.c);
        }
        return a.a();
    }

    protected c f() {
        return null;
    }
}

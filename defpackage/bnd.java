package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bnd */
public class bnd extends af<as> {
    public final String b;
    private final long c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bnd(Context context, Session session, long j, String str) {
        super(context, bnd.class.getName(), session);
        this.c = j;
        this.b = str;
    }

    public String e() {
        return null;
    }

    protected d a() {
        if (!aj.b(this.b)) {
            return null;
        }
        return K().a(RequestMethod.b).a("statuses", "report_spam").a("tweet_id", this.c).a("report_as", this.b).a();
    }

    protected as b() {
        return null;
    }
}

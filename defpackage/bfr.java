package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.av.n;

/* compiled from: Twttr */
/* renamed from: bfr */
public class bfr extends b<c> {
    private final long a;
    private final n b;

    public bfr(Context context, Session session, long j, n nVar) {
        super(context, bfr.class.getName(), session);
        this.a = j;
        this.b = nVar;
    }

    @VisibleForTesting
    e b() {
        e a = K().a(RequestMethod.b).a("amplify/marketplace/videos").a("video_id", this.a).a("monetize", this.b.a());
        if (!this.b.b().isEmpty()) {
            a.a("monetization_categorization", this.b.b());
        }
        if (!this.b.c().isEmpty()) {
            a.a("advertiser_blacklist", this.b.c());
        }
        if (!this.b.d().isEmpty()) {
            a.a("monetization_category_blacklist", this.b.d());
        }
        if (!this.b.e().isEmpty()) {
            a.a("advertiser_whitelist", this.b.e());
        }
        if (!this.b.f().isEmpty()) {
            a.a("monetization_category_whitelist", this.b.f());
        }
        return a;
    }

    protected d a() {
        return b().a();
    }

    protected c f() {
        return null;
    }
}

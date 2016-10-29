package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bfm */
public class bfm extends bfn {
    private final long a;

    public bfm(Context context, Session session, long j) {
        super(context, bfm.class.getName(), session);
        this.a = j;
    }

    @VisibleForTesting
    e b() {
        return K().a(RequestMethod.a).a("amplify/marketplace/videos").a("video_id", this.a);
    }

    protected d a() {
        return b().a();
    }
}

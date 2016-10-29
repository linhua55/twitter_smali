package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.util.object.b;

/* compiled from: Twttr */
/* renamed from: aep */
public class aep implements b<Context, ade> {
    private final Session a;

    public aep(Session session) {
        this.a = session;
    }

    public ade a(Context context) {
        return ade.a(context, this.a);
    }
}

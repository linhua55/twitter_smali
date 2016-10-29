package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;

/* compiled from: Twttr */
/* renamed from: bmp */
public class bmp extends bmq {
    private final long a;

    public bmp(Context context, Session session, long j) {
        super(context, bmp.class.getName(), session);
        this.a = j;
    }

    protected void a(e eVar) {
        s().f(this.a, eVar);
    }
}

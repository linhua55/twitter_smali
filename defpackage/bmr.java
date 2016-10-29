package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;

/* compiled from: Twttr */
/* renamed from: bmr */
public class bmr extends bmq {
    private final int a;
    private final long b;

    public bmr(Context context, Session session, int i, long j) {
        super(context, bmr.class.getName(), session);
        this.a = i;
        this.b = j;
    }

    protected void a(e eVar) {
        s().a(this.a, new long[]{this.b}, eVar);
    }
}

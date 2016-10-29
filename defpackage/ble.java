package defpackage;

import android.content.Context;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.ab;

/* compiled from: Twttr */
/* renamed from: ble */
public class ble extends AsyncOperation<Void, Void> {
    private final Context a;
    private final ab b;
    private final String c;

    protected /* synthetic */ Object c() {
        return e();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return b();
    }

    public ble(Context context, Session session, String str) {
        super("BringStoryToFront");
        this.a = context;
        this.b = new ab(session);
        this.c = str;
    }

    public di a() {
        return di.a(this.a, this.b.c);
    }

    protected Void b() throws InterruptedException {
        a().c(this.c, null);
        return null;
    }

    protected Void e() {
        return null;
    }
}

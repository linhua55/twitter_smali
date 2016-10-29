package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.twitter.android.client.bu;
import com.twitter.library.client.Session;

/* compiled from: Twttr */
/* renamed from: te */
public class te {
    private final Handler a;
    private final Context b;
    private final Session c;
    private final long d;
    private final String e;
    private Runnable f;

    public te(Context context, Session session, String str) {
        this.a = new Handler(Looper.getMainLooper());
        this.b = context.getApplicationContext();
        this.c = session;
        this.d = (long) bu.h();
        this.e = str;
    }

    public synchronized void a(String str, int i, int i2, th thVar) {
        a();
        this.f = new tf(this, str, i, i2, thVar);
        this.a.postDelayed(this.f, this.d);
    }

    public synchronized void a() {
        if (this.f != null) {
            this.a.removeCallbacks(this.f);
            this.f = null;
        }
    }
}

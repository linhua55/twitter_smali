package defpackage;

import android.content.Context;
import com.twitter.library.api.search.f;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;

/* compiled from: Twttr */
/* renamed from: sz */
class sz implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ Session b;
    final /* synthetic */ tb c;
    final /* synthetic */ sy d;

    sz(sy syVar, Context context, Session session, tb tbVar) {
        this.d = syVar;
        this.a = context;
        this.b = session;
        this.c = tbVar;
    }

    public void run() {
        az.a(this.a).a(new f(this.a, this.b), new ta(this));
    }
}

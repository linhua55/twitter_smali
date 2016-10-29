package com.twitter.android.client;

import com.twitter.android.client.notifications.StatusBarNotif;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.android.service.c;

/* compiled from: Twttr */
public abstract class ai<P, S> extends AsyncOperation<P, S> implements c<P, ai<P, S>> {
    private final z a;
    private final StatusBarNotif b;

    protected abstract void a(z zVar, StatusBarNotif statusBarNotif, ab<S> abVar);

    public /* synthetic */ void a(AsyncOperation asyncOperation) {
        b((ai) asyncOperation);
    }

    public /* synthetic */ void b(AsyncOperation asyncOperation) {
        a((ai) asyncOperation);
    }

    public ai(String str, z zVar, StatusBarNotif statusBarNotif) {
        super(str);
        this.a = zVar;
        this.b = statusBarNotif;
        a(this);
    }

    public StatusBarNotif a() {
        return this.b;
    }

    public final void a(ai<P, S> aiVar) {
    }

    public final void a(P p, ai<P, S> aiVar) {
    }

    public final void b(ai<P, S> aiVar) {
        int w = this.b.w();
        if (this.a.b(w)) {
            a(this.a, this.b, aiVar.l());
            this.a.a(w);
        }
    }
}

package com.twitter.android.composer;

import android.content.Context;
import com.twitter.config.AppConfig;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.provider.v;
import com.twitter.model.drafts.d;

/* compiled from: Twttr */
public class bw extends AsyncOperation<Void, Long> {
    private final Context a;
    private final Session b;
    private final d c;
    private final boolean g;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    public bw(Context context, Session session, d dVar, boolean z) {
        super(bw.class.getName());
        this.a = context;
        this.b = session;
        this.c = dVar;
        this.g = z;
    }

    protected Long a() {
        v a = v.a(this.a, this.b.g());
        e eVar = new e(this.a.getContentResolver());
        long a2 = a.a(this.c, this.g ? 1 : 0, eVar);
        eVar.a();
        return Long.valueOf(a2);
    }

    protected Long b() {
        if (!AppConfig.m().a()) {
            return null;
        }
        throw new UnsupportedOperationException("SaveDraftOperation.cancel is not supported!");
    }
}

package com.twitter.android.composer;

import android.content.Context;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.provider.v;

/* compiled from: Twttr */
public class br extends AsyncOperation<Void, Boolean> {
    private final Context a;
    private final long b;
    private final long c;
    private final boolean g;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    public br(Context context, Session session, long j, boolean z) {
        super(br.class.getName());
        this.a = context;
        this.b = session.g();
        this.c = j;
        this.g = z;
    }

    protected Boolean a() throws InterruptedException {
        v a = v.a(this.a, this.b);
        e eVar = new e(this.a.getContentResolver());
        boolean a2 = a.a(this.c, eVar, this.g);
        eVar.a();
        return Boolean.valueOf(a2);
    }

    protected Boolean b() {
        return Boolean.valueOf(false);
    }
}

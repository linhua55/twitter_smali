package com.twitter.android.dm;

import android.content.ContextWrapper;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.o;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class x extends o {
    private final WeakReference<ContextWrapper> a;
    private final long b;

    public x(ContextWrapper contextWrapper, Session session, long j) {
        super(contextWrapper, x.class.getName(), session);
        this.a = new WeakReference(contextWrapper);
        this.b = j;
    }

    protected void a() {
        ContextWrapper contextWrapper = (ContextWrapper) this.a.get();
        if (contextWrapper != null) {
            e eVar = new e(contextWrapper.getContentResolver());
            di.a(contextWrapper, h().c).e(this.b, eVar);
            eVar.a();
        }
    }
}

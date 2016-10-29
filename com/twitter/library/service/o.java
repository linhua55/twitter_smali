package com.twitter.library.service;

import android.content.Context;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.util.collection.CollectionUtils;

/* compiled from: Twttr */
public abstract class o extends AsyncOperation<Void, Void> {
    private static final int[] a;
    private final ab b;
    private final int[] c;
    private int g;
    protected final Context h;

    protected abstract void a();

    protected /* synthetic */ Object c() {
        return g();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return f();
    }

    static {
        a = new int[0];
    }

    public o(Context context, String str) {
        this(context, str, (ab) null, a);
    }

    public o(Context context, String str, Session session) {
        this(context, str, session != null ? new ab(session) : null, a);
    }

    public o(Context context, String str, ab abVar) {
        this(context, str, abVar, a);
    }

    public o(Context context, String str, Session session, int[] iArr) {
        this(context, str, session != null ? new ab(session) : null, iArr);
    }

    public o(Context context, String str, ab abVar, int[] iArr) {
        super(str);
        this.h = context.getApplicationContext();
        this.b = abVar;
        this.c = iArr;
    }

    protected final Void f() throws InterruptedException {
        a();
        return null;
    }

    protected final Void g() {
        return null;
    }

    public final ab h() {
        return this.b;
    }

    public final di s() {
        if (this.b == null) {
            return di.a(this.h, 0);
        }
        return di.a(this.h, this.b.c);
    }

    protected final e t() {
        return new e(this.h.getContentResolver());
    }

    public int u() {
        return this.g;
    }

    public <T extends o> T d(int i) {
        if (i < 0 || !(this.c == null || CollectionUtils.a(this.c, i))) {
            throw new UnsupportedOperationException("No supported action for action code: " + i);
        }
        this.g = i;
        return this;
    }
}

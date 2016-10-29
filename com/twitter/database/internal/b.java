package com.twitter.database.internal;

import android.content.ContentValues;
import com.twitter.database.model.k;
import com.twitter.util.j;

/* compiled from: Twttr */
public final class b<S> extends k<S> {
    protected final l a;
    protected final f b;
    protected final ContentValues c;
    private boolean e;

    public b(ContentValues contentValues, S s, l lVar, f fVar) {
        super(s);
        this.c = contentValues;
        this.a = lVar;
        this.b = fVar;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public void a() {
        this.c.clear();
    }

    public long b() {
        j.c();
        long a = this.b.d().a(this.a.a(), this.c);
        if (!this.e) {
            a();
        }
        d();
        return a;
    }

    public long c() {
        j.c();
        long b = this.b.d().b(this.a.a(), this.c);
        if (!this.e) {
            a();
        }
        d();
        return b;
    }

    public int a(String str, String[] strArr) {
        j.c();
        int a = this.b.d().a(this.a.a(), this.c, str, strArr);
        if (!this.e) {
            a();
        }
        d();
        return a;
    }

    private void d() {
        this.a.l();
    }
}

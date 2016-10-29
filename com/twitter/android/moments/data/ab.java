package com.twitter.android.moments.data;

import cgu;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.library.provider.bu;
import com.twitter.library.provider.ck;
import defpackage.aoy;
import java.io.Closeable;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
public class ab implements Closeable {
    private final y a;
    private final long b;

    public ab(long j, y yVar) {
        this.b = j;
        this.a = yVar;
    }

    public o<cgu<MomentModule>> a(long j) {
        return this.a.a(new aoy().a(ck.a(bu.a(j), this.b)).a(bu.J).a());
    }

    public void close() throws IOException {
        this.a.close();
    }
}

package com.twitter.library.network.forecaster;

import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.c;
import com.twitter.internal.network.k;
import com.twitter.util.units.data.Bytes;
import com.twitter.util.units.duration.Duration;
import com.twitter.util.units.duration.Milliseconds;

/* compiled from: Twttr */
class f implements c {
    final /* synthetic */ c a;

    f(c cVar) {
        this.a = cVar;
    }

    public void a(HttpOperation httpOperation) {
    }

    public void b(HttpOperation httpOperation) {
        k l = httpOperation.l();
        Bytes bytes = new Bytes((double) httpOperation.f());
        Milliseconds milliseconds = new Milliseconds((double) httpOperation.g());
        Bytes bytes2 = new Bytes((double) l.i);
        Milliseconds milliseconds2 = new Milliseconds((double) l.f);
        Duration milliseconds3 = new Milliseconds((double) l.t[3]);
        this.a.a(bytes, milliseconds, this.a.f);
        this.a.a(bytes2, milliseconds2, this.a.g);
        this.a.a(milliseconds3);
    }

    public void a(HttpOperation httpOperation, Exception exception) {
    }
}

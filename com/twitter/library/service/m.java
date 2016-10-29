package com.twitter.library.service;

import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.k;
import java.util.Collection;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public final class m extends p {
    private static final Collection<RequestMethod> a;
    private static final Collection<Integer> e;
    private final long f;
    private final long g;
    private final int h;
    private int i;
    private long j;
    private long k;

    static {
        a = Collections.singleton(RequestMethod.a);
        e = Collections.singleton(Integer.valueOf(503));
    }

    public m(int i, long j, long j2, TimeUnit timeUnit, Collection<RequestMethod> collection, Collection<Integer> collection2) {
        super(collection, collection2);
        this.h = i;
        this.f = timeUnit.toMillis(j);
        this.g = timeUnit.toMillis(j2);
    }

    protected boolean a(HttpOperation httpOperation, k kVar) {
        if (this.h > 0 && this.i >= this.h) {
            return false;
        }
        if (this.i > 0) {
            this.k = (long) (Math.pow(2.0d, (double) (this.i - 1)) * ((double) this.f));
        } else {
            this.k = 0;
        }
        this.i++;
        this.j += this.k;
        if (this.k + this.j <= this.g) {
            return true;
        }
        return false;
    }

    public long b(ab<aa> abVar) {
        return this.k;
    }
}

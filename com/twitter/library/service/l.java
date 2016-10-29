package com.twitter.library.service;

import android.content.Context;
import bbu;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.k;
import com.twitter.library.scribe.TwitterScribeLog;
import java.util.Arrays;
import java.util.Collection;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public final class l extends p {
    private static final Collection<RequestMethod> a;
    private static final Collection<Integer> e;
    private final int f;
    private int g;
    private long h;
    private long i;
    private final long j;

    static {
        a = Arrays.asList(new RequestMethod[]{RequestMethod.a, RequestMethod.b});
        e = Arrays.asList(new Integer[]{Integer.valueOf(401), Integer.valueOf(503)});
    }

    public l(Context context) {
        this(context, 1);
    }

    public l(Context context, int i) {
        super(a, e);
        this.j = TimeUnit.SECONDS.toMillis(30);
        this.f = i;
    }

    protected boolean a(HttpOperation httpOperation, k kVar) {
        boolean z = true;
        this.g++;
        switch (kVar.a) {
            case 401:
                this.h = 0;
                return this.g <= this.f;
            case 503:
                if (this.g > this.f || !RequestMethod.a.equals(httpOperation.h())) {
                    return false;
                }
                long a = p.a(httpOperation);
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(0).i().b(new String[]{"api:::attempt"})).a(503)).d("retry-after")).a(TimeUnit.SECONDS.convert(a, TimeUnit.MILLISECONDS))).b(httpOperation.i().toString())).b(kVar.e));
                if (a != 0) {
                    this.h = a;
                    if (this.h + this.i > this.j) {
                        return false;
                    }
                    this.i += this.h;
                    return true;
                }
                this.h = 0;
                if (this.g > this.f) {
                    z = false;
                }
                return z;
            default:
                return false;
        }
    }

    public long b(ab<aa> abVar) {
        return this.h;
    }
}

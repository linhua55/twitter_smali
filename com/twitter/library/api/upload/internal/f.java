package com.twitter.library.api.upload.internal;

import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.k;
import com.twitter.library.service.aa;
import com.twitter.library.service.p;
import java.util.Arrays;
import java.util.Collection;

/* compiled from: Twttr */
public class f extends p {
    private static final Collection<RequestMethod> a;
    private static final Collection<Integer> e;
    private final int f;
    private int g;

    static {
        a = Arrays.asList(new RequestMethod[]{RequestMethod.b});
        e = Arrays.asList(new Integer[]{Integer.valueOf(500)});
    }

    public f() {
        this(1);
    }

    public f(int i) {
        super(a, e);
        this.f = i;
    }

    public long b(ab<aa> abVar) {
        return ((long) (Math.random() * 100.0d)) + 1000;
    }

    protected boolean a(HttpOperation httpOperation, k kVar) {
        this.g++;
        if (kVar.a == 500 && this.g <= this.f) {
            return true;
        }
        return false;
    }
}

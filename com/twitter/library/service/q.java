package com.twitter.library.service;

import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.k;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

/* compiled from: Twttr */
public final class q extends p {
    private static final Collection<RequestMethod> a;
    private static final Collection<Integer> e;
    private final int f;
    private int g;

    static {
        a = Collections.singleton(RequestMethod.a);
        e = Arrays.asList(new Integer[]{Integer.valueOf(500), Integer.valueOf(502)});
    }

    public q(int i) {
        super(a, e);
        this.f = i;
    }

    public q(int i, Collection<RequestMethod> collection, Collection<Integer> collection2) {
        super(collection, collection2);
        this.f = i;
    }

    protected boolean a(HttpOperation httpOperation, k kVar) {
        int i = this.g;
        this.g = i + 1;
        return i < this.f;
    }
}

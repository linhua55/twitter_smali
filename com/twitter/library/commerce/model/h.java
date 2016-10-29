package com.twitter.library.commerce.model;

import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import java.io.IOException;

/* compiled from: Twttr */
public class h extends g<f> {
    public static final n<f> a;

    protected h() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    static {
        a = new h();
    }

    protected f a(p pVar, int i) throws IOException, ClassNotFoundException {
        f fVar = new f();
        a(pVar, fVar, i);
        return fVar;
    }
}

package com.twitter.model.core;

import ctc;
import cto;

/* compiled from: Twttr */
public class u {
    public static <T extends t> Iterable<Long> a(Iterable<T> iterable) {
        return cto.a(iterable, new v());
    }

    public static <T extends t> ctc<T, Long> a() {
        return new w();
    }
}

package com.twitter.library.api;

import java.util.List;

/* compiled from: Twttr */
public class aq<T> {
    private final String a;
    private final List<T> b;

    public aq(String str, List<T> list) {
        this.a = str;
        this.b = list;
    }

    public String a() {
        return this.a;
    }

    public List<T> b() {
        return this.b;
    }
}

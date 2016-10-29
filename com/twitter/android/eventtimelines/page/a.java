package com.twitter.android.eventtimelines.page;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class a implements Iterable<f> {
    public static final a a;
    private final List<f> b;

    static {
        a = new a(Collections.emptyList());
    }

    private a(List<f> list) {
        this.b = list;
    }

    public Iterator<f> iterator() {
        return this.b.iterator();
    }

    public List<f> a() {
        return this.b;
    }
}

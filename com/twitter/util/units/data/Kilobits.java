package com.twitter.util.units.data;

import com.twitter.util.units.Unit;

/* compiled from: Twttr */
public class Kilobits extends Data {
    private static final Bytes a;
    private static final long serialVersionUID = -285621822740973197L;

    public /* synthetic */ Unit a() {
        return b();
    }

    static {
        a = new Bytes(125.0d);
    }

    public Kilobits(Data data) {
        super(data);
    }

    public Bytes b() {
        return a;
    }
}

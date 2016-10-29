package com.twitter.util.units.data;

import com.twitter.util.units.Unit;

/* compiled from: Twttr */
public class Bytes extends Data {
    public static final Bytes a;
    private static final long serialVersionUID = 7954923634979976607L;

    public /* synthetic */ Unit a() {
        return b();
    }

    static {
        a = new Bytes(1.0d);
    }

    public Bytes(double d) {
        super(d);
    }

    public Bytes b() {
        return a;
    }
}

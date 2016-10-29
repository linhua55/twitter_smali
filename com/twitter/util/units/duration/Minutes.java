package com.twitter.util.units.duration;

import com.twitter.util.units.Unit;

/* compiled from: Twttr */
public class Minutes extends Duration {
    private static final Milliseconds a;
    private static final long serialVersionUID = -3587362085496287375L;

    public /* synthetic */ Unit a() {
        return b();
    }

    static {
        a = new Milliseconds(60000.0d);
    }

    public Minutes(double d) {
        super(d);
    }

    public Milliseconds b() {
        return a;
    }
}

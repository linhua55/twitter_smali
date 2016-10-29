package com.twitter.util.units.duration;

import com.twitter.util.units.Unit;

/* compiled from: Twttr */
public class Seconds extends Duration {
    public static final Seconds a;
    private static final Milliseconds b;
    private static final long serialVersionUID = -6402508264559999695L;

    public /* synthetic */ Unit a() {
        return b();
    }

    static {
        a = new Seconds(1.0d);
        b = new Milliseconds(1000.0d);
    }

    public Seconds(double d) {
        super(d);
    }

    public Seconds(Duration duration) {
        super(duration);
    }

    public Milliseconds b() {
        return b;
    }
}

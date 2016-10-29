package com.twitter.util.units.duration;

import com.twitter.util.units.Unit;

/* compiled from: Twttr */
public class Milliseconds extends Duration {
    public static final Milliseconds a;
    public static final Milliseconds b;
    private static final long serialVersionUID = 4112923426095693167L;

    public /* synthetic */ Unit a() {
        return b();
    }

    static {
        a = new Milliseconds(0.0d);
        b = new Milliseconds(1.0d);
    }

    public Milliseconds(double d) {
        super(d);
    }

    public Milliseconds(Duration duration) {
        super(duration);
    }

    public Milliseconds b() {
        return b;
    }
}

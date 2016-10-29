package com.twitter.util.units.duration;

import com.twitter.util.units.Unit;

/* compiled from: Twttr */
public abstract class Duration extends Unit<Duration, Milliseconds> {
    private static final long serialVersionUID = 5221769317573421497L;

    protected Duration(double d) {
        super(d);
    }

    protected Duration(Duration duration) {
        super((Unit) duration);
    }
}

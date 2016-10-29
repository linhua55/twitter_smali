package com.twitter.util.units.bitrate;

import com.twitter.util.units.Unit;

/* compiled from: Twttr */
public abstract class Bitrate extends Unit<Bitrate, KilobitsPerSecond> {
    private static final long serialVersionUID = 2332831265892475045L;

    protected Bitrate(double d) {
        super(d);
    }
}

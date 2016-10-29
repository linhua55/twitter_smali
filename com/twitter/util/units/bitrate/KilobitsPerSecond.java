package com.twitter.util.units.bitrate;

import com.twitter.util.units.Unit;
import com.twitter.util.units.data.Data;
import com.twitter.util.units.data.Kilobits;
import com.twitter.util.units.duration.Duration;
import com.twitter.util.units.duration.Seconds;

/* compiled from: Twttr */
public class KilobitsPerSecond extends Bitrate {
    public static final KilobitsPerSecond a;
    public static final KilobitsPerSecond b;
    private static final long serialVersionUID = -7799670609324522990L;

    public /* synthetic */ Unit a() {
        return b();
    }

    static {
        a = new KilobitsPerSecond(0.0d);
        b = new KilobitsPerSecond(1.0d);
    }

    public KilobitsPerSecond(double d) {
        super(d);
    }

    public KilobitsPerSecond(Data data, Duration duration) {
        super(new Kilobits(data).doubleValue() / new Seconds(duration).doubleValue());
    }

    public KilobitsPerSecond b() {
        return b;
    }
}

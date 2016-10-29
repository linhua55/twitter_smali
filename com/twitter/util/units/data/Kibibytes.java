package com.twitter.util.units.data;

import com.twitter.util.units.Unit;

/* compiled from: Twttr */
public class Kibibytes extends Data {
    private static final Bytes a;
    private static final long serialVersionUID = 7160331552350852152L;

    public /* synthetic */ Unit a() {
        return b();
    }

    static {
        a = new Bytes(1024.0d);
    }

    public Kibibytes(double d) {
        super(d);
    }

    public Kibibytes(Data data) {
        super(data);
    }

    public Bytes b() {
        return a;
    }
}

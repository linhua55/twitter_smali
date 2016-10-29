package com.caverock.androidsvg;

/* compiled from: Twttr */
public class PreserveAspectRatio {
    public static final PreserveAspectRatio a;
    public static final PreserveAspectRatio b;
    public static final PreserveAspectRatio c;
    public static final PreserveAspectRatio d;
    public static final PreserveAspectRatio e;
    public static final PreserveAspectRatio f;
    public static final PreserveAspectRatio g;
    public static final PreserveAspectRatio h;
    public static final PreserveAspectRatio i;
    private Alignment j;
    private Scale k;

    /* compiled from: Twttr */
    public enum Alignment {
        None,
        XMinYMin,
        XMidYMin,
        XMaxYMin,
        XMinYMid,
        XMidYMid,
        XMaxYMid,
        XMinYMax,
        XMidYMax,
        XMaxYMax
    }

    /* compiled from: Twttr */
    public enum Scale {
        Meet,
        Slice
    }

    static {
        a = new PreserveAspectRatio(null, null);
        b = new PreserveAspectRatio(Alignment.None, null);
        c = new PreserveAspectRatio(Alignment.XMidYMid, Scale.Meet);
        d = new PreserveAspectRatio(Alignment.XMinYMin, Scale.Meet);
        e = new PreserveAspectRatio(Alignment.XMaxYMax, Scale.Meet);
        f = new PreserveAspectRatio(Alignment.XMidYMin, Scale.Meet);
        g = new PreserveAspectRatio(Alignment.XMidYMax, Scale.Meet);
        h = new PreserveAspectRatio(Alignment.XMidYMid, Scale.Slice);
        i = new PreserveAspectRatio(Alignment.XMinYMin, Scale.Slice);
    }

    public PreserveAspectRatio(Alignment alignment, Scale scale) {
        this.j = alignment;
        this.k = scale;
    }

    public Alignment a() {
        return this.j;
    }

    public Scale b() {
        return this.k;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        PreserveAspectRatio preserveAspectRatio = (PreserveAspectRatio) obj;
        if (this.j != preserveAspectRatio.j) {
            return false;
        }
        if (this.k != preserveAspectRatio.k) {
            return false;
        }
        return true;
    }
}

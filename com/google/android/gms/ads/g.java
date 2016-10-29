package com.google.android.gms.ads;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.exoplayer.SampleSource;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.aa;

public final class g {
    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    public static final g g;
    public static final g h;
    private final int i;
    private final int j;
    private final String k;

    static {
        a = new g(320, 50, "320x50_mb");
        b = new g(468, 60, "468x60_as");
        c = new g(320, 100, "320x100_as");
        d = new g(728, 90, "728x90_as");
        e = new g(300, Callback.DEFAULT_SWIPE_ANIMATION_DURATION, "300x250_as");
        f = new g(160, 600, "160x600_as");
        g = new g(-1, -2, "smart_banner");
        h = new g(-3, -4, "fluid");
    }

    public g(int i, int i2) {
        this(i, i2, (i == -1 ? "FULL" : String.valueOf(i)) + "x" + (i2 == -2 ? "AUTO" : String.valueOf(i2)) + "_as");
    }

    g(int i, int i2, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException("Invalid width for AdSize: " + i);
        } else if (i2 >= 0 || i2 == -2 || i2 == -4) {
            this.i = i;
            this.j = i2;
            this.k = str;
        } else {
            throw new IllegalArgumentException("Invalid height for AdSize: " + i2);
        }
    }

    public int a() {
        return this.j;
    }

    public int a(Context context) {
        switch (this.j) {
            case SampleSource.FORMAT_READ /*-4*/:
            case SampleSource.SAMPLE_READ /*-3*/:
                return -1;
            case SampleSource.NOTHING_READ /*-2*/:
                return AdSizeParcel.b(context.getResources().getDisplayMetrics());
            default:
                return aa.a().a(context, this.j);
        }
    }

    public int b() {
        return this.i;
    }

    public int b(Context context) {
        switch (this.i) {
            case SampleSource.FORMAT_READ /*-4*/:
            case SampleSource.SAMPLE_READ /*-3*/:
                return -1;
            case TtmlStyle.UNSPECIFIED /*-1*/:
                return AdSizeParcel.a(context.getResources().getDisplayMetrics());
            default:
                return aa.a().a(context, this.i);
        }
    }

    public boolean c() {
        return this.i == -3 && this.j == -4;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.i == gVar.i && this.j == gVar.j && this.k.equals(gVar.k);
    }

    public int hashCode() {
        return this.k.hashCode();
    }

    public String toString() {
        return this.k;
    }
}

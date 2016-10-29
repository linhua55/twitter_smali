package com.twitter.model.geo;

import android.location.Location;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class d {
    public static final n<d> a;
    private final double b;
    private final double c;

    static {
        a = new f();
    }

    public d(double d, double d2) {
        if (Double.isNaN(d) || Double.isInfinite(d) || Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d + ", " + d2 + " is not a valid coordinate");
        }
        this.b = d;
        this.c = d2;
    }

    public static d a(Location location) {
        return new d(location.getLatitude(), location.getLongitude());
    }

    public String toString() {
        return "Coordinate{latitude=" + this.b + ", longitude=" + this.c + '}';
    }

    public double a() {
        return this.b;
    }

    public double b() {
        return this.c;
    }

    public float a(d dVar) {
        float[] fArr = new float[1];
        Location.distanceBetween(a(), b(), dVar.a(), dVar.b(), fArr);
        return fArr[0];
    }
}

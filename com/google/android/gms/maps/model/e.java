package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.bm;

public final class e {
    private double a;
    private double b;
    private double c;
    private double d;

    public e() {
        this.a = Double.POSITIVE_INFINITY;
        this.b = Double.NEGATIVE_INFINITY;
        this.c = Double.NaN;
        this.d = Double.NaN;
    }

    private boolean a(double d) {
        boolean z = false;
        if (this.c <= this.d) {
            return this.c <= d && d <= this.d;
        } else {
            if (this.c <= d || d <= this.d) {
                z = true;
            }
            return z;
        }
    }

    public LatLngBounds a() {
        bm.a(!Double.isNaN(this.c), "no included points");
        return new LatLngBounds(new LatLng(this.a, this.c), new LatLng(this.b, this.d));
    }

    public e a(LatLng latLng) {
        this.a = Math.min(this.a, latLng.a);
        this.b = Math.max(this.b, latLng.a);
        double d = latLng.b;
        if (Double.isNaN(this.c)) {
            this.c = d;
            this.d = d;
        } else if (!a(d)) {
            if (LatLngBounds.c(this.c, d) < LatLngBounds.d(this.d, d)) {
                this.c = d;
            } else {
                this.d = d;
            }
        }
        return this;
    }
}

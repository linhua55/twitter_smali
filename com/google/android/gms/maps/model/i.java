package com.google.android.gms.maps.model;

public final class i {
    public float a;
    public float b;

    public StreetViewPanoramaOrientation a() {
        return new StreetViewPanoramaOrientation(this.b, this.a);
    }

    public i a(float f) {
        this.b = f;
        return this;
    }

    public i b(float f) {
        this.a = f;
        return this;
    }
}

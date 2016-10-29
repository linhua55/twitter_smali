package com.google.android.gms.maps.model;

public final class c {
    private LatLng a;
    private float b;
    private float c;
    private float d;

    public CameraPosition a() {
        return new CameraPosition(this.a, this.b, this.c, this.d);
    }

    public c a(float f) {
        this.b = f;
        return this;
    }

    public c a(LatLng latLng) {
        this.a = latLng;
        return this;
    }

    public c b(float f) {
        this.c = f;
        return this;
    }

    public c c(float f) {
        this.d = f;
        return this;
    }
}

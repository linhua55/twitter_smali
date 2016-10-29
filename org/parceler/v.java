package org.parceler;

import android.os.Parcel;
import defpackage.cye;

/* compiled from: Twttr */
final class v extends cye<Double> {
    v() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public Double a(Parcel parcel) {
        return Double.valueOf(parcel.readDouble());
    }

    public void a(Double d, Parcel parcel) {
        parcel.writeDouble(d.doubleValue());
    }
}

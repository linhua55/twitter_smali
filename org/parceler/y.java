package org.parceler;

import android.os.Parcel;
import defpackage.cye;

/* compiled from: Twttr */
final class y extends cye<Float> {
    y() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public Float a(Parcel parcel) {
        return Float.valueOf(parcel.readFloat());
    }

    public void a(Float f, Parcel parcel) {
        parcel.writeFloat(f.floatValue());
    }
}

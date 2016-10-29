package org.parceler;

import android.os.Parcel;
import android.util.SparseBooleanArray;
import defpackage.cye;

/* compiled from: Twttr */
final class bh extends cye<SparseBooleanArray> {
    bh() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public SparseBooleanArray a(Parcel parcel) {
        return parcel.readSparseBooleanArray();
    }

    public void a(SparseBooleanArray sparseBooleanArray, Parcel parcel) {
        parcel.writeSparseBooleanArray(sparseBooleanArray);
    }
}

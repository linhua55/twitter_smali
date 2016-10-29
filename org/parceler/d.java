package org.parceler;

import android.os.Parcel;
import defpackage.cye;

/* compiled from: Twttr */
final class d extends cye<Boolean> {
    d() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public Boolean a(Parcel parcel) {
        return Boolean.valueOf(parcel.createBooleanArray()[0]);
    }

    public void a(Boolean bool, Parcel parcel) {
        parcel.writeBooleanArray(new boolean[]{bool.booleanValue()});
    }
}

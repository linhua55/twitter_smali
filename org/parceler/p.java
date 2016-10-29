package org.parceler;

import android.os.Parcel;
import defpackage.cye;

/* compiled from: Twttr */
final class p extends cye<Character> {
    p() {
    }

    public /* synthetic */ Object b(Parcel parcel) {
        return a(parcel);
    }

    public Character a(Parcel parcel) {
        return Character.valueOf(parcel.createCharArray()[0]);
    }

    public void a(Character ch, Parcel parcel) {
        parcel.writeCharArray(new char[]{ch.charValue()});
    }
}

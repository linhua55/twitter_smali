package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;

public class EventParams implements SafeParcelable, Iterable<String> {
    public static final at CREATOR;
    public final int a;
    private final Bundle b;

    static {
        CREATOR = new at();
    }

    EventParams(int i, Bundle bundle) {
        this.a = i;
        this.b = bundle;
    }

    EventParams(Bundle bundle) {
        bm.a(bundle);
        this.b = bundle;
        this.a = 1;
    }

    public int a() {
        return this.b.size();
    }

    Object a(String str) {
        return this.b.get(str);
    }

    public Bundle b() {
        return new Bundle(this.b);
    }

    public int describeContents() {
        return 0;
    }

    public Iterator<String> iterator() {
        return new a(this);
    }

    public String toString() {
        return this.b.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        at.a(this, parcel, i);
    }
}

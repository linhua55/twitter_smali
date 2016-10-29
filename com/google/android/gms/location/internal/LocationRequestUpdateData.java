package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.o;
import com.google.android.gms.location.p;
import com.google.android.gms.location.r;
import com.google.android.gms.location.s;

public class LocationRequestUpdateData implements SafeParcelable {
    public static final ad CREATOR;
    int a;
    LocationRequestInternal b;
    r c;
    PendingIntent d;
    o e;
    l f;
    private final int g;

    static {
        CREATOR = new ad();
    }

    LocationRequestUpdateData(int i, int i2, LocationRequestInternal locationRequestInternal, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        l lVar = null;
        this.g = i;
        this.a = i2;
        this.b = locationRequestInternal;
        this.c = iBinder == null ? null : s.a(iBinder);
        this.d = pendingIntent;
        this.e = iBinder2 == null ? null : p.a(iBinder2);
        if (iBinder3 != null) {
            lVar = m.a(iBinder3);
        }
        this.f = lVar;
    }

    public static LocationRequestUpdateData a(LocationRequestInternal locationRequestInternal, PendingIntent pendingIntent, @Nullable l lVar) {
        return new LocationRequestUpdateData(1, 1, locationRequestInternal, null, pendingIntent, null, lVar != null ? lVar.asBinder() : null);
    }

    public static LocationRequestUpdateData a(LocationRequestInternal locationRequestInternal, r rVar, @Nullable l lVar) {
        return new LocationRequestUpdateData(1, 1, locationRequestInternal, rVar.asBinder(), null, null, lVar != null ? lVar.asBinder() : null);
    }

    public static LocationRequestUpdateData a(o oVar, @Nullable l lVar) {
        return new LocationRequestUpdateData(1, 2, null, null, null, oVar.asBinder(), lVar != null ? lVar.asBinder() : null);
    }

    public static LocationRequestUpdateData a(r rVar, @Nullable l lVar) {
        return new LocationRequestUpdateData(1, 2, null, rVar.asBinder(), null, null, lVar != null ? lVar.asBinder() : null);
    }

    int a() {
        return this.g;
    }

    IBinder b() {
        return this.c == null ? null : this.c.asBinder();
    }

    IBinder c() {
        return this.e == null ? null : this.e.asBinder();
    }

    IBinder d() {
        return this.f == null ? null : this.f.asBinder();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ad.a(this, parcel, i);
    }
}

package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public class PeriodicTask extends Task {
    public static final Creator<PeriodicTask> CREATOR;
    protected long a;
    protected long b;

    static {
        CREATOR = new h();
    }

    @Deprecated
    private PeriodicTask(Parcel parcel) {
        super(parcel);
        this.a = -1;
        this.b = -1;
        this.a = parcel.readLong();
        this.b = Math.min(parcel.readLong(), this.a);
    }

    private PeriodicTask(i iVar) {
        super((j) iVar);
        this.a = -1;
        this.b = -1;
        this.a = i.a(iVar);
        this.b = Math.min(i.b(iVar), this.a);
    }

    public long a() {
        return this.a;
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        bundle.putLong("period", this.a);
        bundle.putLong("period_flex", this.b);
    }

    public long b() {
        return this.b;
    }

    public String toString() {
        return super.toString() + " " + "period=" + a() + " " + "flex=" + b();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
    }
}

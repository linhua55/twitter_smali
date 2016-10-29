package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public class OneoffTask extends Task {
    public static final Creator<OneoffTask> CREATOR;
    private final long a;
    private final long b;

    static {
        CREATOR = new e();
    }

    @Deprecated
    private OneoffTask(Parcel parcel) {
        super(parcel);
        this.a = parcel.readLong();
        this.b = parcel.readLong();
    }

    private OneoffTask(f fVar) {
        super((j) fVar);
        this.a = f.a(fVar);
        this.b = f.b(fVar);
    }

    public long a() {
        return this.a;
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        bundle.putLong("window_start", this.a);
        bundle.putLong("window_end", this.b);
    }

    public long b() {
        return this.b;
    }

    public String toString() {
        return super.toString() + " " + "windowStart=" + a() + " " + "windowEnd=" + b();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
    }
}

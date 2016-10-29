package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

public abstract class Task implements Parcelable {
    private final String a;
    private final String b;
    private final boolean c;
    private final boolean d;
    private final int e;
    private final boolean f;
    private final o g;
    private final Bundle h;

    @Deprecated
    Task(Parcel parcel) {
        boolean z = true;
        Log.e("Task", "Constructing a Task object using a parcel.");
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readInt() == 1;
        if (parcel.readInt() != 1) {
            z = false;
        }
        this.d = z;
        this.e = 2;
        this.f = false;
        this.g = o.a;
        this.h = null;
    }

    Task(j jVar) {
        this.a = jVar.b;
        this.b = jVar.c;
        this.c = jVar.d;
        this.d = jVar.e;
        this.e = jVar.a;
        this.f = jVar.f;
        this.g = jVar.g;
        this.h = jVar.h;
    }

    public static void a(o oVar) {
        if (oVar != null) {
            int a = oVar.a();
            if (a == 1 || a == 0) {
                int b = oVar.b();
                int c = oVar.c();
                if (a == 0 && b < 0) {
                    throw new IllegalArgumentException("InitialBackoffSeconds can't be negative: " + b);
                } else if (a == 1 && b < 10) {
                    throw new IllegalArgumentException("RETRY_POLICY_LINEAR must have an initial backoff at least 10 seconds.");
                } else if (c < b) {
                    throw new IllegalArgumentException("MaximumBackoffSeconds must be greater than InitialBackoffSeconds: " + oVar.c());
                } else {
                    return;
                }
            }
            throw new IllegalArgumentException("Must provide a valid RetryPolicy: " + a);
        }
    }

    private static boolean a(Object obj) {
        return (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String) || (obj instanceof Boolean);
    }

    public static void b(Bundle bundle) {
        if (bundle != null) {
            Parcel obtain = Parcel.obtain();
            bundle.writeToParcel(obtain, 0);
            int dataSize = obtain.dataSize();
            if (dataSize > 10240) {
                obtain.recycle();
                throw new IllegalArgumentException("Extras exceeding maximum size(10240 bytes): " + dataSize);
            }
            obtain.recycle();
            for (String str : bundle.keySet()) {
                if (!a(bundle.get(str))) {
                    throw new IllegalArgumentException("Only the following extra parameter types are supported: Integer, Long, Double, String, and Boolean. ");
                }
            }
        }
    }

    public void a(Bundle bundle) {
        bundle.putString("tag", this.b);
        bundle.putBoolean("update_current", this.c);
        bundle.putBoolean("persisted", this.d);
        bundle.putString(NotificationCompatApi21.CATEGORY_SERVICE, this.a);
        bundle.putInt("requiredNetwork", this.e);
        bundle.putBoolean("requiresCharging", this.f);
        bundle.putBundle("retryStrategy", this.g.a(new Bundle()));
        bundle.putBundle("extras", this.h);
    }

    public String c() {
        return this.a;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c ? 1 : 0);
        if (!this.d) {
            i2 = 0;
        }
        parcel.writeInt(i2);
    }
}

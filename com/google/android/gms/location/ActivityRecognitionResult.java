package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class ActivityRecognitionResult implements SafeParcelable {
    public static final a CREATOR;
    List<DetectedActivity> a;
    long b;
    long c;
    int d;
    Bundle e;
    private final int f;

    static {
        CREATOR = new a();
    }

    public ActivityRecognitionResult(int i, List<DetectedActivity> list, long j, long j2, int i2, Bundle bundle) {
        this.f = i;
        this.a = list;
        this.b = j;
        this.c = j2;
        this.d = i2;
        this.e = bundle;
    }

    private static boolean a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return true;
        }
        if ((bundle == null && bundle2 != null) || (bundle != null && bundle2 == null)) {
            return false;
        }
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            if (bundle.get(str) == null) {
                if (bundle2.get(str) != null) {
                    return false;
                }
            } else if (bundle.get(str) instanceof Bundle) {
                if (!a(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else if (!bundle.get(str).equals(bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    public int a() {
        return this.f;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
        return this.b == activityRecognitionResult.b && this.c == activityRecognitionResult.c && this.d == activityRecognitionResult.d && bj.a(this.a, activityRecognitionResult.a) && a(this.e, activityRecognitionResult.e);
    }

    public int hashCode() {
        return bj.a(Long.valueOf(this.b), Long.valueOf(this.c), Integer.valueOf(this.d), this.a, this.e);
    }

    public String toString() {
        return "ActivityRecognitionResult [probableActivities=" + this.a + ", timeMillis=" + this.b + ", elapsedRealtimeMillis=" + this.c + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}

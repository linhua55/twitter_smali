package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.Comparator;

public class DetectedActivity implements SafeParcelable {
    public static final c CREATOR;
    public static final Comparator<DetectedActivity> a;
    public static final int[] b;
    int c;
    int d;
    private final int e;

    static {
        a = new b();
        b = new int[]{0, 1, 2, 4, 5, 6, 7, 8, 10, 11, 12, 13, 14};
        CREATOR = new c();
    }

    public DetectedActivity(int i, int i2, int i3) {
        this.e = i;
        this.c = i2;
        this.d = i3;
    }

    public static String a(int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return "IN_VEHICLE";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "ON_BICYCLE";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "ON_FOOT";
            case Util.TYPE_OTHER /*3*/:
                return "STILL";
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return "UNKNOWN";
            case EbmlReader.TYPE_FLOAT /*5*/:
                return "TILTING";
            case C.ENCODING_DTS /*7*/:
                return "WALKING";
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return "RUNNING";
            default:
                return Integer.toString(i);
        }
    }

    private int b(int i) {
        return i > 15 ? 4 : i;
    }

    public int a() {
        return b(this.c);
    }

    public int b() {
        return this.d;
    }

    public int c() {
        return this.e;
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
        DetectedActivity detectedActivity = (DetectedActivity) obj;
        return this.c == detectedActivity.c && this.d == detectedActivity.d;
    }

    public int hashCode() {
        return bj.a(Integer.valueOf(this.c), Integer.valueOf(this.d));
    }

    public String toString() {
        return "DetectedActivity [type=" + a(a()) + ", confidence=" + this.d + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        c.a(this, parcel, i);
    }
}

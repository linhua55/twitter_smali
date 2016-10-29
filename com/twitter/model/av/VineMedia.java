package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.List;

/* compiled from: Twttr */
public class VineMedia implements AVMedia {
    public static final Creator<VineMedia> CREATOR;
    private final String a;
    private final String b;
    private final long c;

    static {
        CREATOR = new z();
    }

    public VineMedia(String str, String str2, long j) {
        this.a = str;
        this.b = str2;
        this.c = j;
    }

    VineMedia(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readLong();
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return "video";
    }

    public String c() {
        return this.b;
    }

    public boolean d() {
        return false;
    }

    public boolean e() {
        return true;
    }

    public a f() {
        return null;
    }

    public int g() {
        return 0;
    }

    public boolean h() {
        return true;
    }

    public long j() {
        return this.c;
    }

    public List<String> a(String str) {
        return null;
    }

    public boolean i() {
        return false;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeLong(this.c);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r7) {
        /*
        r6 = this;
        r0 = 1;
        r1 = 0;
        if (r6 != r7) goto L_0x0006;
    L_0x0004:
        r1 = r0;
    L_0x0005:
        return r1;
    L_0x0006:
        if (r7 == 0) goto L_0x0005;
    L_0x0008:
        r2 = r6.getClass();
        r3 = r7.getClass();
        if (r2 != r3) goto L_0x0005;
    L_0x0012:
        r7 = (com.twitter.model.av.VineMedia) r7;
        r2 = r6.c;
        r4 = r7.c;
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0005;
    L_0x001c:
        r2 = r6.a;
        if (r2 == 0) goto L_0x003b;
    L_0x0020:
        r2 = r6.a;
        r3 = r7.a;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x002a:
        r2 = r6.b;
        if (r2 == 0) goto L_0x0040;
    L_0x002e:
        r2 = r6.b;
        r3 = r7.b;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x0039;
    L_0x0038:
        r0 = r1;
    L_0x0039:
        r1 = r0;
        goto L_0x0005;
    L_0x003b:
        r2 = r7.a;
        if (r2 == 0) goto L_0x002a;
    L_0x003f:
        goto L_0x0005;
    L_0x0040:
        r2 = r7.b;
        if (r2 != 0) goto L_0x0038;
    L_0x0044:
        goto L_0x0039;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.model.av.VineMedia.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        if (this.a != null) {
            hashCode = this.a.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode *= 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return ((hashCode + i) * 31) + ((int) (this.c ^ (this.c >>> 32)));
    }
}

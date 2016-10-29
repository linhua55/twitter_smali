package com.google.android.gms.clearcut;

import android.os.Parcel;
import com.google.android.gms.common.internal.bi;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ya;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import java.util.Arrays;

public class LogEventParcelable implements SafeParcelable {
    public static final h CREATOR;
    public final int a;
    public PlayLoggerContext b;
    public byte[] c;
    public int[] d;
    public final ya e;
    public final e f;
    public final e g;

    static {
        CREATOR = new h();
    }

    LogEventParcelable(int i, PlayLoggerContext playLoggerContext, byte[] bArr, int[] iArr) {
        this.a = i;
        this.b = playLoggerContext;
        this.c = bArr;
        this.d = iArr;
        this.e = null;
        this.f = null;
        this.g = null;
    }

    public LogEventParcelable(PlayLoggerContext playLoggerContext, ya yaVar, e eVar, e eVar2, int[] iArr) {
        this.a = 1;
        this.b = playLoggerContext;
        this.e = yaVar;
        this.f = eVar;
        this.g = eVar2;
        this.d = iArr;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogEventParcelable)) {
            return false;
        }
        LogEventParcelable logEventParcelable = (LogEventParcelable) obj;
        return this.a == logEventParcelable.a && bj.a(this.b, logEventParcelable.b) && Arrays.equals(this.c, logEventParcelable.c) && Arrays.equals(this.d, logEventParcelable.d) && bj.a(this.e, logEventParcelable.e) && bj.a(this.f, logEventParcelable.f) && bj.a(this.g, logEventParcelable.g);
    }

    public int hashCode() {
        return bj.a(Integer.valueOf(this.a), this.b, this.c, this.d, this.e, this.f, this.g);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("LogEventParcelable[");
        stringBuilder.append(this.a);
        stringBuilder.append(", ");
        stringBuilder.append(this.b);
        stringBuilder.append(", ");
        stringBuilder.append(this.c == null ? null : new String(this.c));
        stringBuilder.append(", ");
        stringBuilder.append(this.d == null ? (String) null : bi.a(", ").a(Arrays.asList(new int[][]{this.d})));
        stringBuilder.append(", ");
        stringBuilder.append(this.e);
        stringBuilder.append(", ");
        stringBuilder.append(this.f);
        stringBuilder.append(", ");
        stringBuilder.append(this.g);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        h.a(this, parcel, i);
    }
}

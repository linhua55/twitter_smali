package com.google.android.gms.common.data;

import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepName
public final class DataHolder implements SafeParcelable {
    public static final h CREATOR;
    private static final d l;
    Bundle a;
    int[] b;
    int c;
    boolean d;
    private final int e;
    private final String[] f;
    private final CursorWindow[] g;
    private final int h;
    private final Bundle i;
    private Object j;
    private boolean k;

    static {
        CREATOR = new h();
        l = new c(new String[0], null);
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.d = false;
        this.k = true;
        this.e = i;
        this.f = strArr;
        this.g = cursorWindowArr;
        this.h = i2;
        this.i = bundle;
    }

    private void a(String str, int i) {
        if (this.a == null || !this.a.containsKey(str)) {
            throw new IllegalArgumentException("No such column: " + str);
        } else if (h()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else if (i < 0 || i >= this.c) {
            throw new CursorIndexOutOfBoundsException(i, this.c);
        }
    }

    public int a(int i) {
        int i2 = 0;
        boolean z = i >= 0 && i < this.c;
        bm.a(z);
        while (i2 < this.b.length) {
            if (i < this.b[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == this.b.length ? i2 - 1 : i2;
    }

    public String a(String str, int i, int i2) {
        a(str, i);
        return this.g[i2].getString(i, this.a.getInt(str));
    }

    public void a() {
        int i;
        int i2 = 0;
        this.a = new Bundle();
        for (i = 0; i < this.f.length; i++) {
            this.a.putInt(this.f[i], i);
        }
        this.b = new int[this.g.length];
        i = 0;
        while (i2 < this.g.length) {
            this.b[i2] = i;
            i += this.g[i2].getNumRows() - (i - this.g[i2].getStartPosition());
            i2++;
        }
        this.c = i;
    }

    public void a(Object obj) {
        this.j = obj;
    }

    int b() {
        return this.e;
    }

    String[] c() {
        return this.f;
    }

    CursorWindow[] d() {
        return this.g;
    }

    public int describeContents() {
        return 0;
    }

    public int e() {
        return this.h;
    }

    public Bundle f() {
        return this.i;
    }

    protected void finalize() throws Throwable {
        try {
            if (this.k && this.g.length > 0 && !h()) {
                Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (" + (this.j == null ? "internal object: " + toString() : this.j.toString()) + ")");
                i();
            }
            super.finalize();
        } catch (Throwable th) {
            super.finalize();
        }
    }

    public int g() {
        return this.c;
    }

    public boolean h() {
        boolean z;
        synchronized (this) {
            z = this.d;
        }
        return z;
    }

    public void i() {
        synchronized (this) {
            if (!this.d) {
                this.d = true;
                for (CursorWindow close : this.g) {
                    close.close();
                }
            }
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        h.a(this, parcel, i);
    }
}

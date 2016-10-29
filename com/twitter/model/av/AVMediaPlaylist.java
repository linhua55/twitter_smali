package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable;
import com.twitter.util.collection.x;
import com.twitter.util.q;
import java.util.Collections;
import java.util.Map;

/* compiled from: Twttr */
public abstract class AVMediaPlaylist implements Parcelable {
    protected final int a;
    protected final String b;
    protected final Map<String, String> c;

    public abstract boolean a();

    public abstract String b();

    public abstract AVMedia c();

    protected AVMediaPlaylist(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readString();
        this.c = q.a(parcel);
    }

    protected AVMediaPlaylist() {
        this.a = 0;
        this.b = null;
        this.c = null;
    }

    protected AVMediaPlaylist(int i, String str) {
        this.a = i;
        this.b = str;
        this.c = Collections.emptyMap();
    }

    protected AVMediaPlaylist(Map<String, String> map, int i, String str) {
        this.a = i;
        this.b = str;
        this.c = map;
    }

    public int d() {
        if (this.a > 0) {
            return this.a;
        }
        return 0;
    }

    public String e() {
        return this.b;
    }

    public c f() {
        return new c(d(), e());
    }

    public Map<String, String> g() {
        return this.c;
    }

    public String h() {
        return null;
    }

    public DynamicAdInfo i() {
        return null;
    }

    public boolean j() {
        return k() != null;
    }

    public AVMedia k() {
        return null;
    }

    public AVMediaPlaylist a(DynamicAdInfo dynamicAdInfo, x<String> xVar) {
        return this;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AVMediaPlaylist aVMediaPlaylist = (AVMediaPlaylist) obj;
        if (this.a != aVMediaPlaylist.a) {
            return false;
        }
        if (this.b != null) {
            if (!this.b.equals(aVMediaPlaylist.b)) {
                return false;
            }
        } else if (aVMediaPlaylist.b != null) {
            return false;
        }
        if (this.c != null) {
            z = this.c.equals(aVMediaPlaylist.c);
        } else if (aVMediaPlaylist.c != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int i2 = this.a * 31;
        if (this.b != null) {
            hashCode = this.b.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + i2) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return hashCode + i;
    }

    public int describeContents() {
        return 0;
    }

    public void a(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        q.a(parcel, this.c);
    }
}

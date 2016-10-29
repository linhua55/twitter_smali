package com.twitter.library.api.periscope;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import caw;
import cfb;
import cmb;
import defpackage.bze;
import defpackage.caf;

/* compiled from: Twttr */
public class PeriscopeCapiModel implements Parcelable {
    public static final Creator<PeriscopeCapiModel> CREATOR;
    public final Object a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private int g;

    static {
        CREATOR = new a();
    }

    public int a() {
        return bze.a("periscope_broadcast");
    }

    public PeriscopeCapiModel() {
        this.a = new Object();
        this.b = TtmlNode.ANONYMOUS_REGION_ID;
    }

    protected PeriscopeCapiModel(Parcel parcel) {
        this.a = new Object();
        this.b = TtmlNode.ANONYMOUS_REGION_ID;
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readInt();
    }

    public void a(cmb cmb) {
        String a = caw.a("state", cmb);
        if (a == null) {
            a = "state null";
            cfb.c("PeriscopeCapiModel", "state null", new Throwable("state null"));
        } else {
            this.b = a;
        }
        this.c = caw.a("hls_url", cmb);
        this.d = caw.a("replay_url", cmb);
        if (this.c == null && this.d == null) {
            a = "both hls_url and replay_url are null";
            cfb.c("PeriscopeCapiModel", "both hls_url and replay_url are null", new Throwable("both hls_url and replay_url are null"));
        }
        Integer a2 = caf.a("total_participants", cmb);
        if (a2 != null) {
            this.g = a2.intValue();
        }
        this.e = caw.a("full_size_thumbnail_url", cmb);
        this.f = caw.a("life_cycle_token", cmb);
        if (d() != null) {
            synchronized (this.a) {
                this.a.notify();
            }
        }
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public String d() {
        return k() ? b() : c();
    }

    public int e() {
        return this.g;
    }

    public String f() {
        return this.e;
    }

    public String g() {
        return this.f;
    }

    public String h() {
        return this.b;
    }

    public boolean i() {
        return j() || l();
    }

    private boolean l() {
        return "TIMED_OUT".equals(this.b);
    }

    public boolean j() {
        return "ENDED".equals(this.b);
    }

    public boolean k() {
        return "RUNNING".equals(this.b);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PeriscopeCapiModel periscopeCapiModel = (PeriscopeCapiModel) obj;
        if (this.g != periscopeCapiModel.g || !this.b.equals(periscopeCapiModel.b)) {
            return false;
        }
        if (this.c != null) {
            if (!this.c.equals(periscopeCapiModel.c)) {
                return false;
            }
        } else if (periscopeCapiModel.c != null) {
            return false;
        }
        if (this.d != null) {
            if (!this.d.equals(periscopeCapiModel.d)) {
                return false;
            }
        } else if (periscopeCapiModel.d != null) {
            return false;
        }
        if (this.e != null) {
            if (!this.e.equals(periscopeCapiModel.e)) {
                return false;
            }
        } else if (periscopeCapiModel.e != null) {
            return false;
        }
        if (this.f != null) {
            z = this.f.equals(periscopeCapiModel.f);
        } else if (periscopeCapiModel.f != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = ((this.c != null ? this.c.hashCode() : 0) + (this.b.hashCode() * 31)) * 31;
        if (this.d != null) {
            hashCode = this.d.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.e != null) {
            hashCode = this.e.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.f != null) {
            i = this.f.hashCode();
        }
        return ((hashCode + i) * 31) + this.g;
    }
}

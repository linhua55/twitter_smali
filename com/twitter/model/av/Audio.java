package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.util.q;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class Audio implements AVMedia {
    public static final Creator<Audio> CREATOR;
    protected final String a;
    protected final String b;
    protected final String c;
    protected final Map<String, List<String>> d;
    protected final String e;
    protected final String f;
    protected final String g;
    protected final String h;
    protected final String i;

    static {
        CREATOR = new e();
    }

    public Audio(String str, String str2, String str3, Map<String, List<String>> map, String str4, String str5, String str6, String str7, String str8) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = map;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.i = str8;
    }

    protected Audio(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.d = q.b(parcel);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        q.b(parcel, this.d);
    }

    public String k() {
        return this.a;
    }

    public String l() {
        return this.b;
    }

    public String m() {
        return this.c;
    }

    public List<String> a(String str) {
        return this.d == null ? null : (List) this.d.get(str);
    }

    public boolean i() {
        return false;
    }

    public String n() {
        return this.e;
    }

    public String o() {
        return this.f;
    }

    public String c() {
        return this.g;
    }

    public String a() {
        return this.h;
    }

    public String p() {
        return this.i;
    }

    public String b() {
        return "audio";
    }

    public boolean d() {
        return true;
    }

    public boolean e() {
        return false;
    }

    public a f() {
        return null;
    }

    public int g() {
        return 0;
    }

    public boolean h() {
        return false;
    }

    public long j() {
        return -1;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Audio audio = (Audio) obj;
        if (this.b != null) {
            if (!this.b.equals(audio.b)) {
                return false;
            }
        } else if (audio.b != null) {
            return false;
        }
        if (this.c != null) {
            if (!this.c.equals(audio.c)) {
                return false;
            }
        } else if (audio.c != null) {
            return false;
        }
        if (this.e != null) {
            if (!this.e.equals(audio.e)) {
                return false;
            }
        } else if (audio.e != null) {
            return false;
        }
        if (this.f != null) {
            if (!this.f.equals(audio.f)) {
                return false;
            }
        } else if (audio.f != null) {
            return false;
        }
        if (this.i != null) {
            if (!this.i.equals(audio.i)) {
                return false;
            }
        } else if (audio.i != null) {
            return false;
        }
        if (this.d != null) {
            if (!this.d.equals(audio.d)) {
                return false;
            }
        } else if (audio.d != null) {
            return false;
        }
        if (this.h != null) {
            if (!this.h.equals(audio.h)) {
                return false;
            }
        } else if (audio.h != null) {
            return false;
        }
        if (this.a != null) {
            if (!this.a.equals(audio.a)) {
                return false;
            }
        } else if (audio.a != null) {
            return false;
        }
        if (this.g != null) {
            z = this.g.equals(audio.g);
        } else if (audio.g != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = (this.a != null ? this.a.hashCode() : 0) * 31;
        if (this.b != null) {
            hashCode = this.b.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.c != null) {
            hashCode = this.c.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
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
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.f != null) {
            hashCode = this.f.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.g != null) {
            hashCode = this.g.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.h != null) {
            hashCode = this.h.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.i != null) {
            i = this.i.hashCode();
        }
        return hashCode + i;
    }
}

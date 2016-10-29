package com.twitter.model.av;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.util.collection.r;
import com.twitter.util.q;
import java.util.Map;

/* compiled from: Twttr */
public class AudioPlaylist extends AVMediaPlaylist {
    public static final Creator<AudioPlaylist> CREATOR;
    private final String d;
    private final String e;
    private final Audio f;
    private Map<String, String> g;

    static {
        CREATOR = new f();
    }

    protected AudioPlaylist(Parcel parcel) {
        super(parcel);
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = (Audio) parcel.readParcelable(Audio.class.getClassLoader());
        this.g = q.a(parcel);
    }

    public AudioPlaylist(String str, String str2, Audio audio) {
        super(0, null);
        this.d = str;
        this.e = str2;
        this.f = audio;
    }

    public AudioPlaylist(int i, String str) {
        super(i, str);
        this.d = null;
        this.e = null;
        this.f = null;
    }

    public AVMedia c() {
        return this.f;
    }

    public AVMedia k() {
        return null;
    }

    public String l() {
        return this.d;
    }

    public boolean a() {
        return this.a == 0 && this.f != null;
    }

    public void a(Map<String, String> map, Map<String, String> map2) {
        if (map == null && map2 == null) {
            this.g = null;
            return;
        }
        r d = r.d();
        d.b(map);
        if (map2 != null) {
            d.b("Network-Type", map2.get("Network-Type"));
        }
        this.g = (Map) d.q();
    }

    public Map<String, String> m() {
        return this.g;
    }

    public String b() {
        return this.g != null ? (String) this.g.get("Network-Type") : null;
    }

    public String h() {
        return a(this.g);
    }

    public static String a(Map<String, String> map) {
        return map != null ? (String) map.get("integration_partner") : null;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.a(parcel, i);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeParcelable(this.f, i);
        q.a(parcel, this.g);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        AudioPlaylist audioPlaylist = (AudioPlaylist) obj;
        if (this.e != null) {
            if (!this.e.equals(audioPlaylist.e)) {
                return false;
            }
        } else if (audioPlaylist.e != null) {
            return false;
        }
        if (this.f != null) {
            if (!this.f.equals(audioPlaylist.f)) {
                return false;
            }
        } else if (audioPlaylist.f != null) {
            return false;
        }
        if (this.d != null) {
            if (!this.d.equals(audioPlaylist.d)) {
                return false;
            }
        } else if (audioPlaylist.d != null) {
            return false;
        }
        if (this.g != null) {
            z = this.g.equals(audioPlaylist.g);
        } else if (audioPlaylist.g != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = super.hashCode() * 31;
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
        hashCode = (hashCode + hashCode2) * 31;
        if (this.g != null) {
            i = this.g.hashCode();
        }
        return hashCode + i;
    }
}

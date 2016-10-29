package com.twitter.model.av;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.util.object.e;
import com.twitter.util.q;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class Video implements AVMedia {
    public static final Creator<Video> CREATOR;
    protected final String a;
    protected final String b;
    protected final String c;
    protected final long d;
    protected final boolean e;
    protected final Map<String, List<String>> f;
    protected final VideoCta g;
    private final boolean h;
    private final boolean i;

    public /* synthetic */ a f() {
        return k();
    }

    static {
        CREATOR = new t();
    }

    private Video(u uVar) {
        this.a = uVar.d;
        this.b = uVar.a;
        this.c = uVar.b;
        this.d = uVar.c;
        this.e = uVar.e;
        this.f = uVar.f;
        this.g = uVar.g;
        this.h = uVar.h;
        this.i = uVar.i;
    }

    protected Video(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readLong();
        this.e = parcel.readByte() == (byte) 1;
        this.f = q.b(parcel);
        this.g = (VideoCta) parcel.readParcelable(VideoCta.class.getClassLoader());
        if (parcel.readByte() == (byte) 1) {
            z = true;
        } else {
            z = false;
        }
        this.h = z;
        if (parcel.readByte() != (byte) 1) {
            z2 = false;
        }
        this.i = z2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Video video = (Video) obj;
        if (this.e != video.e || this.d != video.d) {
            return false;
        }
        if (this.f != null) {
            if (!this.f.equals(video.f)) {
                return false;
            }
        } else if (video.f != null) {
            return false;
        }
        if (this.a != null) {
            if (!this.a.equals(video.a)) {
                return false;
            }
        } else if (video.a != null) {
            return false;
        }
        if (this.b != null) {
            if (!this.b.equals(video.b)) {
                return false;
            }
        } else if (video.b != null) {
            return false;
        }
        if (this.c != null) {
            if (!this.c.equals(video.c)) {
                return false;
            }
        } else if (video.c != null) {
            return false;
        }
        if (this.g != null) {
            if (!this.g.equals(video.g)) {
                return false;
            }
        } else if (video.g != null) {
            return false;
        }
        if (this.h != video.h) {
            return false;
        }
        if (this.i != video.i) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 1;
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
        hashCode2 = (((hashCode + hashCode2) * 31) + ((int) (this.d ^ (this.d >>> 32)))) * 31;
        if (this.e) {
            hashCode = 1;
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
        if (this.h) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (!this.i) {
            i = 0;
        }
        return hashCode + i;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        byte b;
        byte b2 = (byte) 1;
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeLong(this.d);
        parcel.writeByte(this.e ? (byte) 1 : (byte) 0);
        q.b(parcel, this.f);
        parcel.writeParcelable(this.g, i);
        if (this.h) {
            b = (byte) 1;
        } else {
            b = (byte) 0;
        }
        parcel.writeByte(b);
        if (!this.i) {
            b2 = (byte) 0;
        }
        parcel.writeByte(b2);
    }

    public String a() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    public String b() {
        return e.b(this.c);
    }

    public long j() {
        return this.d;
    }

    public boolean d() {
        return this.e;
    }

    public boolean e() {
        return this.h;
    }

    public int g() {
        boolean z;
        boolean z2;
        try {
            String path = Uri.parse(this.a).getPath();
            z = path != null && path.endsWith(".mpd");
            if (path == null || !path.endsWith(".m3u8")) {
                z2 = false;
            } else {
                z2 = true;
            }
        } catch (RuntimeException e) {
            z = this.a.endsWith(".mpd");
            z2 = this.a.endsWith(".m3u8");
        }
        if (z) {
            return 1;
        }
        return z2 ? 2 : 0;
    }

    public boolean h() {
        return b.a(this.a);
    }

    public List<String> a(String str) {
        return this.f == null ? null : (List) this.f.get(str);
    }

    public boolean i() {
        int g = g();
        if (this.i || g == 1 || g == 2) {
            return true;
        }
        return false;
    }

    public VideoCta k() {
        return this.g;
    }

    public static Video a(String str, MediaEntity mediaEntity) {
        boolean z = true;
        u a = new u().a(String.valueOf(mediaEntity.c)).b("video").c(str).a(true);
        if (mediaEntity.m != Type.c) {
            z = false;
        }
        return (Video) a.b(z).a(mediaEntity.s).q();
    }
}

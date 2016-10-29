package tv.periscope.model;

/* compiled from: Twttr */
final class e extends s {
    private final String b;
    private final String c;
    private final String d;
    private final int e;
    private final int f;
    private final boolean g;
    private final String h;

    private e(String str, String str2, String str3, int i, int i2, boolean z, String str4) {
        if (str == null) {
            throw new NullPointerException("Null channelId");
        }
        this.b = str;
        if (str2 == null) {
            throw new NullPointerException("Null name");
        }
        this.c = str2;
        if (str3 == null) {
            throw new NullPointerException("Null description");
        }
        this.d = str3;
        this.e = i;
        this.f = i2;
        this.g = z;
        if (str4 == null) {
            throw new NullPointerException("Null publicTag");
        }
        this.h = str4;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public int d() {
        return this.e;
    }

    public int e() {
        return this.f;
    }

    public boolean f() {
        return this.g;
    }

    public String g() {
        return this.h;
    }

    public String toString() {
        return "Channel{channelId=" + this.b + ", " + "name=" + this.c + ", " + "description=" + this.d + ", " + "numberOfLiveStreams=" + this.e + ", " + "numberOfReplays=" + this.f + ", " + "featured=" + this.g + ", " + "publicTag=" + this.h + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (this.b.equals(sVar.a()) && this.c.equals(sVar.b()) && this.d.equals(sVar.c()) && this.e == sVar.d() && this.f == sVar.e() && this.g == sVar.f() && this.h.equals(sVar.g())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.g ? 1231 : 1237) ^ ((((((((((this.b.hashCode() ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e) * 1000003) ^ this.f) * 1000003)) * 1000003) ^ this.h.hashCode();
    }
}

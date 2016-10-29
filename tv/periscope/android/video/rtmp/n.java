package tv.periscope.android.video.rtmp;

/* compiled from: Twttr */
public class n {
    private int a;
    private int b;
    private int c;
    private Object[] d;
    private i e;
    private long f;

    public n(int i, int i2, int i3) {
        this.f = 0;
        this.a = i2;
        this.b = i3;
        this.c = i;
    }

    public void a(int i, int i2, int i3) {
        this.a = i2;
        this.b = i3;
        this.c = i;
    }

    public int a() {
        return this.a;
    }

    public int b() {
        return this.c;
    }

    public int c() {
        return this.b;
    }

    public long d() {
        return this.f;
    }

    public void a(long j) {
        this.f = j;
    }

    public void a(Object[] objArr) {
        this.d = objArr;
        a(a.a(objArr));
    }

    public i e() {
        if (this.e == null) {
            this.e = new i();
        }
        return this.e;
    }

    public void a(byte[] bArr) {
        this.e = new i(bArr);
    }

    public i f() {
        i iVar = this.e;
        this.e = null;
        return iVar;
    }

    public void a(i iVar) {
        this.e = iVar;
    }

    public void g() {
        if (this.c == 20 || this.c == 18) {
            this.d = a.a(this.e.a, this.e.b);
        }
    }

    public Object[] h() {
        return this.d;
    }

    public String toString() {
        String str;
        String str2 = "RTMPMessage " + this.c + " csid " + this.a + " stream " + this.b + " time " + this.f;
        int i;
        if (this.d != null) {
            str2 = str2 + ": ";
            Object[] objArr = this.d;
            int length = objArr.length;
            str = str2;
            i = 0;
            while (i < length) {
                i++;
                str = str + objArr[i] + " / ";
            }
        } else {
            str2 = str2 + ": ";
            int min = Math.min(this.e.b, 50);
            str = str2;
            i = 0;
            while (i < min) {
                String str3 = str + Integer.toHexString(this.e.a[i] & 255) + " ";
                i++;
                str = str3;
            }
        }
        return str;
    }
}

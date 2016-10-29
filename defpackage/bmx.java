package defpackage;

/* compiled from: Twttr */
/* renamed from: bmx */
public class bmx {
    public final String a;
    public final int b;
    public final int c;
    public final boolean d;
    public final boolean e;
    public final boolean f;

    private bmx(String str, int i, int i2, boolean z, boolean z2) {
        this.a = str;
        this.b = i;
        this.c = i2;
        this.e = z;
        this.d = z2;
        boolean z3 = (z || z2) ? false : true;
        this.f = z3;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<ProgressUpdatedEvent jobId='").append(this.a).append("' type='").append(this.b).append("' progress='").append(this.c).append("' />");
        return stringBuilder.toString();
    }

    public static bmx a(String str, int i) {
        return new bmx(str, i, 10000, false, true);
    }

    public static bmx b(String str, int i) {
        return new bmx(str, i, 10000, true, false);
    }

    public static bmx a(String str, int i, int i2) {
        return new bmx(str, i, i2, false, false);
    }
}

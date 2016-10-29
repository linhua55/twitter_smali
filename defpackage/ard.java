package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import arj;
import arp;
import arq;
import aru;
import ary;

/* compiled from: Twttr */
/* renamed from: ard */
public class ard extends ary {
    protected long a;
    protected int b;

    public ard(Context context, String str, arp arp, String str2, arq arq, boolean z, int i) {
        super(context, str, arp, str2, arq, z, i);
    }

    public static ard a(String str, arp arp, aru aru, boolean z, int i) {
        arj a = aru.a(ard.a("AverageValueMetric", str));
        if (a == null) {
            a = aru.d(new ard(aru.f(), str, arp, ard.a("AverageValueMetric", str), aru, z, i));
        }
        return (ard) a;
    }

    public synchronized void a(long j) {
        if (l()) {
            this.a += j;
            this.b++;
            b(true);
            q();
        }
    }

    public Long d() {
        return Long.valueOf(this.b != 0 ? this.a / ((long) this.b) : 0);
    }

    protected synchronized void e() {
        super.e();
        this.a = 0;
        this.b = 0;
        q();
    }

    protected synchronized void a(Editor editor) {
        super.a(editor);
        editor.putLong(a("total"), this.a);
        editor.putInt(a("count"), this.b);
    }

    protected void b(Editor editor) {
        super.b(editor);
        editor.remove(a("total"));
        editor.remove(a("count"));
    }

    protected void a(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences.getLong(a("total"), 0);
        this.b = sharedPreferences.getInt(a("count"), 0);
        super.a(sharedPreferences);
    }
}

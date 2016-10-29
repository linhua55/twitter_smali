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
/* renamed from: arx */
public class arx extends ary {
    protected long a;

    public arx(Context context, String str, arp arp, String str2, arq arq, boolean z, int i) {
        super(context, str, arp, str2, arq, z, i);
    }

    public static arx a(String str, arp arp, aru aru, boolean z, int i) {
        arj a = aru.a(arx.a("PeakValueMetric", str));
        if (a == null) {
            a = aru.d(new arx(aru.f(), str, arp, arx.a("PeakValueMetric", str), aru, z, i));
        }
        return (arx) a;
    }

    public synchronized void a(long j) {
        if (l()) {
            if (j > this.a) {
                this.a = j;
                b(true);
                q();
            }
        }
    }

    public synchronized Long d() {
        return Long.valueOf(this.a);
    }

    protected synchronized void e() {
        super.e();
        this.a = 0;
        q();
    }

    protected synchronized void a(Editor editor) {
        super.a(editor);
        editor.putLong(a("peak"), this.a);
    }

    protected void b(Editor editor) {
        super.b(editor);
        editor.remove(a("peak"));
    }

    protected void a(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences.getLong(a("peak"), 0);
        super.a(sharedPreferences);
    }
}

package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
/* renamed from: arf */
public class arf extends ary {
    private AtomicLong a;

    public static arf a(String str, aru aru, long j, arp arp, int i) {
        return arf.a(str, aru, j, arp, i, arj.a("CounterMetric", str));
    }

    public static arf a(String str, aru aru, long j, arp arp, int i, String str2) {
        arj a = aru.a(str2);
        if (a == null) {
            a = aru.d(new arf(aru.f(), str, arp, str2, aru, i, j));
        }
        return (arf) a;
    }

    public arf(Context context, String str, arp arp, String str2, arq arq, int i) {
        this(context, str, arp, str2, arq, i, 0);
    }

    public arf(Context context, String str, arp arp, String str2, arq arq, int i, long j) {
        super(context, str, arp, str2, arq, true, i, j);
        if (this.a == null) {
            this.a = new AtomicLong(0);
        }
    }

    public void f() {
        d(1);
    }

    public void a(long j) {
        d(j);
    }

    private void d(long j) {
        if (l()) {
            this.a.addAndGet(j);
            q();
        }
    }

    public void b() {
        b(true);
    }

    protected void e() {
        this.a.set(0);
        if (l()) {
            b(true);
        }
        q();
    }

    protected void a(Editor editor) {
        super.a(editor);
        editor.putLong(a("usage"), this.a.get());
    }

    protected void b(Editor editor) {
        super.b(editor);
        editor.remove(a("usage"));
    }

    protected void a(SharedPreferences sharedPreferences) {
        if (this.a == null) {
            this.a = new AtomicLong(sharedPreferences.getLong(a("usage"), 0));
        } else {
            this.a.set(sharedPreferences.getLong(a("usage"), 0));
        }
        super.a(sharedPreferences);
    }

    public Long d() {
        return Long.valueOf(this.a.get());
    }
}

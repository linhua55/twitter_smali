package defpackage;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: asb */
public class asb {
    public long a;
    public long b;
    public long c;
    public long d;
    private final String e;
    private final Map<String, Number> f;

    public asb() {
        this(TtmlNode.ANONYMOUS_REGION_ID);
    }

    public asb(String str) {
        this.f = new LinkedHashMap(5);
        this.e = str + "_";
        a();
    }

    public asb(String str, SharedPreferences sharedPreferences) {
        this.f = new LinkedHashMap(5);
        this.e = str;
        this.a = sharedPreferences.getLong(str + "_total", 0);
        this.b = sharedPreferences.getLong(str + "_count", 0);
        this.c = sharedPreferences.getLong(str + "_max", Long.MIN_VALUE);
        this.d = sharedPreferences.getLong(str + "_min", PtsTimestampAdjuster.DO_NOT_OFFSET);
    }

    public synchronized void a(long j) {
        this.a += j;
        this.b++;
        if (j > this.c) {
            this.c = j;
        }
        if (j < this.d) {
            this.d = j;
        }
    }

    public void a() {
        this.a = 0;
        this.b = 0;
        this.c = Long.MIN_VALUE;
        this.d = PtsTimestampAdjuster.DO_NOT_OFFSET;
    }

    public float b() {
        return this.b != 0 ? ((float) this.a) / ((float) this.b) : 0.0f;
    }

    public void a(Editor editor) {
        editor.putLong(this.e + "_total", this.a);
        editor.putLong(this.e + "_count", this.b);
        editor.putLong(this.e + "_max", this.c);
        editor.putLong(this.e + "_min", this.d);
    }

    public void b(Editor editor) {
        editor.remove(this.e + "_total");
        editor.remove(this.e + "_count");
        editor.remove(this.e + "_max");
        editor.remove(this.e + "_min");
    }

    public Map<String, Number> a(int i) {
        this.f.clear();
        if ((i & 1) != 0) {
            this.f.put(this.e + "_total", Long.valueOf(this.a));
        }
        if ((i & 2) != 0) {
            this.f.put(this.e + "_count", Long.valueOf(this.b));
        }
        if ((i & 4) != 0) {
            this.f.put(this.e + "_max", Long.valueOf(this.c));
        }
        if ((i & 8) != 0) {
            this.f.put(this.e + "_min", Long.valueOf(this.d));
        }
        if ((i & 16) != 0) {
            this.f.put(this.e + "_avg", Float.valueOf(b()));
        }
        return this.f;
    }
}

package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Debug;
import arj;
import arp;
import arq;
import aru;
import ary;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: asl */
public class asl extends ary {
    private asb a;
    private asb b;
    private asb c;
    private asb d;
    private asb e;
    private List<asb> w;

    public static asl a(arp arp, aru aru) {
        arj a = aru.a(asl.a("MemMetric", "app:mem"));
        if (a == null) {
            a = aru.d(new asl(aru.f(), "app:mem", arp, asl.a("MemMetric", "app:mem"), aru, true, 3));
        }
        return (asl) a;
    }

    public asl(Context context, String str, arp arp, String str2, arq arq, boolean z, int i) {
        super(context, str, arp, str2, arq, z, i);
        b("MemMetric");
        if (this.w == null) {
            this.a = new asb("dalvik_total");
            this.b = new asb("dalvik_alloc");
            this.c = new asb("dalvik_ratio");
            this.d = new asb("native_total");
            this.e = new asb("native_alloc");
            D();
        }
    }

    protected void b() {
        super.b();
        f();
    }

    protected void e() {
        b(false);
        for (asb a : this.w) {
            a.a();
        }
        super.e();
    }

    public void f() {
        Runtime runtime = Runtime.getRuntime();
        long totalMemory = runtime.totalMemory();
        this.a.a(totalMemory);
        this.b.a(runtime.totalMemory() - runtime.freeMemory());
        this.c.a((totalMemory * 100) / runtime.maxMemory());
        this.d.a(Debug.getNativeHeapSize());
        this.e.a(Debug.getNativeHeapAllocatedSize());
        b(true);
    }

    protected void a(Editor editor) {
        super.a(editor);
        for (asb a : this.w) {
            a.a(editor);
        }
    }

    protected void b(Editor editor) {
        super.b(editor);
        for (asb b : this.w) {
            b.b(editor);
        }
    }

    protected void a(SharedPreferences sharedPreferences) {
        super.a(sharedPreferences);
        this.a = new asb("dalvik_total", sharedPreferences);
        this.b = new asb("dalvik_alloc", sharedPreferences);
        this.c = new asb("dalvik_ratio", sharedPreferences);
        this.d = new asb("native_total", sharedPreferences);
        this.e = new asb("native_alloc", sharedPreferences);
        D();
    }

    private void D() {
        this.w = new ArrayList(5);
        this.w.add(this.a);
        this.w.add(this.b);
        this.w.add(this.c);
        this.w.add(this.d);
        this.w.add(this.e);
    }

    public HashMap<String, Number> C() {
        HashMap<String, Number> hashMap = new HashMap(this.w.size() * 2);
        for (asb a : this.w) {
            hashMap.putAll(a.a(20));
        }
        return hashMap;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        Map C = C();
        for (String str : C.keySet()) {
            stringBuilder.append(str + "=" + C.get(str) + ",");
        }
        return stringBuilder.toString();
    }
}

package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import arf;
import arj;
import arp;
import arq;
import aru;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
/* renamed from: bxq */
public class bxq extends arf {
    public static bxq a(aru aru, String str, arp arp, int i) {
        String a = bxq.a("OutOfMemoryMetric", str);
        arj a2 = aru.a(a);
        if (a2 == null) {
            a2 = aru.d(new bxq(aru.f(), str, arp, a, aru, i));
        }
        return (bxq) a2;
    }

    private bxq(Context context, String str, arp arp, String str2, arq arq, int i) {
        super(context, str, arp, str2, arq, i);
    }

    public String t() {
        Context f = aru.b().f();
        Size a = r.a(f);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("screen_width=").append(a.a());
        stringBuilder.append(",").append("screen_height=").append(a.b());
        stringBuilder.append(",").append("memory_class=").append(((ActivityManager) f.getSystemService("activity")).getMemoryClass());
        stringBuilder.append(",").append("dalvik_heap_max=").append(Runtime.getRuntime().maxMemory());
        return stringBuilder.toString();
    }
}

package defpackage;

import com.twitter.util.object.e;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: adq */
class adq extends acc<Map<Long, Long>> {
    final /* synthetic */ long a;
    final /* synthetic */ String b;
    final /* synthetic */ adp c;

    adq(adp adp, long j, String str) {
        this.c = adp;
        this.a = j;
        this.b = str;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Map) obj);
    }

    public void a(Map<Long, Long> map) {
        this.c.a.a(this.a, this.b, this.c.b, (Long) e.b(map.get(Long.valueOf(this.a)), Long.valueOf(0)));
    }
}

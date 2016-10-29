package defpackage;

import android.content.Context;
import bxu;
import bxw;
import bxx;
import bxy;
import bya;
import byd;
import ckq;
import com.google.android.exoplayer.MediaFormat;
import com.twitter.config.d;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.az;
import com.twitter.library.provider.di;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import java.text.ParseException;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bxv */
public class bxv extends aop<List<cjw>> {
    private final Context a;
    private final List<Long> b;
    private final int c;
    private final di d;
    private final az e;

    public bxv(Context context, byc byc) {
        this.a = context.getApplicationContext();
        this.c = byc.a;
        this.b = n.a(new LinkedHashSet(byc.b));
        this.e = az.a(this.a);
        this.d = di.a(this.a, byc.c);
        a();
    }

    private void a() {
        n c = n.d().c(this.b);
        AsyncOperation bya = new bya(this.d, this.b);
        bya.a(new bxw(this, c));
        this.e.a(bya);
    }

    private void a(List<Long> list, Map<Long, cjw> map) {
        this.e.a(new byd(this.a, this.c, list), new bxx(this, map));
    }

    private long c() {
        Date date = null;
        CharSequence b = d.b("photo_stickers_invalid_stickers_last_modified");
        if (aj.b(b)) {
            try {
                date = ckq.a.parse(b);
            } catch (ParseException e) {
            }
        }
        return date != null ? date.getTime() : 0;
    }

    private void a(Map<Long, cjw> map) {
        long j = map.size() > 0 ? ((cjw) Collections.min(map.values())).o : MediaFormat.OFFSET_SAMPLE_RELATIVE;
        if ((j > c() ? 1 : null) == null) {
            this.e.a(new bxu(this.a, this.c, j), new bxy(this, map));
        } else {
            b((Map) map);
        }
    }

    private void b(Map<Long, cjw> map) {
        n a = n.a(map.size());
        for (Long l : this.b) {
            a.c(map.get(l));
        }
        a(a.q());
    }
}

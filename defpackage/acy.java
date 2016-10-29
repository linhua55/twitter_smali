package defpackage;

import android.content.Context;
import com.twitter.database.model.l;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.provider.di;
import com.twitter.model.moments.viewmodels.d;
import com.twitter.util.collection.ao;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
/* renamed from: acy */
public class acy implements acx {
    private final atf<Long, Boolean> a;
    private final atf<Long, ao<d, com.twitter.model.moments.d>> b;
    private final atf<Long, ao<d, com.twitter.model.moments.d>> c;

    public static acy a(Context context) {
        Session c = bg.a().c();
        long g = bg.a().c().g();
        di a = di.a(context, g);
        byi byi = new byi(context, a, g);
        l b = a.b();
        Object adc = new adc(g, new com.twitter.android.moments.data.d(new acz(context)));
        return new acy(ace.a(b), adc, new ack(new acm(new ada(context, c, byi)), adc));
    }

    public acy(atf<Long, Boolean> atf_java_lang_Long__java_lang_Boolean, adc adc, ack ack) {
        this.a = atf_java_lang_Long__java_lang_Boolean;
        this.b = adc;
        this.c = ack;
    }

    public o<ao<d, com.twitter.model.moments.d>> a(long j) {
        return this.a.a_(Long.valueOf(j)).f(new adb(this, j)).d(1);
    }

    private atf<Long, ao<d, com.twitter.model.moments.d>> a(boolean z) {
        return z ? this.b : this.c;
    }

    public void close() throws IOException {
        this.a.close();
        this.b.close();
        this.c.close();
    }
}

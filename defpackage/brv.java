package defpackage;

import android.support.annotation.VisibleForTesting;
import com.twitter.config.d;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: brv */
public class brv implements brn {
    @VisibleForTesting
    final List<bry> a;

    public brv(AVPlayer aVPlayer) {
        List d;
        if (d.a("ad_formats_moat_analytics_enabled")) {
            d = CollectionUtils.d(new bry[]{new brw(aVPlayer), new bru(aVPlayer), new brx(aVPlayer)});
        } else {
            d = CollectionUtils.a();
        }
        this.a = d;
    }

    public void a(bd bdVar, long j) {
        for (bry b : this.a) {
            b.b(bdVar);
        }
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        for (bry a : this.a) {
            a.a(aVPlayer$PlayerStartType);
        }
    }

    public void e() {
    }

    public void a() {
        for (bry c : this.a) {
            c.c();
        }
    }

    public boolean b() {
        return true;
    }

    public void c() {
    }

    public void d() {
    }
}

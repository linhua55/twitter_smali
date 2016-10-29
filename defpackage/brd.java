package defpackage;

import android.support.annotation.VisibleForTesting;
import com.twitter.android.periscope.o;
import com.twitter.config.d;
import com.twitter.library.av.model.a;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.PeriscopeDataSource;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import de.greenrobot.event.c;
import tv.periscope.android.api.ApiManager;

/* compiled from: Twttr */
/* renamed from: brd */
public class brd implements brn {
    @VisibleForTesting
    final brn a;

    public brd(AVPlayer aVPlayer, AVMedia aVMedia) {
        this(aVPlayer, aVMedia, new a(), null, null, d.a("android_periscope_lifecycle_enabled"));
    }

    @VisibleForTesting
    brd(AVPlayer aVPlayer, AVMedia aVMedia, a aVar, ApiManager apiManager, c cVar, boolean z) {
        if (z && aVMedia.g() == 3) {
            ApiManager c;
            c b;
            if (apiManager == null) {
                c = o.a().c();
            } else {
                c = apiManager;
            }
            if (cVar == null) {
                b = o.a().b();
            } else {
                b = cVar;
            }
            this.a = new brg(aVPlayer, aVMedia, aVar, ((PeriscopeDataSource) aVPlayer.e().c()).o(), c, b);
            return;
        }
        this.a = new brc();
    }

    public void a(bd bdVar, long j) {
        this.a.a(bdVar, j);
    }

    public void a() {
        this.a.a();
    }

    public boolean b() {
        return this.a.b();
    }

    public void c() {
        this.a.c();
    }

    public void d() {
        this.a.d();
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        this.a.a(aVPlayer$PlayerStartType);
    }

    public void e() {
        this.a.e();
    }
}

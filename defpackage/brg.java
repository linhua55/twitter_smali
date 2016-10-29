package defpackage;

import android.support.annotation.VisibleForTesting;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.periscope.PeriscopeCapiModel;
import com.twitter.library.av.model.a;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import de.greenrobot.event.c;
import tv.periscope.android.api.ApiManager;
import tv.periscope.android.api.ReplayViewedResponse;
import tv.periscope.android.api.StartWatchingResponse;
import tv.periscope.android.event.ApiEvent;

@VisibleForTesting
/* compiled from: Twttr */
/* renamed from: brg */
class brg implements brn {
    @VisibleForTesting
    brf a;
    @VisibleForTesting
    String b;
    @VisibleForTesting
    long c;
    private final AVPlayer d;
    private final AVMedia e;
    private final a f;
    private final PeriscopeCapiModel g;
    private final ApiManager h;
    private final c i;
    private boolean j;
    private long k;
    private long l;
    private boolean m;
    private boolean n;

    brg(AVPlayer aVPlayer, AVMedia aVMedia, a aVar, PeriscopeCapiModel periscopeCapiModel, ApiManager apiManager, c cVar) {
        this.l = -1;
        this.d = aVPlayer;
        this.e = aVMedia;
        this.f = aVar;
        this.g = periscopeCapiModel;
        this.h = apiManager;
        this.i = cVar;
        this.i.a(this);
        this.m = aVPlayer.h();
    }

    public void a(bd bdVar, long j) {
        if (!this.j) {
            this.j = true;
            this.k = this.f.a(this.e, bdVar);
        }
        boolean z = this.m;
        this.m = this.d.h();
        if (!this.m) {
            if (this.l == -1) {
                this.l = j;
            }
            if (a(j) >= this.k) {
                String g = this.g.g();
                if (this.a != null) {
                    if (this.b != null && this.c + 30000 <= j) {
                        this.a.b(this.b);
                        this.c = j;
                    }
                } else if (g != null) {
                    this.a = this.g.k() ? new brh(this.h) : new bri(this.h);
                    this.a.a(g);
                }
            }
        } else if (!z) {
            f();
        }
    }

    private long a(long j) {
        if (this.l == -1) {
            return 0;
        }
        return j - this.l;
    }

    public void onEventMainThread(ApiEvent apiEvent) {
        switch (bre.a[apiEvent.a.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (!apiEvent.a()) {
                    this.b = null;
                    break;
                } else {
                    this.b = ((StartWatchingResponse) apiEvent.d).session;
                    break;
                }
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (!apiEvent.a()) {
                    this.b = null;
                    break;
                } else {
                    this.b = ((ReplayViewedResponse) apiEvent.d).session;
                    break;
                }
        }
        if (this.n && this.a != null && this.b != null) {
            this.a.c(this.b);
            this.n = false;
            this.a = null;
            this.b = null;
            this.l = -1;
            this.c = 0;
        }
    }

    public void a() {
    }

    public boolean b() {
        return true;
    }

    public void c() {
    }

    public void d() {
        this.i.b(this);
        f();
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
    }

    public void e() {
        f();
    }

    private void f() {
        if (this.a != null) {
            if (this.b != null) {
                this.a.c(this.b);
            } else {
                this.n = true;
            }
        }
        this.a = null;
        this.b = null;
        this.l = -1;
        this.c = 0;
    }
}

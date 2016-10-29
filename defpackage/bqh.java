package defpackage;

import android.content.Context;
import android.net.Uri.Builder;
import android.support.annotation.VisibleForTesting;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.api.periscope.PeriscopeCapiModel;
import com.twitter.library.av.model.PeriscopePlaylist;
import com.twitter.library.av.playback.au;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.av.InvalidPlaylist;
import com.twitter.util.network.b;
import com.twitter.util.telephony.TelephonyUtil;
import java.util.Map;
import tv.periscope.android.library.f;

/* compiled from: Twttr */
/* renamed from: bqh */
public class bqh extends bpx {
    private final PeriscopeCapiModel a;
    private final String b;
    private final TelephonyUtil c;

    public bqh(PeriscopeCapiModel periscopeCapiModel, String str, TelephonyUtil telephonyUtil) {
        this.a = periscopeCapiModel;
        this.b = str;
        this.c = telephonyUtil;
    }

    @VisibleForTesting
    public long b() {
        return ((long) (this.a.a() * 2)) * 1000;
    }

    public AVMediaPlaylist a(Context context, au auVar) {
        String uri = f.a(this.b).toString();
        b e = this.c.e();
        if (this.a.d() != null) {
            return new PeriscopePlaylist(this.a.d(), this.b, uri, e.b, this.a.k());
        }
        synchronized (this.a.a) {
            try {
                this.a.a.wait(b());
                if (this.a.d() != null) {
                    AVMediaPlaylist periscopePlaylist = new PeriscopePlaylist(this.a.d(), this.b, uri, e.b, this.a.k());
                    return periscopePlaylist;
                }
            } catch (InterruptedException e2) {
            }
            return new InvalidPlaylist();
        }
    }

    protected AVMediaPlaylist a(au auVar, i iVar, HttpOperation httpOperation, Map<String, String> map, DynamicAdInfo dynamicAdInfo) {
        return null;
    }

    protected i a(Context context) {
        return null;
    }

    protected void a(Builder builder, Map<String, String> map, DynamicAd dynamicAd) {
    }

    protected void a(Context context, Map<String, String> map, b bVar) {
    }
}

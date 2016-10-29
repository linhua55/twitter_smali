package com.twitter.android.av;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.library.av.c;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.k;
import com.twitter.library.av.playback.m;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
public class ba implements k {
    public static final m a;
    private final b c;
    private final boolean d;
    private final j e;

    static {
        a = new bb();
    }

    public ba(Context context, au auVar) {
        this(new l(auVar), new b(context, auVar));
    }

    ba(l lVar, b bVar) {
        this.c = bVar;
        this.d = d.a("android_media_playback_async_logging");
        this.e = lVar.a();
    }

    public void a(String str, c cVar) {
        if (this.d) {
            c(str, cVar);
        } else {
            b(str, cVar);
        }
    }

    protected void b(String str, c cVar) {
        Object obj = -1;
        switch (str.hashCode()) {
            case -1519494263:
                if (str.equals("AVPlayer.EVENT_LOG_ANALYTICS_EVENT")) {
                    obj = 1;
                    break;
                }
                break;
            case -1466435588:
                if (str.equals("AVPlayer.EVENT_PROMOTED_LOGGING_EVENT")) {
                    obj = null;
                    break;
                }
                break;
        }
        switch (obj) {
            case Util.TYPE_DASH /*0*/:
                this.e.a(cVar);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.c.a(cVar);
            default:
        }
    }

    j<Void> c(String str, c cVar) {
        return new com.twitter.util.concurrent.c().a(new bc(this, str, cVar)).a(AsyncTask.THREAD_POOL_EXECUTOR).a();
    }
}

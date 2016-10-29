package com.twitter.library.av.playback;

import android.content.Context;
import android.os.Handler;
import com.twitter.library.network.an;
import com.twitter.model.av.AVMedia;
import tv.periscope.android.exoplayer.player.c;
import tv.periscope.android.exoplayer.player.e;

/* compiled from: Twttr */
class ab extends bt<AVMediaPlayer> {
    final /* synthetic */ AVMedia a;
    final /* synthetic */ Handler b;
    final /* synthetic */ w c;
    final /* synthetic */ Context d;
    final /* synthetic */ boolean e;
    final /* synthetic */ aa f;

    ab(aa aaVar, AVMedia aVMedia, Handler handler, w wVar, Context context, boolean z) {
        this.f = aaVar;
        this.a = aVMedia;
        this.b = handler;
        this.c = wVar;
        this.d = context;
        this.e = z;
    }

    public /* synthetic */ Object a() {
        return b();
    }

    public AVMediaPlayer b() {
        int g = this.a.g();
        if (1 == g) {
            return new o(new ExoPlayerHelper(), this.b, this.c);
        }
        if (3 == g) {
            return new bn(this.b, this.c, new e(new c(this.d, an.a(this.d).e.toString(), this.a.a())));
        } else if (2 == g) {
            return new q(new ExoPlayerHelper(), this.c, this.b);
        } else {
            if (this.e) {
                return new u(this.b, this.c);
            }
            return new x(this.c, this.b);
        }
    }
}

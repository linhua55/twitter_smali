package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.av.audio.AudioCardError;
import com.twitter.android.moments.ui.video.b;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.u;
import com.twitter.model.av.c;
import com.twitter.model.moments.viewmodels.s;

/* compiled from: Twttr */
class ab extends u {
    final /* synthetic */ b a;
    final /* synthetic */ s b;
    final /* synthetic */ y c;

    ab(y yVar, b bVar, s sVar) {
        this.c = yVar;
        this.a = bVar;
        this.b = sVar;
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        this.c.e.a(new ae(this.a.f().D(), this.b));
    }

    public void a(int i, String str) {
        this.c.f.a(new ac(this.b, AudioCardError.UNKNOWN));
    }

    public void a(c cVar) {
        this.c.f.a(new ac(this.b, AudioCardError.a(cVar)));
    }
}

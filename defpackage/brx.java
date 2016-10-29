package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;

/* compiled from: Twttr */
/* renamed from: brx */
class brx extends bry {
    long a;

    brx(AVPlayer aVPlayer) {
        super(aVPlayer);
        this.a = -1;
    }

    protected void a(bd bdVar) {
        if (this.a == -1 || !this.b.T()) {
            this.a = bdVar.b;
        }
        this.c = bdVar.b - this.a;
    }

    protected void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        this.a = -1;
    }

    protected boolean a() {
        return this.c >= 1000;
    }

    protected String b() {
        return "video_1sec_view";
    }

    public void c() {
        super.c();
        this.a = -1;
    }
}

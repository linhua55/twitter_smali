package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;

/* compiled from: Twttr */
/* renamed from: bru */
class bru extends bry {
    long a;

    bru(AVPlayer aVPlayer) {
        super(aVPlayer);
        this.a = -1;
    }

    protected void a(bd bdVar) {
        if (this.a == -1) {
            this.a = bdVar.c / 2;
        }
        if (this.b.T() && !this.b.S()) {
            this.c += 10;
        }
    }

    protected void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
    }

    protected boolean a() {
        return this.a != -1 && this.c >= this.a;
    }

    protected String b() {
        return "video_groupm_view";
    }

    public void c() {
        super.c();
        this.a = -1;
    }
}

package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;

/* compiled from: Twttr */
/* renamed from: brw */
class brw extends bry {
    public long a;

    brw(AVPlayer aVPlayer) {
        super(aVPlayer);
        this.a = -1;
    }

    protected void a(bd bdVar) {
        if (this.a == -1 || this.b.U() < 0.5f) {
            this.a = bdVar.b;
        }
        this.c = bdVar.b - this.a;
    }

    protected void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        this.a = -1;
    }

    protected boolean a() {
        return this.c >= 2000;
    }

    protected String b() {
        return "video_mrc_view";
    }

    public void c() {
        super.c();
        this.a = -1;
    }
}

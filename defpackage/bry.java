package defpackage;

import android.support.annotation.VisibleForTesting;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;

/* compiled from: Twttr */
/* renamed from: bry */
abstract class bry {
    protected final AVPlayer b;
    protected long c;
    @VisibleForTesting
    boolean d;

    protected abstract void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType);

    protected abstract void a(bd bdVar);

    protected abstract boolean a();

    protected abstract String b();

    bry(AVPlayer aVPlayer) {
        this.b = aVPlayer;
    }

    final void b(bd bdVar) {
        if (!this.d) {
            a(bdVar);
            if (a()) {
                this.d = true;
                this.b.a(b());
            }
        }
    }

    public void c() {
        this.c = 0;
        this.d = false;
    }
}

package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;

/* compiled from: Twttr */
/* renamed from: bqz */
public class bqz implements brn {
    private final AVPlayer a;

    bqz(AVPlayer aVPlayer) {
        this.a = aVPlayer;
    }

    public void a(bd bdVar, long j) {
        if (j % 50 == 0 || bdVar.a()) {
            this.a.a(bdVar);
        }
    }

    public void a() {
    }

    public boolean b() {
        return true;
    }

    public void c() {
        a();
    }

    public void d() {
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
    }

    public void e() {
    }
}

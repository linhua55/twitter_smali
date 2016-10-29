package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
/* renamed from: brj */
public class brj implements brn {
    boolean a;
    private final AVPlayer b;
    private final AVMedia c;

    public brj(AVPlayer aVPlayer, AVMedia aVMedia) {
        this.b = aVPlayer;
        this.c = aVMedia;
    }

    public void a(bd bdVar, long j) {
        if (!this.a && this.b.L().d()) {
            this.a = true;
            this.b.a("play_from_tap", null, this.c);
        }
    }

    public void a() {
        this.a = false;
    }

    public boolean b() {
        return true;
    }

    public void c() {
    }

    public void d() {
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
    }

    public void e() {
    }
}

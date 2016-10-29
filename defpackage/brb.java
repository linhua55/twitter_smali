package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
/* renamed from: brb */
public class brb implements brn {
    boolean a;
    private final brs b;
    private final brj c;
    private final AVMedia d;
    private final AVPlayer e;

    public brb(AVPlayer aVPlayer, AVMedia aVMedia) {
        this(aVPlayer, aVMedia, new brs(aVPlayer, aVMedia), new brj(aVPlayer, aVMedia));
    }

    brb(AVPlayer aVPlayer, AVMedia aVMedia, brs brs, brj brj) {
        this.e = aVPlayer;
        this.d = aVMedia;
        this.b = brs;
        this.c = brj;
    }

    public void a(bd bdVar, long j) {
        this.b.a(bdVar, j);
        this.c.a(bdVar, j);
        if (!this.a) {
            if (this.b.c || this.c.a) {
                this.a = true;
                this.e.a("video_view", null, this.d);
            }
        }
    }

    public void a() {
        this.b.a();
        this.c.a();
        this.a = false;
    }

    public boolean b() {
        return this.a;
    }

    public void c() {
        if (!this.d.e()) {
            a();
        }
    }

    public void d() {
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
    }

    public void e() {
    }
}

package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.k;

/* compiled from: Twttr */
/* renamed from: bra */
public class bra implements brn {
    boolean a;
    private final AVPlayer b;
    private final AVMedia c;
    private final boolean d;

    public bra(AVPlayer aVPlayer, AVMedia aVMedia) {
        this.b = aVPlayer;
        this.c = aVMedia;
        this.d = f();
    }

    public void a(bd bdVar, long j) {
        if (this.d && !this.a) {
            this.a = true;
            this.b.a("marketplace_ad_impression", null, this.c);
        }
    }

    public void a() {
        this.a = false;
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

    private boolean f() {
        DynamicAd a = k.a(this.b.M());
        return a != null && a.b() && a.a(this.c);
    }
}

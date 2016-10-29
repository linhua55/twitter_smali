package defpackage;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.library.av.e;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bro */
public class bro implements brn {
    private final boolean a;
    private final boolean b;
    private final AVPlayer c;
    private final List<brr> d;
    private long e;
    private long f;
    private long g;
    private final boolean h;

    bro(AVPlayer aVPlayer, AVMedia aVMedia, boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
        this.c = aVPlayer;
        this.d = z ? h() : Collections.EMPTY_LIST;
        this.h = b.a(aVMedia);
    }

    private List<brr> h() {
        List<brr> arrayList = new ArrayList(6);
        arrayList.add(new brq(0.25f));
        arrayList.add(new brq(0.5f));
        arrayList.add(new brq(AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION));
        arrayList.add(new brq(1.0f));
        arrayList.add(new brp(this.c, 0.0f));
        arrayList.add(new brp(this.c, 1.0f));
        return arrayList;
    }

    public void a(bd bdVar, long j) {
        if (this.a) {
            this.g = bdVar.c;
            this.e = j;
            for (brr a : this.d) {
                a.a(10, f());
            }
            if (this.c.h()) {
                this.f += 10;
            }
        }
    }

    float f() {
        return this.c.U();
    }

    private int i() {
        return cbu.a(this.c.e().c());
    }

    public void a() {
    }

    public boolean b() {
        return true;
    }

    public void c() {
    }

    public void d() {
        if (this.e > 0) {
            a(g());
        }
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
    }

    public void e() {
    }

    cbu g() {
        cbw i = new cbw().a(this.h).b(this.e).a(this.g).g(this.f).c(((brr) this.d.get(0)).a()).d(((brr) this.d.get(1)).a()).e(((brr) this.d.get(2)).a()).f(((brr) this.d.get(3)).a()).h(((brr) this.d.get(4)).a()).i(((brr) this.d.get(5)).a());
        if (this.b) {
            i.a(i());
        }
        return i.a();
    }

    private void a(cbu cbu) {
        this.c.a("video_session", new e().d(cbm.a(cbu)));
    }
}

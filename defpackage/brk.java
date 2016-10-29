package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.library.av.playback.ca;
import com.twitter.library.av.playback.w;
import com.twitter.library.revenue.c;
import com.twitter.model.av.AVMedia;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: brk */
public class brk implements w {
    final AVMedia a;
    volatile long b;
    final AVPlayer c;
    final List<brn> d;
    private final ca e;

    public brk(AVPlayer aVPlayer, AVMedia aVMedia) {
        this(aVPlayer, aVMedia, new ca(), new bqx(aVPlayer, new brl()), new bqz(aVPlayer), new brb(aVPlayer, aVMedia), new brt(aVPlayer, aVMedia), new bra(aVPlayer, aVMedia), new brv(aVPlayer), new bro(aVPlayer, aVMedia, c.a(), c.b()), new brd(aVPlayer, aVMedia), new bqx(aVPlayer, new brm(aVPlayer)));
    }

    brk(AVPlayer aVPlayer, AVMedia aVMedia, ca caVar, brn... brnArr) {
        this.c = aVPlayer;
        this.a = aVMedia;
        List arrayList = new ArrayList();
        for (Object add : brnArr) {
            arrayList.add(add);
        }
        this.d = Collections.unmodifiableList(arrayList);
        this.e = caVar;
    }

    public void a(bd bdVar) {
        if (this.c.u()) {
            this.b += 10;
            for (brn a : this.d) {
                a.a(bdVar, this.b);
            }
        }
        a(bdVar, this.e);
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        if (b(aVPlayer$PlayerStartType)) {
            this.e.a();
            for (brn a : this.d) {
                a.a();
            }
        }
        for (brn a2 : this.d) {
            a2.a(aVPlayer$PlayerStartType);
        }
    }

    private boolean b(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
        return (AVPlayer$PlayerStartType.PAUSE_RESUME == aVPlayer$PlayerStartType || AVPlayer$PlayerStartType.SEEK_RESUME == aVPlayer$PlayerStartType) ? false : true;
    }

    public void a() {
        for (brn e : this.d) {
            e.e();
        }
    }

    public long b() {
        return this.b;
    }

    public boolean c() {
        for (brn b : this.d) {
            if (!b.b()) {
                return false;
            }
        }
        return true;
    }

    public void d() {
        for (brn c : this.d) {
            c.c();
        }
        if (!this.a.e()) {
            this.e.a();
        }
    }

    public void e() {
        for (brn d : this.d) {
            d.d();
        }
    }

    void a(bd bdVar, ca caVar) {
        if (bdVar != null) {
            long j = bdVar.c;
            boolean z = j < 0;
            long j2 = j / 4;
            long j3 = bdVar.b;
            if (!caVar.a && brk.a(j3, 0, false)) {
                caVar.a = true;
                this.c.a("playback_start", null, this.a);
            }
            if (!z) {
                if (!caVar.b && brk.a(j3, j2, false)) {
                    caVar.b = true;
                    this.c.a("playback_25", null, this.a);
                }
                if (!caVar.c && brk.a(j3, 2 * j2, false)) {
                    caVar.c = true;
                    this.c.a("playback_50", null, this.a);
                }
                if (!caVar.d && brk.a(j3, j2 * 3, false)) {
                    caVar.d = true;
                    this.c.a("playback_75", null, this.a);
                }
                long j4 = (long) (((double) j) * 0.95d);
                if (!caVar.e && brk.a(j3, j4, true)) {
                    caVar.e = true;
                    this.c.a("playback_95", null, this.a);
                }
                if (!caVar.f && brk.a(j3, j, true)) {
                    caVar.f = true;
                    this.c.a("playback_complete", null, this.a);
                }
            }
        }
    }

    static boolean a(long j, long j2, boolean z) {
        long j3 = j - j2;
        boolean z2 = z ? j3 <= 0 : j3 >= 0;
        if (!z2 || Math.abs(j3) > 1000) {
            return false;
        }
        return true;
    }
}

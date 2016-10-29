package com.twitter.android.composer;

import android.content.Context;
import android.net.Uri;
import com.twitter.media.model.MediaType;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.as;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.model.drafts.e;
import com.twitter.model.geo.g;
import com.twitter.util.Tristate;
import defpackage.buj;
import defpackage.cgf;
import defpackage.cni;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class bb {
    private final e a;
    private final List<DraftAttachment> b;
    private boolean c;

    public bb(d dVar) {
        this(new e(dVar));
    }

    private bb(e eVar) {
        this.b = new ArrayList(4);
        this.a = eVar;
        this.b.addAll(eVar.g());
        this.a.a(null);
    }

    public static bb a(Context context, aw awVar) {
        cni cni;
        Tweet k = awVar.k();
        long j = k != null ? k.t : awVar.j();
        e a = new e().a(awVar.n()).b(j).a(awVar.b(context)).a(awVar.o());
        if (k != null) {
            cni = k.f;
        } else {
            cni = awVar.g();
        }
        bb bbVar = new bb(a.a(cni).a(awVar.h()).a(awVar.m()).b(awVar.t()).a(a(awVar, j)));
        bbVar.a(awVar.e());
        return bbVar;
    }

    private static boolean a(aw awVar, long j) {
        boolean z = true;
        boolean z2 = j > 0;
        Tristate l = awVar.l();
        if (!z2) {
            return false;
        }
        if (l == Tristate.UNDEFINED) {
            return buj.a().b();
        }
        if (l != Tristate.TRUE) {
            z = false;
        }
        return z;
    }

    public boolean a() {
        return this.a.i();
    }

    public d b() {
        this.a.a(this.b);
        return (d) this.a.q();
    }

    public long c() {
        return this.a.d();
    }

    public void a(long j) {
        this.a.a(j);
    }

    public String d() {
        return this.a.e();
    }

    public void a(String str) {
        this.a.a(str);
    }

    public boolean e() {
        return this.c;
    }

    public void a(boolean z) {
        this.c = z;
    }

    public long f() {
        return this.a.h();
    }

    public void a(Tweet tweet) {
        this.a.b(tweet.t);
        this.a.a(tweet.f);
    }

    public DraftAttachment a(DraftAttachment draftAttachment) {
        int d = d(draftAttachment.e);
        if (d != -1) {
            return (DraftAttachment) this.b.set(d, draftAttachment);
        }
        this.b.add(draftAttachment);
        return null;
    }

    public DraftAttachment a(Uri uri) {
        int d = d(uri);
        if (d == -1) {
            return null;
        }
        return (DraftAttachment) this.b.remove(d);
    }

    public List<DraftAttachment> g() {
        return this.b;
    }

    public DraftAttachment b(Uri uri) {
        int d = d(uri);
        return d == -1 ? null : (DraftAttachment) this.b.get(d);
    }

    public void h() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ((DraftAttachment) this.b.get(i)).b(null);
        }
        this.b.clear();
    }

    public void a(int i) {
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((DraftAttachment) this.b.get(i2)).d == i) {
                ((DraftAttachment) this.b.get(i2)).b(null);
                this.b.remove(i2);
            }
        }
    }

    public boolean c(Uri uri) {
        return d(uri) != -1;
    }

    public boolean a(MediaType mediaType) {
        int size = this.b.size();
        if (mediaType == MediaType.IMAGE || mediaType == MediaType.UNKNOWN) {
            if (size < 4) {
                return true;
            }
            return false;
        } else if (size != 0) {
            return false;
        } else {
            return true;
        }
    }

    public boolean i() {
        return a(MediaType.UNKNOWN);
    }

    public as j() {
        return this.a.k();
    }

    public void b(String str) {
        this.a.b(str);
    }

    public void a(g gVar) {
        this.a.a(gVar);
    }

    public void a(cgf cgf) {
        this.a.a(cgf);
    }

    public cgf k() {
        return this.a.j();
    }

    public boolean l() {
        return this.a.j() != null;
    }

    private int d(Uri uri) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            if (((DraftAttachment) this.b.get(i)).e.equals(uri)) {
                return i;
            }
        }
        return -1;
    }
}

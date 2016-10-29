package defpackage;

import android.content.Context;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.timeline.ak;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.timeline.aa;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.h;

/* compiled from: Twttr */
/* renamed from: bnn */
public abstract class bnn extends ak<bnm> {
    protected final long a;
    private final long b;
    private final bnj c;
    private final int h;
    private final int i;
    private final aa j;

    protected abstract String[] e();

    public abstract boolean s();

    public abstract boolean t();

    protected /* synthetic */ c f() {
        return y();
    }

    bnn(Context context, ab abVar, String str, long j, int i, aa aaVar) {
        super(context, str, abVar);
        h.a(j > 0, "You must supply a valid timelineOwnerId");
        this.a = j;
        this.b = abVar.c;
        this.i = i;
        this.c = new bnj(context, this.b);
        this.j = aaVar;
        this.h = bnn.a(aaVar);
    }

    private static int a(aa aaVar) {
        if (aaVar == null) {
            return 1;
        }
        switch (aaVar.c) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 2;
            case Util.TYPE_OTHER /*3*/:
                return 3;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return 4;
            default:
                throw new IllegalArgumentException(String.format("Cannot construct a URTRequest with a cursor of type %d", new Object[]{Integer.valueOf(aaVar.c)}));
        }
    }

    protected e h() {
        Object[] e = e();
        h.a(!CollectionUtils.a(e), "You must supply a non-empty json path.");
        e a = K().a("2").b("timeline").a(e);
        if (!(this.h == 1 || this.j == null)) {
            a.a("cursor", this.j.b);
        }
        return a;
    }

    public int x() {
        return this.h;
    }

    protected bnm y() {
        return new bnm(z());
    }

    protected cog z() {
        return (cog) new coh().b(this.h).c(O()).a(this.b).a(t()).b(s()).b(this.a).a(this.i).a(g()).q();
    }

    protected void a(HttpOperation httpOperation, com.twitter.library.service.aa aaVar, bnm bnm) {
        if (httpOperation.k() && bnm != null) {
            cod cod = (cod) bnm.b();
            if (cod != null) {
                this.c.a(cod);
            }
        }
    }

    protected String g() {
        return "unspecified";
    }
}

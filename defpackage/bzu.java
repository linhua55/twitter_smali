package defpackage;

import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.k;
import com.twitter.library.service.aa;
import com.twitter.library.service.p;
import java.util.Collection;
import java.util.Collections;

/* compiled from: Twttr */
/* renamed from: bzu */
class bzu extends p {
    private static final Collection<RequestMethod> a;
    private static final Collection<Integer> e;
    private final int f;
    private final long g;
    private long h;
    private long i;
    private int j;

    static {
        a = Collections.singleton(bzt.a);
        e = Collections.singleton(Integer.valueOf(202));
    }

    bzu(int i, long j) {
        super(a, e);
        this.f = i;
        this.g = j;
    }

    protected boolean a(HttpOperation httpOperation, k kVar) {
        this.j++;
        if (kVar.a != 202 || this.j > this.f) {
            return false;
        }
        long a = p.a(httpOperation);
        if (a != 0) {
            this.h = a;
            if (this.h + this.i > this.g) {
                return false;
            }
            this.i += this.h;
            return true;
        }
        this.h = 0;
        return true;
    }

    public long b(ab<aa> abVar) {
        return this.h;
    }
}

package defpackage;

import cnm;
import cno;
import com.twitter.model.core.cm;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cnn */
public final class cnn extends f<cnm> {
    private List<cm> a;
    private cno b;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cnn a(List<cm> list) {
        this.a = list;
        return this;
    }

    public cnn a(cno cno) {
        this.b = cno;
        return this;
    }

    public boolean bo_() {
        if (CollectionUtils.b(this.a) || this.b == null || CollectionUtils.b(this.b.c)) {
            return false;
        }
        return "carousel".equals(this.b.b) || ("tweet".equals(this.b.b) && ((Long) this.b.c.get(0)).longValue() == ((cm) this.a.get(0)).b);
    }

    protected cnm d() {
        return new cnm(this);
    }
}

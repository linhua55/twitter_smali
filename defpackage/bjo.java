package defpackage;

import com.twitter.model.dms.Participant;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bjo */
public final class bjo extends f<bjn> {
    private List<Participant> a;
    private String b;
    private List<String> c;

    protected /* synthetic */ Object c() {
        return d();
    }

    public bjo a(List<Participant> list) {
        this.a = list;
        return this;
    }

    public bjo a(String str) {
        this.b = str;
        return this;
    }

    public bjo b(List<String> list) {
        this.c = list;
        return this;
    }

    protected bjn d() {
        return new bjn(this);
    }
}

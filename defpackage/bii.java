package defpackage;

import bhc;
import com.twitter.config.d;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: bii */
public class bii extends bhc<bim> {
    public static final n<bii> e;

    static {
        e = new bil();
    }

    public bii(bik bik) {
        super(bik);
    }

    public int g() {
        return 1;
    }

    public boolean A() {
        return B() == 0 || B() == 1;
    }

    public boolean h() {
        return true;
    }

    public boolean i() {
        return A() && (y() || d.a("dm_cancel_messages_enabled"));
    }

    public int B() {
        return ((bim) c()).j;
    }

    public DraftAttachment C() {
        return ((bim) c()).l;
    }

    public int D() {
        return ((bim) c()).k;
    }

    public boolean z() {
        return false;
    }

    public n<bim> a() {
        return bim.i;
    }
}

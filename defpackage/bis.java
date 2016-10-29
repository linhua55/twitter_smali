package defpackage;

import bgv;
import bip;
import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bis */
public class bis extends bgw<bit, bip, bir> {
    protected /* synthetic */ f b() {
        return a();
    }

    public bis() {
        super(bit.i);
    }

    protected bir a() {
        return new bir();
    }

    protected void a(p pVar, bir bir, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (bgx) bir, i);
        bir.b(pVar.d());
    }

    protected void a(q qVar, bip bip) throws IOException {
        super.a(qVar, (bgv) bip);
        qVar.b(bip.g() == 19);
    }
}

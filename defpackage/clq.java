package defpackage;

import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: clq */
public class clq extends k<clp> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, clp clp) throws IOException {
        qVar.a(clp.b, clr.a).b(clp.c);
    }

    protected clp a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new clp((clr) pVar.a(clr.a), e.b(pVar.i()));
    }
}

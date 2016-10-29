package defpackage;

import com.twitter.model.drafts.DraftAttachment;
import com.twitter.util.object.f;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bio */
class bio extends bhf<bim, bin> {
    private bio() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected bin a() {
        return new bin();
    }

    protected void a(p pVar, bin bin, int i) throws IOException, ClassNotFoundException {
        super.a(pVar, (bhg) bin, i);
        bin.b(pVar.e());
        bin.c(pVar.e());
        bin.a((DraftAttachment) pVar.a(DraftAttachment.a));
    }

    protected void a(q qVar, bim bim) throws IOException {
        super.a(qVar, (bhe) bim);
        qVar.e(bim.j);
        qVar.e(bim.k);
        qVar.a(bim.l, DraftAttachment.a);
    }
}

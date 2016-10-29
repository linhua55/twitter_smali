package defpackage;

import cgf;
import com.twitter.model.media.EditableImage;
import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cgg */
class cgg extends k<cgf> {
    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    cgg() {
        super(2);
    }

    protected void a(q qVar, cgf cgf) throws IOException {
        s.a(qVar, cgf.a(), s.j);
        qVar.b(cgf.b());
        qVar.a(cgf.c(), EditableImage.a);
    }

    protected cgf a(p pVar, int i) throws IOException, ClassNotFoundException {
        String i2;
        EditableImage editableImage;
        List a = s.a(pVar, s.j);
        if (i >= 1) {
            i2 = pVar.i();
        } else {
            i2 = null;
        }
        if (i >= 2) {
            editableImage = (EditableImage) pVar.a(EditableImage.a);
        } else {
            editableImage = null;
        }
        return new cgf((List) e.a(a), i2, editableImage);
    }
}

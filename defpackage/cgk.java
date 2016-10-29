package defpackage;

import cgp;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.util.serialization.SerializationException;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: cgk */
class cgk extends k<Object> {
    private cgk() {
    }

    protected void a(q qVar, Object obj) throws IOException {
        if (obj instanceof ImageSpec) {
            qVar.b((byte) 0);
            ImageSpec.a.b(qVar, (ImageSpec) obj);
        } else if (obj instanceof cgp) {
            qVar.b((byte) 1);
            qVar.b(((cgp) obj).a);
        } else if (obj instanceof String) {
            qVar.b((byte) 2);
            qVar.b((String) obj);
        } else if (obj instanceof Boolean) {
            qVar.b((byte) 3);
            qVar.b(((Boolean) obj).booleanValue());
        } else {
            throw new SerializationException("Invalid BindingValue value type: " + obj.getClass());
        }
    }

    protected Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        byte c = pVar.c();
        switch (c) {
            case Util.TYPE_DASH /*0*/:
                return ImageSpec.a.c(pVar);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return new cgp(pVar.i());
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return pVar.p();
            case Util.TYPE_OTHER /*3*/:
                return Boolean.valueOf(pVar.d());
            default:
                throw new SerializationException("Invalid BindingValue value type header: " + c);
        }
    }
}

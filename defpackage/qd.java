package defpackage;

import com.google.gson.JsonSyntaxException;
import com.google.gson.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.a;
import com.google.gson.stream.c;
import java.io.IOException;
import java.util.BitSet;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: qd */
final class qd extends s<BitSet> {
    qd() {
    }

    public /* synthetic */ Object read(a aVar) throws IOException {
        return a(aVar);
    }

    public /* synthetic */ void write(c cVar, Object obj) throws IOException {
        a(cVar, (BitSet) obj);
    }

    public BitSet a(a aVar) throws IOException {
        if (aVar.f() == JsonToken.i) {
            aVar.j();
            return null;
        }
        BitSet bitSet = new BitSet();
        aVar.a();
        JsonToken f = aVar.f();
        int i = 0;
        while (f != JsonToken.b) {
            boolean z;
            switch (qr.a[f.ordinal()]) {
                case p.View_android_focusable /*1*/:
                    if (aVar.m() == 0) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case p.View_paddingStart /*2*/:
                    z = aVar.i();
                    break;
                case p.View_paddingEnd /*3*/:
                    String h = aVar.h();
                    try {
                        if (Integer.parseInt(h) == 0) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + h);
                    }
                default:
                    throw new JsonSyntaxException("Invalid bitset value type: " + f);
            }
            if (z) {
                bitSet.set(i);
            }
            i++;
            f = aVar.f();
        }
        aVar.b();
        return bitSet;
    }

    public void a(c cVar, BitSet bitSet) throws IOException {
        if (bitSet == null) {
            cVar.f();
            return;
        }
        cVar.b();
        for (int i = 0; i < bitSet.length(); i++) {
            int i2;
            if (bitSet.get(i)) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            cVar.a((long) i2);
        }
        cVar.c();
    }
}

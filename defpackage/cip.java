package defpackage;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cip */
public class cip extends k<cil> {
    protected cip() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, cil cil) throws IOException {
        qVar.b(cil.b);
        cip.c(qVar, cil.c);
        cin.a.b(qVar, cil.d);
    }

    protected cil a(p pVar, int i) throws IOException, ClassNotFoundException {
        cil cil = new cil(pVar.p(), cip.b(pVar));
        cil.a((cin) cin.a.a(pVar));
        return cil;
    }

    private static Object b(p pVar) throws IOException {
        switch (pVar.e()) {
            case Util.TYPE_DASH /*0*/:
                return null;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return Integer.valueOf(pVar.e());
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return Long.valueOf(pVar.f());
            case Util.TYPE_OTHER /*3*/:
                return Double.valueOf(pVar.h());
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return Float.valueOf(pVar.g());
            case EbmlReader.TYPE_FLOAT /*5*/:
                return Boolean.valueOf(pVar.d());
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return pVar.p();
            case C.ENCODING_DTS /*7*/:
                int e = pVar.e();
                n a = n.a(e);
                for (int i = 0; i < e; i++) {
                    a.c(cip.b(pVar));
                }
                return a.q();
            default:
                return pVar.p();
        }
    }

    private static void c(q qVar, Object obj) throws IOException {
        int a = cip.a(obj);
        qVar.e(a);
        if (obj != null) {
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    qVar.e(((Integer) obj).intValue());
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    qVar.b(((Long) obj).longValue());
                case Util.TYPE_OTHER /*3*/:
                    qVar.b(((Double) obj).doubleValue());
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    qVar.b(((Float) obj).floatValue());
                case EbmlReader.TYPE_FLOAT /*5*/:
                    qVar.b(((Boolean) obj).booleanValue());
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    qVar.b((String) obj);
                case C.ENCODING_DTS /*7*/:
                    List<Object> list = (List) ObjectUtils.a(obj);
                    qVar.e(list.size());
                    for (Object c : list) {
                        cip.c(qVar, c);
                    }
                default:
                    qVar.b(obj.toString());
            }
        }
    }

    private static <T> int a(T t) {
        if (t == null) {
            return 0;
        }
        if (t instanceof Boolean) {
            return 5;
        }
        if (t instanceof Integer) {
            return 1;
        }
        if (t instanceof Long) {
            return 2;
        }
        if (t instanceof Double) {
            return 3;
        }
        if (t instanceof Float) {
            return 4;
        }
        if ((t instanceof String) || !(t instanceof List)) {
            return 6;
        }
        return 7;
    }
}

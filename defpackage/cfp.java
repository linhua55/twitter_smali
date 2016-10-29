package defpackage;

import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
/* renamed from: cfp */
public class cfp {
    public static String a(int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return "UNDEFINED";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "USER";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "STATUS";
            case Util.TYPE_OTHER /*3*/:
                return "LIST";
            default:
                return "UNKNOWN";
        }
    }
}

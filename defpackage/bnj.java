package defpackage;

import android.content.Context;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
/* renamed from: bnj */
public class bnj {
    private final bni a;

    public bnj(Context context, long j) {
        this.a = new bni(context, j);
    }

    public void a(cod cod) {
        for (coa a : cod.b.b) {
            a(a, cod.a, cod.c);
        }
    }

    private void a(coa coa, cnu cnu, cog cog) {
        if (coa instanceof cnr) {
            this.a.a((cnr) ObjectUtils.a(coa), cnu, cog);
            return;
        }
        throw new IllegalStateException("Attempting to process an unrecognized TimelineInstruction");
    }
}

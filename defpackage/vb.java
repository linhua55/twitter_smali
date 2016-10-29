package defpackage;

import android.content.Context;
import atn;
import bpp;
import cgu;
import che;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.client.Session;
import com.twitter.model.av.ab;

/* compiled from: Twttr */
/* renamed from: vb */
public class vb extends atn<AVDataSource, cgu<ab>, bpp> {
    private final Session a;
    private final Context b;

    public vb(Context context, Session session) {
        this.b = context;
        this.a = session;
    }

    protected cgu<ab> a(bpp bpp) {
        che che = new che();
        Iterable e = bpp.e();
        if (e != null) {
            che.a(e);
        }
        return che.a();
    }

    protected bpp a(AVDataSource aVDataSource) {
        if ((aVDataSource != null ? aVDataSource.b() : null) != null) {
            return new bpp(this.b, this.a, new long[]{(aVDataSource != null ? aVDataSource.b() : null).H});
        }
        throw new NullPointerException("Cannot query for watch mode results with null tweet");
    }
}

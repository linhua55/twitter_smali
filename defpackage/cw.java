package defpackage;

import android.content.Context;
import android.net.Uri;
import com.facebook.common.references.a;
import com.facebook.datasource.d;
import com.facebook.imagepipeline.request.ImageRequest;
import cz;
import dc;
import dk;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cw */
public class cw extends dc<cw, ImageRequest, a<gh>, gk> {
    private final fg a;
    private final cy b;

    public /* synthetic */ dn b(Uri uri) {
        return a(uri);
    }

    protected /* synthetic */ dc c() {
        return b();
    }

    protected /* synthetic */ cz d() {
        return a();
    }

    public cw(Context context, cy cyVar, fg fgVar, Set<dg> set) {
        super(context, set);
        this.a = fgVar;
        this.b = cyVar;
    }

    public cw a(Uri uri) {
        return (cw) super.b(ImageRequest.a(uri));
    }

    protected cv a() {
        dk g = g();
        if (!(g instanceof cv)) {
            return this.b.a(l(), cw.k(), e());
        }
        cv cvVar = (cv) g;
        cvVar.a(l(), cw.k(), e());
        return cvVar;
    }

    protected d<a<gh>> a(ImageRequest imageRequest, Object obj, boolean z) {
        if (z) {
            return this.a.a(imageRequest, obj);
        }
        return this.a.b(imageRequest, obj);
    }

    protected cw b() {
        return this;
    }
}

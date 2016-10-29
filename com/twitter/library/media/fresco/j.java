package com.twitter.library.media.fresco;

import android.graphics.PointF;
import android.net.Uri;
import com.facebook.drawee.drawable.ScalingUtils.ScaleType;
import com.facebook.drawee.view.GenericDraweeView;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.twitter.config.d;
import com.twitter.media.request.ImageRequester;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.request.i;
import com.twitter.util.math.c;
import com.twitter.util.object.ObjectUtils;
import cu;
import cw;
import cz;
import defpackage.bxp;
import dk;
import java.io.File;

/* compiled from: Twttr */
class j implements ImageRequester {
    private final bxp b;
    private final bxp c;
    private final bxp d;
    private GenericDraweeView e;
    private a f;
    private ImageRequest g;
    private i<ImageResponse> h;
    private boolean i;
    private boolean j;

    j() {
        if (d.a("photo_wait_time_enabled")) {
            this.b = new bxp();
            this.c = new bxp();
            this.d = new bxp();
            return;
        }
        this.b = null;
        this.c = null;
        this.d = null;
    }

    public void a(GenericDraweeView genericDraweeView) {
        this.e = genericDraweeView;
    }

    public void a(boolean z) {
        this.j = z;
        e();
    }

    public boolean a(a aVar) {
        a aVar2 = this.f;
        if (aVar2 != aVar) {
            this.f = aVar;
            this.h = aVar != null ? aVar.E() : null;
            if (!ObjectUtils.a(aVar2, aVar)) {
                e();
                c();
                return true;
            }
        }
        return false;
    }

    public a a() {
        return this.f;
    }

    private ImageRequest d() {
        return this.g;
    }

    public void b(boolean z) {
        if (this.f != null && !b()) {
            g gVar = new g(this.f);
            if (z && this.d != null) {
                this.d.a();
                if (this.j) {
                    if (this.b != null) {
                        this.b.a();
                    }
                    if (this.c != null) {
                        this.c.a();
                    }
                }
            }
            cz h = ((cw) ((cw) ((cw) cu.a().b(this.g)).a(gVar)).a(new q(this.f, gVar).a(new k(this)).a(this.b).b(this.c).c(this.d).a())).h();
            c j = this.f.j();
            if (!(j == null || j.a())) {
                com.facebook.drawee.generic.a aVar = (com.facebook.drawee.generic.a) this.e.getHierarchy();
                aVar.a(ScaleType.FOCUS_CROP);
                aVar.a(new PointF(j.e(), j.f()));
            }
            this.e.setController(h);
            this.i = true;
        }
    }

    public boolean b() {
        return this.i;
    }

    public boolean c() {
        this.i = false;
        dk controller = this.e.getController();
        if (controller == null) {
            return false;
        }
        if (this.d != null) {
            this.d.b();
        }
        controller.h();
        return true;
    }

    public void a(String str) {
        if (this.b != null) {
            this.b.a(str);
        }
        if (this.c != null) {
            this.c.a(str);
        }
        if (this.d != null) {
            this.d.a(str);
        }
    }

    public File b(a aVar) {
        return null;
    }

    private void e() {
        if (this.f == null) {
            this.g = null;
        } else {
            this.g = ImageRequestBuilder.a(Uri.parse(this.j ? n.a(this.f.a()) : this.f.a())).a(this.j).l();
        }
    }
}

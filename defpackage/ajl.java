package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.twitter.android.moments.ui.fullscreen.dl;
import com.twitter.android.moments.ui.fullscreen.fx;
import com.twitter.android.moments.viewmodels.f;
import com.twitter.android.moments.viewmodels.g;
import com.twitter.android.mx;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.model.moments.viewmodels.v;
import com.twitter.util.collection.n;
import com.twitter.util.j;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.b;
import com.twitter.util.object.c;
import com.twitter.util.object.d;
import java.util.List;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: ajl */
public class ajl implements ajx {
    private final d<f, fx, agd> a;
    private final c<ahd> b;
    private final c<afs> c;
    private final b<MomentPage, afw> d;
    private final c<agi> e;
    private final c<agw> f;
    private final g g;

    public static ajl a(Resources resources, LayoutInflater layoutInflater, Context context) {
        return new ajl(new ajm(layoutInflater), new ajn(context, layoutInflater, resources), new ajo(resources, layoutInflater), new ajp(layoutInflater), new ajq(context, layoutInflater, resources), new ajr(layoutInflater), g.a());
    }

    public ajl(d<f, fx, agd> dVar, c<ahd> cVar, c<afs> cVar2, b<MomentPage, afw> bVar, c<agi> cVar3, c<agw> cVar4, g gVar) {
        this.a = dVar;
        this.b = cVar;
        this.c = cVar2;
        this.d = bVar;
        this.e = cVar3;
        this.f = cVar4;
        this.g = gVar;
    }

    public List<ahj<? extends MomentPage>> a(MomentPage momentPage) {
        ahj b = b(momentPage);
        return n.a(a(momentPage, b instanceof fx ? (fx) b : fx.a), b);
    }

    private ahj<? extends MomentPage> a(MomentPage momentPage, fx fxVar) {
        switch (ajs.a[momentPage.d().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                agd agd = (agd) this.a.a(this.g.a(momentPage), fxVar);
                agd.a(momentPage, dl.a(momentPage));
                return agd;
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                v vVar = (v) ObjectUtils.a((Object) momentPage);
                ahd ahd = (ahd) this.b.b();
                ahd.a(vVar, vVar.n());
                return ahd;
            default:
                throw new IllegalArgumentException("Unrecognized moment page type: " + momentPage.d());
        }
    }

    private ahj<? extends MomentPage> b(MomentPage momentPage) {
        if (momentPage.i()) {
            afs afs = (afs) this.c.b();
            afs.a(momentPage, dl.a(momentPage));
            return afs;
        } else if (momentPage.j()) {
            afw afw = (afw) this.d.a(momentPage);
            afw.a(momentPage, dl.a(momentPage));
            return afw;
        } else {
            j.b(momentPage instanceof o);
            switch (ajs.a[momentPage.d().ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                case WireMessage.WIRE_CONTROL /*2*/:
                case WireMessage.WIRE_AUTH /*3*/:
                    o oVar = (o) ObjectUtils.a((Object) momentPage);
                    agi agi = (agi) this.e.b();
                    agi.a(oVar, oVar.n());
                    return agi;
                default:
                    agw agw = (agw) this.f.b();
                    agw.a(momentPage, dl.a(momentPage));
                    return agw;
            }
        }
    }
}

package com.twitter.android.eventtimelines.tv.show;

import android.content.res.Resources;
import com.twitter.android.eventtimelines.a;
import com.twitter.android.eventtimelines.c;
import com.twitter.app.common.di.InjectionScope;
import com.twitter.config.d;
import com.twitter.model.eventtimelines.TvShow;
import com.twitter.util.collection.x;
import com.twitter.util.collection.z;
import com.twitter.util.object.e;
import cxj;
import cym;
import dbg;
import java.net.URI;
import java.util.Locale;
import rx.o;

/* compiled from: Twttr */
public class af implements ad {
    private static final String a;
    private final dbg b;
    private final a c;
    private final s d;
    private final o<TvShow> e;
    private aw f;
    private final Resources g;
    private final cxj<Locale> h;

    static {
        a = af.class.getSimpleName();
    }

    public af(ap apVar, Resources resources, a aVar, s sVar, cxj<Locale> cxj_java_util_Locale) {
        this.b = new dbg();
        this.f = aw.a;
        this.g = resources;
        this.c = aVar;
        this.d = sVar;
        this.e = apVar.a(this.d.b);
        this.h = cxj_java_util_Locale;
    }

    aw a(TvShow tvShow) {
        URI create = URI.create(String.format(d.b("event_timelines_tv_show_banner_image_url_format"), new Object[]{Long.valueOf(tvShow.b)}));
        int i = tvShow.e != null ? 1 : 0;
        String str = i != 0 ? " #" + tvShow.e : TtmlNode.ANONYMOUS_REGION_ID;
        return (aw) new ax().a(tvShow.b).a(create).a((String) e.b(tvShow.c, TtmlNode.ANONYMOUS_REGION_ID)).b((String) e.b(tvShow.d, TtmlNode.ANONYMOUS_REGION_ID)).c((String) e.b(tvShow.e, TtmlNode.ANONYMOUS_REGION_ID)).a((a) new c().a(str).b(i != 0 ? x.a(z.a(Integer.valueOf(0), Integer.valueOf(0))) : x.a()).a(i != 0 ? x.a(this.g.getString(2131364012) + str) : x.a()).q()).d(this.c.a(tvShow, this.d)).q();
    }

    public void a(InjectionScope injectionScope) {
        if (injectionScope == InjectionScope.VIEW) {
            this.b.c();
        }
    }

    public void a(ae aeVar) {
        this.b.a(this.e.a(cym.a()).a(new ag(this, aeVar), new ah(this)));
    }

    public String a() {
        return String.format("entity_id:%s filter:safe lang:%s", new Object[]{this.d.a(), ((Locale) this.h.b()).getLanguage()});
    }
}

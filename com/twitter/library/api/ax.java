package com.twitter.library.api;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer.ExoPlayer.Factory;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.cd;
import com.twitter.model.url.UnwrappedTcoLinkResponse;
import com.twitter.model.url.UnwrappedTcoLinkResponse.ResolutionStatus;
import com.twitter.util.aj;
import com.twitter.util.ao;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

/* compiled from: Twttr */
public class ax extends af<t<List<UnwrappedTcoLinkResponse>, cd>> {
    private final String b;
    private String c;
    private final t<List<UnwrappedTcoLinkResponse>, cd> g;
    private List<String> h;
    private String i;

    protected /* synthetic */ c f() {
        return b();
    }

    public ax(Context context, Session session, String str) {
        super(context, ax.class.getName(), session);
        this.b = str;
        this.g = u.a(UnwrappedTcoLinkResponse.class);
        g(Factory.DEFAULT_MIN_REBUFFER_MS);
    }

    protected d a() {
        return K().a(RequestMethod.a).a("urls", "click").a("tco", this.c).a();
    }

    protected t<List<UnwrappedTcoLinkResponse>, cd> b() {
        return this.g;
    }

    protected boolean b(aa aaVar) {
        if (this.c == null && this.b != null) {
            Uri parse = Uri.parse(this.b);
            this.c = ao.d(parse) ? parse.getLastPathSegment() : null;
        }
        return this.c != null && super.b(aaVar);
    }

    public void a(ab<aa> abVar) {
        aa aaVar = (aa) abVar.b();
        if (aaVar != null && aaVar.b()) {
            List list = (List) this.g.b();
            if (!(list == null || list.isEmpty())) {
                UnwrappedTcoLinkResponse unwrappedTcoLinkResponse = (UnwrappedTcoLinkResponse) list.get(0);
                if (unwrappedTcoLinkResponse != null) {
                    this.i = unwrappedTcoLinkResponse.c;
                    if (unwrappedTcoLinkResponse.e == ResolutionStatus.b) {
                        this.h = unwrappedTcoLinkResponse.d;
                    }
                    a("resolution_status", unwrappedTcoLinkResponse.e.toString());
                }
            }
            a("resolution_length", Integer.toString(this.h != null ? this.h.size() : 0));
        }
        super.a(abVar);
    }

    public List<String> g() {
        return CollectionUtils.b(this.h) ? ImmutableList.c() : this.h;
    }

    public String h() {
        return aj.a(this.i) ? null : this.i;
    }

    public String s() {
        return this.b;
    }

    public String e() {
        return "app:twitter_service:redirect:link";
    }
}

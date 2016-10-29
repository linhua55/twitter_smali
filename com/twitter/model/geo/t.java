package com.twitter.model.geo;

import com.twitter.model.geo.VendorInfo.YelpInfo;
import com.twitter.model.geo.VendorInfo.YelpInfo.YelpRating;
import com.twitter.util.object.e;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class t extends k<YelpInfo> {
    private t() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, YelpInfo yelpInfo) throws IOException {
        qVar.b(yelpInfo.b).b(yelpInfo.c).b(yelpInfo.d).a(yelpInfo.e, s.a(YelpRating.class)).e(yelpInfo.f);
    }

    protected YelpInfo a(p pVar, int i) throws IOException, ClassNotFoundException {
        String i2 = pVar.i();
        String i3 = pVar.i();
        YelpRating yelpRating = (YelpRating) pVar.a(s.a(YelpRating.class));
        return new YelpInfo(e.b(i2), e.b(i3), pVar.i(), (YelpRating) e.b(yelpRating, YelpRating.NONE), pVar.e());
    }
}

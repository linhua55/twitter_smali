package com.twitter.model.geo;

import com.twitter.model.geo.VendorInfo.YelpInfo;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class s extends k<VendorInfo> {
    private s() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, VendorInfo vendorInfo) throws IOException {
        qVar.a(vendorInfo.c, q.a).a(vendorInfo.d, YelpInfo.a);
    }

    protected VendorInfo a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new VendorInfo((q) pVar.a(q.a), (YelpInfo) pVar.a(YelpInfo.a));
    }
}

package com.twitter.library.commerce.model;

import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.library.commerce.model.OfferDetails.OfferStatus;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.s;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
class q extends k<OfferDetails> {
    private q() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(com.twitter.util.serialization.q qVar, OfferDetails offerDetails) throws IOException {
        qVar.b(offerDetails.a()).b(offerDetails.b()).b(offerDetails.c()).b(offerDetails.d()).a(offerDetails.e(), s.a(OfferStatus.class)).a(offerDetails.f(), s.a(s.a(Type.class)));
    }

    protected OfferDetails a(p pVar, int i) throws IOException, ClassNotFoundException {
        OfferDetails offerDetails = new OfferDetails();
        offerDetails.a(pVar.i());
        offerDetails.a(pVar.d());
        offerDetails.a(pVar.f());
        offerDetails.b(pVar.f());
        offerDetails.a((OfferStatus) s.a(OfferStatus.class).c(pVar));
        offerDetails.a((List) pVar.a(s.a(s.a(Type.class))));
        return offerDetails;
    }
}

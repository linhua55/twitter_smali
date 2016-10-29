package com.twitter.library.network.livepipeline;

import cfb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.q;

/* compiled from: Twttr */
abstract class ad extends ag {
    ad(ae aeVar, String str) {
        super(aeVar.a, str, aeVar.b, new q(0));
    }

    protected void a(HttpOperation httpOperation, aa aaVar, c cVar) {
        String u = u();
        if (aaVar.b()) {
            cfb.b("LivePipeline", "Operation " + u + " succeeded");
            return;
        }
        cfb.b("LivePipeline", "Publish to " + u + " failed");
        cfb.b("LivePipeline", "Response Status: " + aaVar.d());
        cfb.b("LivePipeline", "Message: " + aaVar.e());
    }
}

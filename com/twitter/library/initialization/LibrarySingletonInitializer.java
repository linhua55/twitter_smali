package com.twitter.library.initialization;

import android.content.Context;
import com.twitter.library.client.ab;
import com.twitter.library.network.forecaster.b;
import com.twitter.library.network.l;
import com.twitter.library.network.t;
import com.twitter.library.network.v;
import com.twitter.library.service.u;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.platform.PlatformContext;
import com.twitter.util.ak;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.aof;
import defpackage.cdm;
import defpackage.cdo;

/* compiled from: Twttr */
public class LibrarySingletonInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        ak.a(context);
        ImageSpec.b = ak.b();
        TelephonyUtil.a(new cdm(context));
        v.a(PlatformContext.f().b(), new t());
        b.a(context);
        u.a(context);
        cdo.a(context);
        l.a(context).a();
        ab.a(context).a();
    }
}

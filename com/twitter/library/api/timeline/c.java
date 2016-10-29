package com.twitter.library.api.timeline;

import android.content.Context;
import beb;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.ap;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.topic.TwitterTopic;
import java.util.List;

/* compiled from: Twttr */
public class c extends beb<as> {
    private final String a;
    private final int b;

    protected /* synthetic */ com.twitter.library.service.c f() {
        return e();
    }

    public c(Context context, Session session, String str, int i) {
        super(context, c.class.getName(), session);
        this.a = str;
        this.b = i;
    }

    protected e b() {
        long j = N().c;
        e a = K().a("beta", "timelines", "timeline").a("pc", "true").a(TtmlNode.ATTR_ID, this.a);
        String b;
        switch (this.b) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                b = S().b(8, 2, j, this.a);
                if (b != null) {
                    a.a("min_position", b);
                    break;
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                b = S().b(8, 3, j, this.a);
                if (b != null) {
                    a.a("max_position", b);
                    break;
                }
                break;
        }
        return a.b().e().d().c();
    }

    protected as e() {
        return as.a(57);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            ap apVar = (ap) asVar.b();
            if (apVar != null) {
                String str;
                String str2;
                switch (this.b) {
                    case ModuleDescriptor.MODULE_VERSION /*1*/:
                        str = null;
                        str2 = apVar.e;
                        break;
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        str = apVar.d;
                        str2 = null;
                        break;
                    default:
                        str = apVar.d;
                        str2 = apVar.e;
                        break;
                }
                com.twitter.library.provider.e T = T();
                di S = S();
                TwitterTopic twitterTopic = apVar.a;
                TwitterUser twitterUser = apVar.b;
                List list = apVar.c;
                long j = N().c;
                String str3 = this.a;
                boolean z = this.b == 2 && apVar.c.isEmpty();
                S.a(twitterTopic, twitterUser, list, j, 5, str3, str, str2, z, T);
                T.a();
            }
        }
        aaVar.a(httpOperation);
    }
}

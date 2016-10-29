package com.twitter.library.api.search;

import android.content.Context;
import beb;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public class r extends beb<as> {
    private final String a;
    private final int b;
    private final int c;
    private final String h;
    private TwitterTypeAheadGroup i;

    protected /* synthetic */ c f() {
        return s();
    }

    public r(Context context, Session session, String str, int i, int i2, String str2) {
        super(context, r.class.getName(), session);
        this.a = str;
        this.b = i;
        this.c = i2;
        this.h = str2;
    }

    public int e() {
        return this.b;
    }

    public String g() {
        return this.a;
    }

    public TwitterTypeAheadGroup h() {
        return this.i;
    }

    protected e b() {
        e a = K().a("search", "typeahead");
        a.a("prefetch", false);
        String str = this.b == 1 ? this.a.startsWith("@") ? this.a : "@" + this.a : this.b == 2 ? this.a.startsWith("#") ? this.a : "#" + this.a : this.a;
        a.a("q", str);
        a.a("src", this.h);
        switch (this.b) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a.a("result_type", "users");
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                a.a("result_type", "hashtags");
                break;
            case Util.TYPE_OTHER /*3*/:
                a.a("result_type", "topics");
                a.a("filters", true);
                break;
            default:
                a.a("result_type", "all");
                a.a("filters", true);
                break;
        }
        if (this.c > 0) {
            a.a("count", (long) this.c);
        }
        return a;
    }

    protected as s() {
        return as.a(39);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            this.i = (TwitterTypeAheadGroup) asVar.b();
        }
    }
}

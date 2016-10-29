package defpackage;

import bip;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.dms.a;
import com.twitter.model.dms.ar;
import com.twitter.model.dms.bm;
import com.twitter.model.dms.h;
import com.twitter.model.dms.o;
import com.twitter.model.json.dms.g;
import com.twitter.util.collection.n;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bji */
public class bji extends o {
    public final List<ar> a;
    private final List<TwitterUser> b;
    private final List<h> c;
    private final List<a> d;
    private final List<bm> e;

    public bji(List<TwitterUser> list, List<bm> list2, List<h> list3, List<a> list4, List<ar> list5) {
        this.b = list;
        this.e = list2;
        this.c = list3;
        this.d = list4;
        this.a = list5;
    }

    public static bji a(JsonParser jsonParser) throws IOException {
        n d = n.d();
        n d2 = n.d();
        n d3 = n.d();
        n d4 = n.d();
        n d5 = n.d();
        JsonToken a = jsonParser.a();
        Object obj = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            switch (bjj.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    obj = jsonParser.g();
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"conversations".equals(obj)) {
                        if (!"users".equals(obj)) {
                            if (!"users_url".equals(obj)) {
                                if (!"failed_participants".equals(obj)) {
                                    jsonParser.c();
                                    break;
                                }
                                d5.c(new g().a(jsonParser));
                                break;
                            }
                            d2.c(bia.c(jsonParser));
                            break;
                        }
                        d.c(com.twitter.model.json.common.g.f(jsonParser, TwitterUser.class));
                        break;
                    }
                    d3.c(com.twitter.model.json.common.g.f(jsonParser, h.class));
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"entries".equals(obj)) {
                        jsonParser.c();
                        break;
                    }
                    d4.c(bia.b(jsonParser));
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new bji((List) d.q(), (List) d2.q(), (List) d3.q(), (List) d4.q(), (List) d5.q());
    }

    public bip g() {
        for (a aVar : this.d) {
            if (aVar.g() == 0) {
                return (bip) aVar;
            }
        }
        return null;
    }

    public List<a> a() {
        return this.d;
    }

    public List<TwitterUser> b() {
        return this.b;
    }

    public List<h> c() {
        return this.c;
    }

    public int d() {
        return 4;
    }

    public long e() {
        return -1;
    }

    public long f() {
        return -1;
    }
}

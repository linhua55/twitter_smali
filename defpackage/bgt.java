package defpackage;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.dms.a;
import com.twitter.model.dms.ar;
import com.twitter.model.dms.h;
import com.twitter.model.dms.o;
import com.twitter.model.json.dms.g;
import com.twitter.util.collection.n;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bgt */
public class bgt extends o {
    public final List<ar> a;
    private final List<TwitterUser> b;
    private final List<a> c;

    public bgt(List<TwitterUser> list, List<a> list2, List<ar> list3) {
        this.b = list;
        this.c = list2;
        this.a = list3;
    }

    public static bgt a(JsonParser jsonParser) throws IOException {
        n d = n.d();
        n d2 = n.d();
        n d3 = n.d();
        n d4 = n.d();
        JsonToken a = jsonParser.a();
        Object obj = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            switch (bgu.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    obj = jsonParser.g();
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"conversations".equals(obj)) {
                        if (!"users".equals(obj)) {
                            if (!"failed_participants".equals(obj)) {
                                jsonParser.c();
                                break;
                            }
                            d4.c(new g().a(jsonParser));
                            break;
                        }
                        d.c(com.twitter.model.json.common.g.f(jsonParser, TwitterUser.class));
                        break;
                    }
                    d2.c(com.twitter.model.json.common.g.f(jsonParser, h.class));
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"entries".equals(obj)) {
                        jsonParser.c();
                        break;
                    }
                    d3.c(bia.b(jsonParser));
                    break;
                default:
                    break;
            }
            a = jsonParser.a();
        }
        return new bgt((List) d.q(), (List) d3.q(), (List) d4.q());
    }

    public List<a> a() {
        return this.c;
    }

    public List<TwitterUser> b() {
        return this.b;
    }

    public List<h> c() {
        return n.g();
    }

    public int d() {
        return 5;
    }

    public long e() {
        return -1;
    }

    public long f() {
        return -1;
    }
}

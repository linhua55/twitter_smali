package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.aj;
import com.twitter.model.core.x;
import com.twitter.model.json.common.e;
import com.twitter.model.json.common.j;
import com.twitter.model.stratostore.a;
import com.twitter.model.stratostore.b;
import com.twitter.model.stratostore.c;
import com.twitter.model.stratostore.h;
import com.twitter.util.math.Size;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMediaEntity extends e<MediaEntity> {
    @JsonField
    public int[] a;
    @JsonField(name = {"url_https"})
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField(name = {"url"})
    public String e;
    @JsonField
    public long f;
    @JsonField
    public Type g;
    @JsonField
    public String h;
    @JsonField
    public String i;
    @JsonField
    public long j;
    @JsonField
    public long k;
    @JsonField
    public JsonMediaSizes l;
    @JsonField
    public JsonMediaFeatures m;
    @JsonField
    public aj n;
    @JsonField
    public JsonAdditionalMediaInfo o;
    @JsonField
    public boolean p;
    @JsonField
    public h q;

    public /* synthetic */ f c() {
        return a();
    }

    public JsonMediaEntity() {
        this.a = new int[]{-1, -1};
    }

    public x a() {
        b bVar;
        Size size = (Size) j.a(this.l, Size.b);
        x a = ((x) ((x) ((x) ((x) ((x) new x().a(this.a[0])).b(this.a[1])).e((String) com.twitter.util.object.e.b(this.b, this.e))).f(this.c)).g(this.d)).a(this.f).b(this.j).c(this.k).a((String) com.twitter.util.object.e.b(this.h, this.i)).a((Type) com.twitter.util.object.e.b(this.g, Type.a)).a(size).a(this.n);
        if (this.m != null) {
            if (this.m.a != null) {
                a.b(this.m.a.a());
            }
            if (this.m.b != null) {
                a.a(this.m.b.a(size));
            }
        }
        c cVar = this.q != null ? (c) this.q.a(c.class) : null;
        if (cVar != null) {
            a.c(cVar.a);
        }
        if (this.o != null) {
            if (this.o.a != null) {
                a.a(this.o.a.a());
            }
            a.b(this.o.b);
            a.a(this.o.c);
            a.c(this.o.d);
            a.a(this.o.e);
        }
        a.b(this.p);
        a aVar = this.q != null ? (a) this.q.a(a.class) : null;
        if (aVar != null) {
            a.d(aVar.a);
        }
        if (this.q != null) {
            bVar = (b) this.q.a(b.class);
        } else {
            bVar = null;
        }
        if (bVar != null) {
            a.a(bVar.a);
        }
        return a;
    }
}

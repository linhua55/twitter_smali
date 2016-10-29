package com.twitter.model.json.media.stickers;

import cjw;
import cjy;
import ckl;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.util.al;
import com.twitter.util.object.f;
import java.util.Date;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSticker extends e<cjw> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public long e;
    @JsonField
    public long f;
    @JsonField
    public long g;
    @JsonField
    public String h;
    @JsonField
    public ckl i;
    @JsonField
    public long j;
    @JsonField
    public String k;
    @JsonField(typeConverter = b.class)
    public Date l;
    @JsonField(typeConverter = b.class)
    public Date m;

    public /* synthetic */ f c() {
        return a();
    }

    public cjy a() {
        if (this.c == null) {
            this.c = "";
        }
        return new cjy().a(this.a).a(this.b).b(this.c).c(this.d).d(this.h).b(this.e).c(this.g).d(this.f).a(this.i).e(this.j).e(this.k).f(this.l != null ? this.l.getTime() : 0).g(this.m != null ? this.m.getTime() : Long.MAX_VALUE).h(al.b());
    }
}

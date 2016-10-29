package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cg;
import com.twitter.model.core.ch;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterList extends e<cg> {
    @JsonField
    public int a;
    @JsonField
    public int b;
    @JsonField
    public long c;
    @JsonField
    public boolean d;
    @JsonField(name = {"name"})
    public String e;
    @JsonField
    public String f;
    @JsonField
    public String g;
    @JsonField(name = {"profile_image_url"})
    public String h;
    @JsonField
    public String i;
    @JsonField
    public String j;
    @JsonField(name = {"user"})
    public TwitterUser k;

    public /* synthetic */ f c() {
        return a();
    }

    public ch a() {
        return new ch().a(this.d).b(!"public".equals(this.i)).a(this.a).b(this.b).a(this.c).b(this.e).c(this.f).d(this.g).e(this.h).f(this.j).a(this.k);
    }
}

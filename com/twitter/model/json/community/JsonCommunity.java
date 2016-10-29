package com.twitter.model.json.community;

import cho;
import chp;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonCommunity extends e<cho> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public int e;
    @JsonField
    public List<TwitterUser> f;
    @JsonField
    public boolean g;

    public /* synthetic */ f c() {
        return a();
    }

    public chp a() {
        return new chp().a(this.a).a(this.b).b(this.c).c(this.d).a(this.e).a(this.f).a(this.g);
    }
}

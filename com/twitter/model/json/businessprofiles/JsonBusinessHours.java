package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.ad;
import com.twitter.model.businessprofiles.i;
import com.twitter.model.businessprofiles.k;
import com.twitter.model.json.common.e;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.object.f;
import java.util.List;
import java.util.TimeZone;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonBusinessHours extends e<i> {
    @JsonField
    public String a;
    @JsonField
    public List<ad> b;
    @JsonField
    public List<ad> c;
    @JsonField
    public List<ad> d;
    @JsonField
    public List<ad> e;
    @JsonField
    public List<ad> f;
    @JsonField
    public List<ad> g;
    @JsonField
    public List<ad> h;

    public /* synthetic */ f c() {
        return a();
    }

    public k a() {
        k kVar = new k();
        TimeZone timeZone = (this.a == null || this.a.isEmpty()) ? TimeZone.getDefault() : TimeZone.getTimeZone(this.a);
        return kVar.a(timeZone).a(ImmutableList.a(this.b)).b(ImmutableList.a(this.c)).c(ImmutableList.a(this.d)).d(ImmutableList.a(this.e)).e(ImmutableList.a(this.f)).f(ImmutableList.a(this.g)).g(ImmutableList.a(this.h));
    }
}

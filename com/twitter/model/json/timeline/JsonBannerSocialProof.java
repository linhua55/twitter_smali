package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.timeline.a;

@JsonObject
/* compiled from: Twttr */
public class JsonBannerSocialProof extends f<a> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public a a() {
        return new a(this.a, this.b);
    }
}

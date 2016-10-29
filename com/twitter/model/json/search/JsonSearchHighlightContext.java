package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.ck;
import com.twitter.model.json.common.e;
import com.twitter.model.json.core.b;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSearchHighlightContext extends e<TwitterSocialProof> {
    @JsonField
    public b a;
    @JsonField
    public String[] b;

    public /* synthetic */ f c() {
        return a();
    }

    public ck a() {
        return new ck().a(((b) com.twitter.util.object.e.b(this.a, b.a)).b).a((String) CollectionUtils.c(this.b));
    }
}

package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.aq;
import com.twitter.model.businessprofiles.as;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTweetList extends e<aq> {
    @JsonField
    public List<String> a;
    @JsonField
    public String b;

    public /* synthetic */ f c() {
        return a();
    }

    public as a() {
        return new as().a(this.a).a(this.b);
    }
}

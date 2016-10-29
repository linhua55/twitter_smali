package com.twitter.model.json.community;

import chn;
import cho;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.util.object.e;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonCommunitiesList extends f<chn> {
    @JsonField
    public List<cho> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public chn a() {
        return new chn(e.a(this.a));
    }
}

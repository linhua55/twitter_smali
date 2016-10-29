package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.stratostore.j;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTweetViewCountData extends f<j> {
    @JsonField
    public long a;

    public /* synthetic */ Object b() {
        return a();
    }

    public j a() {
        return new j(this.a);
    }
}

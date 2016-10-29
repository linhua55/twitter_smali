package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import cto;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonUploadAndMatchContactsResponse extends JsonUploadContactsResponse {
    @JsonField
    public List<JsonContactMatch> a;

    public List<TwitterUser> a() {
        if (CollectionUtils.b(this.a)) {
            return n.g();
        }
        return n.a(cto.a(this.a, new a(this)));
    }
}

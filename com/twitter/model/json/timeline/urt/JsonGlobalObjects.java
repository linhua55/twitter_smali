package com.twitter.model.json.timeline.urt;

import cnu;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cn;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.r;
import java.util.Map;

@JsonObject
/* compiled from: Twttr */
public class JsonGlobalObjects extends f<cnu> {
    @JsonField(name = {"tweets"})
    public Map<String, cn> a;
    @JsonField(name = {"users"})
    public Map<String, TwitterUser> b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cnu a() {
        Map e;
        if (this.a == null || this.b == null) {
            e = r.e();
        } else {
            e = CollectionUtils.b(this.a, new b(this));
        }
        return new cnu(e, r.a(this.b));
    }
}

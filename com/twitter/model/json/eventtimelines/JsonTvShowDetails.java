package com.twitter.model.json.eventtimelines;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTvShowDetails extends b {
    @JsonField
    public JsonTvShowHandleCollection a;
    @JsonField
    public JsonTvShowHashtagCollection b;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    class JsonTvShowHandleCollection extends b {
        @JsonField
        public List<JsonTvShowHandle> a;

        JsonTvShowHandleCollection() {
        }
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    class JsonTvShowHashtagCollection extends b {
        @JsonField
        public List<JsonTvShowHashtag> a;

        JsonTvShowHashtagCollection() {
        }
    }

    public String a() {
        if (this.b == null || this.b.a == null) {
            return null;
        }
        for (JsonTvShowHashtag jsonTvShowHashtag : this.b.a) {
            if ("PRIMARY".equalsIgnoreCase(jsonTvShowHashtag.b)) {
                return jsonTvShowHashtag.a;
            }
        }
        return null;
    }

    public List<String> b() {
        if (this.b == null || this.b.a == null) {
            return n.g();
        }
        n d = n.d();
        for (JsonTvShowHashtag jsonTvShowHashtag : this.b.a) {
            if (!"PRIMARY".equalsIgnoreCase(jsonTvShowHashtag.b)) {
                d.c(jsonTvShowHashtag.a);
            }
        }
        return (List) d.q();
    }

    public List<String> c() {
        if (this.a == null || this.a.a == null) {
            return n.g();
        }
        n d = n.d();
        for (JsonTvShowHandle jsonTvShowHandle : this.a.a) {
            if (aj.b(jsonTvShowHandle.a)) {
                d.c(jsonTvShowHandle.a);
            }
        }
        return (List) d.q();
    }
}

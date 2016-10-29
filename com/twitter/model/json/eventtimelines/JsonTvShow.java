package com.twitter.model.json.eventtimelines;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.eventtimelines.TvShow;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTvShow extends e<TvShow> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public JsonTvShowGenre c;
    @JsonField(name = {"_embedded"})
    public JsonTvShowDetails d;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    class JsonTvShowGenre extends b {
        @JsonField
        public String a;

        JsonTvShowGenre() {
        }
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    class JsonTvShowHandle extends b {
        @JsonField
        public String a;

        JsonTvShowHandle() {
        }
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    class JsonTvShowHashtag extends b {
        @JsonField
        public String a;
        @JsonField
        public String b;

        JsonTvShowHashtag() {
        }
    }

    public /* synthetic */ f c() {
        return a();
    }

    public com.twitter.model.eventtimelines.b a() {
        List list = null;
        com.twitter.model.eventtimelines.b a = new com.twitter.model.eventtimelines.b().a(this.a).a(this.b).b(this.c == null ? null : this.c.a).c(this.d == null ? null : this.d.a()).a(this.d == null ? null : this.d.b());
        if (this.d != null) {
            list = this.d.c();
        }
        return a.b(list);
    }
}

package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.cm;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.m;
import com.twitter.model.geo.n;
import com.twitter.model.geo.o;
import com.twitter.model.json.common.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonPlacePageResponse extends f<m> {
    @JsonField
    public n a;
    @JsonField
    public o b;
    @JsonField
    public o c;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonPlacePageHeader extends f<n> {
        @JsonField
        public TwitterPlace a;

        public /* synthetic */ Object b() {
            return a();
        }

        public n a() {
            if (this.a == null) {
                return null;
            }
            return new n(this.a);
        }
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonPlacePageTimeline extends f<o> {
        @JsonField
        public String a;
        @JsonField
        public List<cm> b;

        public /* synthetic */ Object b() {
            return a();
        }

        public o a() {
            if (this.a == null || this.b == null) {
                return null;
            }
            return new o(this.a, this.b);
        }
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public m a() {
        return new m(this.a, this.b, this.c);
    }
}

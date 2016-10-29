package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.geo.VendorInfo;
import com.twitter.model.geo.VendorInfo.YelpInfo;
import com.twitter.model.geo.VendorInfo.YelpInfo.YelpRating;
import com.twitter.model.geo.q;
import com.twitter.model.json.common.f;
import com.twitter.util.object.e;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonVendorInfo extends f<VendorInfo> {
    @JsonField
    public YelpInfo a;
    @JsonField
    public q b;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonFourSquareInfo extends f<q> {
        @JsonField
        public String a;

        public /* synthetic */ Object b() {
            return a();
        }

        public q a() {
            return new q(e.b(this.a));
        }
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonYelpInfo extends f<YelpInfo> {
        @JsonField
        public String a;
        @JsonField
        public String b;
        @JsonField
        public String c;
        @JsonField
        public int d;
        @JsonField
        public double e;

        public /* synthetic */ Object b() {
            return a();
        }

        public YelpInfo a() {
            return new YelpInfo(e.b(this.a), e.b(this.b), this.c, YelpRating.a(this.e), this.d);
        }
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public VendorInfo a() {
        return new VendorInfo(this.b, this.a);
    }
}

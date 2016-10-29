package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.timeline.a;
import com.twitter.model.timeline.l;
import com.twitter.model.timeline.p;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonRecap extends b {
    @JsonField(name = {"tweets"})
    public String[] a;
    @JsonField
    public JsonSuggestsInfo b;
    @JsonField
    public JsonStrings c;
    @JsonField
    public l d;
    @JsonField
    public JsonBanner e;
    @JsonField
    public p f;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonBanner extends b {
        @JsonField(name = {"tweets"})
        public Map<String, a> a;
    }
}

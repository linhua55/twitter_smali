package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
/* compiled from: Twttr */
public class JsonMonetizationCategories extends b {
    @JsonField
    public List<JsonMonetizationCategory> a;

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
    /* compiled from: Twttr */
    public class JsonMonetizationCategory extends b {
        @JsonField
        public Integer a;
        @JsonField
        public String b;
    }
}

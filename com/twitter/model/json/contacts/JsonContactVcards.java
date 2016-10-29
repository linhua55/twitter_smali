package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
/* compiled from: Twttr */
public class JsonContactVcards extends b {
    @JsonField
    public List<String> a;
}

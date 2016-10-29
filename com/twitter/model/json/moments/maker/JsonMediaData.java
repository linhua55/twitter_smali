package com.twitter.model.json.moments.maker;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.json.core.JsonMediaSize;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMediaData extends b {
    @JsonField
    public long a;
    @JsonField
    public JsonMediaSize b;
    @JsonField
    public List<JsonMakerCropData> c;
    @JsonField
    public boolean d;
}

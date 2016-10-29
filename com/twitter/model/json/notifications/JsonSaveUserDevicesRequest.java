package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSaveUserDevicesRequest extends JsonUserDevicesRequest {
    @JsonField
    public Boolean a;
    @JsonField
    public Integer b;
    @JsonField
    public Integer c;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonSettingsValues extends b {
        @JsonField
        public Map<String, String> a;
    }
}

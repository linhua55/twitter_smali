package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.av.VideoCta;
import com.twitter.model.av.VideoCtaType;
import com.twitter.model.json.common.b;
import com.twitter.util.collection.r;
import java.util.Map;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMediaCallToActions extends b {
    @JsonField
    public JsonMediaCallToAction a;
    @JsonField
    public JsonMediaCallToAction b;

    public VideoCta a() {
        r d = r.d();
        if (this.a != null) {
            d.b("url", this.a.a);
            return new VideoCta(VideoCtaType.WATCH_NOW, (Map) d.q());
        } else if (this.b == null) {
            return null;
        } else {
            d.b("url", this.b.a);
            return new VideoCta(VideoCtaType.OPEN_URL, (Map) d.q());
        }
    }
}

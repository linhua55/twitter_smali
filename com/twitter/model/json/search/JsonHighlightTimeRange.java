package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;

@JsonObject
/* compiled from: Twttr */
public class JsonHighlightTimeRange extends b {
    @JsonField
    public long a;
    @JsonField
    public long b;
}

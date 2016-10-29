package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;

@JsonObject
/* compiled from: Twttr */
public class JsonStrings extends b {
    @JsonField(name = {"header"})
    public String a;
    @JsonField(name = {"show_more"})
    public String b;
}

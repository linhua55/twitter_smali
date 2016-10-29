package com.twitter.model.json.timeline.wtf;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;
import com.twitter.model.json.timeline.JsonStrings;
import com.twitter.model.json.timeline.JsonSuggestsInfo;
import com.twitter.model.timeline.l;
import com.twitter.model.timeline.p;
import java.util.Collections;
import java.util.Map;

@JsonObject
/* compiled from: Twttr */
public class JsonWhoToFollow extends b {
    @JsonField(name = {"users"})
    public String[] a;
    @JsonField(name = {"tweets"})
    public Map<String, String> b;
    @JsonField(name = {"wtf_type"})
    public String c;
    @JsonField(name = {"social_proof"})
    public Map<String, JsonSocialProof> d;
    @JsonField(name = {"strings"})
    public JsonStrings e;
    @JsonField(name = {"suggests_info"})
    public JsonSuggestsInfo f;
    @JsonField(name = {"dismiss_info"})
    public l g;
    @JsonField(name = {"footer"})
    public p h;

    public JsonWhoToFollow() {
        this.a = new String[0];
        this.b = Collections.emptyMap();
        this.d = Collections.emptyMap();
    }
}

package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonInterestSelections extends b {
    @JsonField
    public List<JsonInterestSelection> a;
}

package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;

@JsonObject
/* compiled from: Twttr */
public class JsonInterestSelections$JsonInterest extends b {
    @JsonField
    public JsonInterestSelections$TaxonomyBasedInterest a;
    @JsonField
    public JsonInterestSelections$FreeFormInterest b;

    public JsonInterestSelections$JsonInterest(long j) {
        this.a = new JsonInterestSelections$TaxonomyBasedInterest();
        this.a.a = String.valueOf(j);
    }

    public JsonInterestSelections$JsonInterest(String str) {
        this.b = new JsonInterestSelections$FreeFormInterest();
        this.b.a = str;
    }
}

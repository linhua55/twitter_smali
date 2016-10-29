package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;
import com.twitter.model.stratostore.SourceLocation;

@JsonObject
/* compiled from: Twttr */
public class JsonInterestSelections$JsonInterestSelection extends b {
    @JsonField
    public JsonInterestSelections$JsonInterest a;
    @JsonField
    public SourceLocation b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public String f;

    public static JsonInterestSelections$JsonInterestSelection a(SourceLocation sourceLocation, String str, String str2, String str3, String str4) {
        JsonInterestSelections$JsonInterestSelection jsonInterestSelections$JsonInterestSelection = new JsonInterestSelections$JsonInterestSelection();
        jsonInterestSelections$JsonInterestSelection.b = sourceLocation;
        jsonInterestSelections$JsonInterestSelection.c = str;
        jsonInterestSelections$JsonInterestSelection.d = str2;
        jsonInterestSelections$JsonInterestSelection.f = str3;
        jsonInterestSelections$JsonInterestSelection.e = str4;
        return jsonInterestSelections$JsonInterestSelection;
    }
}

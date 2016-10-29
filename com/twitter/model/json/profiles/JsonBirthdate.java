package com.twitter.model.json.profiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;
import com.twitter.model.profile.ExtendedProfile.Visibility;

@JsonObject
/* compiled from: Twttr */
public class JsonBirthdate extends b {
    @JsonField
    public int a;
    @JsonField
    public int b;
    @JsonField
    public int c;
    @JsonField
    public Visibility d;
    @JsonField
    public Visibility e;
}

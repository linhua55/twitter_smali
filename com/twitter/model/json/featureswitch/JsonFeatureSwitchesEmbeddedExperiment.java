package com.twitter.model.json.featureswitch;

import bbn;
import cie;
import cig;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonFeatureSwitchesEmbeddedExperiment extends f<cie> {
    private static final DateFormat f;
    @JsonField
    public String a;
    @JsonField
    public int b;
    @JsonField
    public List<cig> c;
    @JsonField
    public String d;
    @JsonField
    public String e;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonFeatureSwitchesBucket extends f<cig> {
        @JsonField
        public String a;
        @JsonField
        public int b;

        public /* synthetic */ Object b() {
            return a();
        }

        public cig a() {
            if (this.a != null) {
                return new cig(this.a, this.b);
            }
            bbn.a(new InvalidJsonFormatException("Invalid embedded bucket"));
            return null;
        }
    }

    public /* synthetic */ Object b() {
        return a();
    }

    static {
        f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ZZZZ", Locale.US);
    }

    public cie a() {
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("Invalid embedded experiment name"));
            return null;
        }
        try {
            return new cie(this.a, this.b, ImmutableList.a(this.c), f.parse(this.d), f.parse(this.e));
        } catch (ParseException e) {
            bbn.a(new InvalidJsonFormatException("Invalid embedded experiment timeframe"));
            return null;
        }
    }
}

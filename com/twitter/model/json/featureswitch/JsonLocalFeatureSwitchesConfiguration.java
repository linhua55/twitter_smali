package com.twitter.model.json.featureswitch;

import bbn;
import cib;
import cic;
import cid;
import cie;
import cij;
import cin;
import cis;
import civ;
import cix;
import cje;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.e;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableSet;
import com.twitter.util.collection.r;
import java.util.List;
import java.util.Map;
import java.util.Set;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonLocalFeatureSwitchesConfiguration extends e<civ> {
    @JsonField(name = {"default"})
    public cid a;
    @JsonField
    public Set<String> b;
    @JsonField(name = {"experiment_names"})
    public Set<String> c;
    @JsonField
    public cic d;
    @JsonField
    public List<cie> e;
    @JsonField
    public cje f;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonFeatureSwitchesDebug extends f<cic> {
        @JsonField
        public List<cij> a;

        public /* synthetic */ Object b() {
            return a();
        }

        public cic a() {
            r d = r.d();
            if (this.a != null) {
                for (cij cij : this.a) {
                    d.b(cij.a, cij);
                }
            }
            return new cic((Map) d.q());
        }
    }

    @JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
    /* compiled from: Twttr */
    public class JsonFeatureSwitchesDefault extends f<cid> {
        @JsonField
        public cib a;
        @JsonField
        public Set<cin> b;
        @JsonField
        public String c;

        public /* synthetic */ Object b() {
            return a();
        }

        public cid a() {
            if (this.a != null) {
                return new cid(this.a, ImmutableSet.a(this.b), this.c);
            }
            bbn.a(new InvalidJsonFormatException("'config' does not exist in the manifest."));
            return null;
        }
    }

    public /* synthetic */ com.twitter.util.object.f c() {
        return a();
    }

    public cix a() {
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("'default' does not exist in manifest."));
            return new cix();
        }
        r d = r.d();
        if (this.e != null) {
            for (cie cie : this.e) {
                d.b(cie.b, cie);
            }
        }
        cis a = new cis().a(this.a.a.a).a(this.a.b);
        if (this.f != null) {
            a.a(this.f.b).b(this.f.c);
        }
        return new cix().a(a).a(this.a.c).a((Map) d.q()).a(ImmutableSet.a(this.b)).a(this.d != null ? this.d.a : r.e(), ImmutableSet.a(this.c));
    }
}

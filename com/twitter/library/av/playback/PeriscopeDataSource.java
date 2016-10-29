package com.twitter.library.av.playback;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import caw;
import com.twitter.library.api.periscope.PeriscopeCapiModel;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.card.property.Vector2F;
import com.twitter.model.core.Tweet;
import com.twitter.util.ab;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.bpx;
import defpackage.bqh;

/* compiled from: Twttr */
public class PeriscopeDataSource extends TweetAVDataSource {
    public static final Creator<PeriscopeDataSource> CREATOR;
    private final PeriscopeCapiModel c;
    private final Vector2F d;
    private final String e;

    static {
        CREATOR = new bv();
    }

    public PeriscopeDataSource(Parcel parcel) {
        super(parcel);
        this.c = (PeriscopeCapiModel) parcel.readParcelable(PeriscopeCapiModel.class.getClassLoader());
        this.e = parcel.readString();
        Vector2F vector2F = (Vector2F) ab.a(parcel, Vector2F.a);
        if (vector2F == null) {
            vector2F = Vector2F.b;
        }
        this.d = vector2F;
    }

    public PeriscopeDataSource(Tweet tweet, PeriscopeCapiModel periscopeCapiModel, Vector2F vector2F, String str) {
        super(tweet, null);
        this.c = periscopeCapiModel;
        this.d = vector2F;
        this.e = str;
    }

    public ImageSpec l() {
        ImageSpec imageSpec = new ImageSpec();
        imageSpec.d = this.d;
        if (this.c.f() != null) {
            imageSpec.c = this.c.f();
        } else if (!(this.b.aa() == null || this.b.aa().N() == null)) {
            imageSpec.c = caw.a("full_size_thumbnail_url", this.b.aa().N());
        }
        return imageSpec;
    }

    public PeriscopeCapiModel o() {
        return this.c;
    }

    public bpx f() {
        return new bqh(this.c, this.e, TelephonyUtil.i());
    }

    public String e() {
        throw new UnsupportedOperationException("getPlaylistUrl not supported for PeriscopeDataSource. Use getPlaylistFactory");
    }

    public float n() {
        return 1.0f;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.c, i);
        parcel.writeString(this.e);
        ab.a(parcel, this.d, Vector2F.a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (!super.equals(obj)) {
            return false;
        }
        PeriscopeDataSource periscopeDataSource = (PeriscopeDataSource) obj;
        if (this.c.equals(periscopeDataSource.c) && this.d.equals(periscopeDataSource.d) && this.e.equals(periscopeDataSource.e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((super.hashCode() * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode();
    }

    public cv i() {
        return new bw(this.b, this.e);
    }
}

package com.twitter.library.av.playback;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.model.av.Partner;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.card.property.Vector2F;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.MediaEntity.Type;
import com.twitter.model.core.Tweet;
import com.twitter.model.dms.x;
import com.twitter.util.ab;
import com.twitter.util.object.ObjectUtils;
import defpackage.bpx;
import defpackage.bpz;
import defpackage.bqe;
import java.util.Collections;
import java.util.Map;

/* compiled from: Twttr */
public class DMAVDataSource implements AVDataSource {
    public static final Creator<DMAVDataSource> CREATOR;
    private final String b;
    private final MediaEntity c;
    private final boolean d;

    static {
        CREATOR = new bi();
    }

    public DMAVDataSource(bm bmVar) {
        this(bmVar.a.bg_(), ((x) bmVar.a.n()).e);
    }

    private DMAVDataSource(Parcel parcel) {
        this(parcel.readString(), (MediaEntity) ab.a(parcel, MediaEntity.a));
    }

    private DMAVDataSource(String str, MediaEntity mediaEntity) {
        this.b = str;
        this.c = mediaEntity;
        this.d = d.a("gif_caching_enabled");
    }

    public String a() {
        return this.b;
    }

    public Tweet b() {
        return null;
    }

    public int c() {
        switch (bl.a[this.c.m.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return 3;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 0;
            default:
                return -1;
        }
    }

    public float n() {
        return this.c.n.e();
    }

    public boolean d() {
        return false;
    }

    public String e() {
        return be.a(this.c);
    }

    public bpx f() {
        if (this.d && Type.c.equals(this.c.m)) {
            return new bpz(this.c);
        }
        return new bqe(this.c);
    }

    public Map<String, String> g() {
        return Collections.emptyMap();
    }

    public Partner h() {
        return Partner.a;
    }

    public cv i() {
        return new bj(this);
    }

    public String j() {
        return be.b(this.c);
    }

    public boolean k() {
        return false;
    }

    public ImageSpec l() {
        ImageSpec imageSpec = new ImageSpec();
        imageSpec.c = this.c.l;
        imageSpec.d = new Vector2F((float) this.c.n.a(), (float) this.c.n.b());
        return imageSpec;
    }

    public boolean m() {
        return true;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        ab.a(parcel, this.c, MediaEntity.a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DMAVDataSource dMAVDataSource = (DMAVDataSource) obj;
        if (this.b == dMAVDataSource.b && ObjectUtils.a(this.c, dMAVDataSource.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode();
    }
}

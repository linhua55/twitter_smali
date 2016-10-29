package com.twitter.model.media;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import ckf;
import com.twitter.media.model.ImageFile;
import com.twitter.model.core.a;
import com.twitter.model.core.ag;
import com.twitter.model.core.bc;
import com.twitter.util.ab;
import com.twitter.util.math.c;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import defpackage.cto;
import java.util.List;

/* compiled from: Twttr */
public class EditableImage extends EditableMedia<ImageFile> implements a, bc {
    public static final Creator<EditableImage> CREATOR;
    public static final n<EditableImage> a;
    public boolean b;
    public int c;
    public float d;
    public int e;
    public c f;
    public List<ag> g;
    public List<ckf> h;
    public String i;

    static {
        a = d.a;
        CREATOR = new c();
    }

    public EditableImage(ImageFile imageFile, MediaSource mediaSource) {
        this(imageFile, imageFile.a(), mediaSource);
    }

    public EditableImage(ImageFile imageFile, Uri uri, MediaSource mediaSource) {
        super(imageFile, uri, mediaSource);
    }

    private EditableImage(EditableImage editableImage) {
        this((ImageFile) editableImage.k, editableImage.d(), editableImage.h());
        this.b = editableImage.b;
        this.c = editableImage.c;
        this.d = editableImage.d;
        this.e = editableImage.e;
        this.f = editableImage.f;
        this.g = com.twitter.util.collection.n.a(editableImage.g);
        this.h = com.twitter.util.collection.n.a(editableImage.h);
        this.i = editableImage.i;
    }

    public float bm_() {
        float e = ((ImageFile) this.k).e.e();
        if (this.e % 180 != 0) {
            e = 1.0f / e;
        }
        if (this.f == null || this.f.a()) {
            return e;
        }
        return e * (this.f.c() / this.f.d());
    }

    public EditableMedia c() {
        return new EditableImage(this);
    }

    public List<ag> b() {
        return e.a(this.g);
    }

    public String a() {
        return e.b(this.i);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof EditableImage) && a((EditableImage) obj));
    }

    public boolean a(EditableImage editableImage) {
        return this == editableImage || (editableImage != null && b(editableImage) && editableImage.b == this.b && editableImage.c == this.c && editableImage.d == this.d && ObjectUtils.a(editableImage.f, this.f) && editableImage.e == this.e && ObjectUtils.a(editableImage.g, this.g) && ObjectUtils.a(editableImage.i, this.i) && cto.b(editableImage.h, this.h));
    }

    public int hashCode() {
        return (((((((((((((((this.b ? 1 : 0) + (super.hashCode() * 31)) * 31) + this.c) * 31) + ObjectUtils.a(this.d)) * 31) + ObjectUtils.b(this.f)) * 31) + this.e) * 31) + ObjectUtils.a(this.g)) * 31) + ObjectUtils.b(this.i)) * 31) + ObjectUtils.a(this.h);
    }

    EditableImage(Parcel parcel) {
        super(parcel);
        this.b = parcel.readByte() != null;
        this.c = parcel.readInt();
        this.d = parcel.readFloat();
        this.f = (c) ab.a(parcel, c.a);
        this.e = parcel.readInt();
        this.g = (List) ab.a(parcel, s.a(ag.a));
        this.i = parcel.readString();
        this.h = (List) ab.a(parcel, s.a(ckf.a));
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.b ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.c);
        parcel.writeFloat(this.d);
        ab.a(parcel, this.f, c.a);
        parcel.writeInt(this.e);
        ab.a(parcel, this.g, s.a(ag.a));
        parcel.writeString(this.i);
        ab.a(parcel, this.h, s.a(ckf.a));
    }

    public boolean bn_() {
        return (this.c == 0 && !this.b && (this.f == null || this.f.b())) ? false : true;
    }
}

package com.twitter.model.drafts;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.model.core.ag;
import com.twitter.model.core.bc;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;
import com.twitter.model.media.foundmedia.f;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import defpackage.ctc;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public class DraftAttachment implements Parcelable, bc {
    public static final Creator<DraftAttachment> CREATOR;
    public static final n<DraftAttachment> a;
    public static final ctc<EditableMedia, DraftAttachment> b;
    public final int c;
    public final int d;
    public final Uri e;
    public final Uri f;
    public final MediaType g;
    public final MediaSource h;
    private final EditableMedia i;

    static {
        CREATOR = new a();
        a = c.a;
        b = new b();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public DraftAttachment(android.net.Uri r7, android.net.Uri r8, com.twitter.media.model.MediaType r9, com.twitter.model.media.MediaSource r10, com.twitter.model.media.EditableMedia r11) {
        /*
        r6 = this;
        r4 = 3;
        r3 = 2;
        r1 = 0;
        r2 = -1;
        r6.<init>();
        r0 = r8.getScheme();
        if (r0 != 0) goto L_0x0010;
    L_0x000d:
        r0 = "";
    L_0x0010:
        r5 = r0.hashCode();
        switch(r5) {
            case 3143036: goto L_0x004b;
            case 3213448: goto L_0x0035;
            case 99617003: goto L_0x0040;
            case 951530617: goto L_0x002a;
            default: goto L_0x0017;
        };
    L_0x0017:
        r0 = r2;
    L_0x0018:
        switch(r0) {
            case 0: goto L_0x0056;
            case 1: goto L_0x0059;
            case 2: goto L_0x0059;
            case 3: goto L_0x005c;
            default: goto L_0x001b;
        };
    L_0x001b:
        r6.c = r2;
    L_0x001d:
        r6.e = r7;
        r6.f = r8;
        r6.g = r9;
        r6.h = r10;
        r6.d = r1;
        r6.i = r11;
        return;
    L_0x002a:
        r5 = "content";
        r0 = r0.equals(r5);
        if (r0 == 0) goto L_0x0017;
    L_0x0033:
        r0 = r1;
        goto L_0x0018;
    L_0x0035:
        r5 = "http";
        r0 = r0.equals(r5);
        if (r0 == 0) goto L_0x0017;
    L_0x003e:
        r0 = 1;
        goto L_0x0018;
    L_0x0040:
        r5 = "https";
        r0 = r0.equals(r5);
        if (r0 == 0) goto L_0x0017;
    L_0x0049:
        r0 = r3;
        goto L_0x0018;
    L_0x004b:
        r5 = "file";
        r0 = r0.equals(r5);
        if (r0 == 0) goto L_0x0017;
    L_0x0054:
        r0 = r4;
        goto L_0x0018;
    L_0x0056:
        r6.c = r3;
        goto L_0x001d;
    L_0x0059:
        r6.c = r4;
        goto L_0x001d;
    L_0x005c:
        r0 = 4;
        r6.c = r0;
        goto L_0x001d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.model.drafts.DraftAttachment.<init>(android.net.Uri, android.net.Uri, com.twitter.media.model.MediaType, com.twitter.model.media.MediaSource, com.twitter.model.media.EditableMedia):void");
    }

    public DraftAttachment(f fVar, MediaFile mediaFile) {
        this.c = 3;
        this.e = Uri.parse(fVar.f);
        this.f = Uri.parse(fVar.h.b);
        this.g = MediaType.ANIMATED_GIF;
        this.h = new MediaSource(fVar.f, fVar.b, fVar.e);
        this.d = 0;
        this.i = mediaFile == null ? null : EditableMedia.a(mediaFile, this.e, this.h);
    }

    public DraftAttachment(EditableMedia editableMedia) {
        this(editableMedia, editableMedia.e(), 0);
    }

    public DraftAttachment(EditableMedia editableMedia, int i) {
        this(editableMedia, editableMedia.e(), i);
    }

    public DraftAttachment(EditableMedia editableMedia, Uri uri, int i) {
        this.c = 1;
        this.e = editableMedia.d();
        this.f = uri;
        this.g = editableMedia.g();
        this.h = editableMedia.h();
        this.d = i;
        this.i = editableMedia;
    }

    DraftAttachment(Parcel parcel) {
        this.c = parcel.readInt();
        this.e = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.g = MediaType.a(parcel.readInt());
        this.h = (MediaSource) parcel.readParcelable(MediaSource.class.getClassLoader());
        this.i = (EditableMedia) parcel.readParcelable(EditableMedia.class.getClassLoader());
        this.d = parcel.readInt();
    }

    DraftAttachment(p pVar, int i) throws IOException, ClassNotFoundException {
        this.c = pVar.e();
        this.e = Uri.parse(pVar.p());
        this.f = Uri.parse(pVar.p());
        this.g = MediaType.a(pVar.e());
        this.h = (MediaSource) pVar.b(MediaSource.a);
        this.i = (EditableMedia) pVar.a(EditableMedia.j);
        this.d = i >= 1 ? pVar.e() : 0;
    }

    public EditableMedia a(int i) {
        if ((i & 1) != 0) {
            return this.i;
        }
        if ((i & 2) != 0) {
            return this.c == 1 ? this.i : null;
        } else {
            throw new IllegalArgumentException("invalid media selection");
        }
    }

    public boolean b(int i) {
        return a(i) != null;
    }

    public List<ag> b() {
        return this.i instanceof bc ? ((bc) this.i).b() : com.twitter.util.collection.n.g();
    }

    public void a(DraftAttachment draftAttachment) {
        if (this.i != null) {
            if (draftAttachment == null || draftAttachment.i == null || !this.i.a(draftAttachment.i)) {
                this.i.i();
            }
        }
    }

    public j<Boolean> b(DraftAttachment draftAttachment) {
        if (this.i == null) {
            return ObservablePromise.a(Boolean.valueOf(false));
        }
        if (draftAttachment == null || draftAttachment.i == null || !this.i.a(draftAttachment.i)) {
            return this.i.j();
        }
        return ObservablePromise.a(Boolean.valueOf(false));
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        DraftAttachment draftAttachment = (DraftAttachment) obj;
        if (this.c == draftAttachment.c && this.e.equals(draftAttachment.e) && ObjectUtils.a(this.i, draftAttachment.i)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.c * 31) + this.e.hashCode()) * 31) + ObjectUtils.b(this.i);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.c);
        parcel.writeParcelable(this.e, i);
        parcel.writeParcelable(this.f, i);
        parcel.writeInt(this.g.typeId);
        parcel.writeParcelable(this.h, i);
        parcel.writeParcelable(this.i, i);
        parcel.writeInt(this.d);
    }

    void a(q qVar) throws IOException {
        qVar.e(this.c);
        qVar.b(this.e.toString());
        qVar.b(this.f.toString());
        qVar.e(this.g.typeId);
        qVar.a(this.h, MediaSource.a);
        qVar.a(this.i, EditableMedia.j);
        qVar.e(this.d);
    }
}

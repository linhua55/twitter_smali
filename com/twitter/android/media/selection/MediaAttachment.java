package com.twitter.android.media.selection;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.android.media.selection.AttachMediaListener.MediaAttachFailure;
import com.twitter.media.model.MediaType;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;

/* compiled from: Twttr */
public class MediaAttachment implements Parcelable {
    public static final Creator<MediaAttachment> CREATOR;
    public final int a;
    public final MediaAttachFailure b;
    private final DraftAttachment c;

    static {
        CREATOR = new a();
    }

    public MediaAttachment(DraftAttachment draftAttachment) {
        this.c = draftAttachment;
        this.b = MediaAttachFailure.NONE;
        this.a = draftAttachment.c == 1 ? 0 : 3;
    }

    MediaAttachment(DraftAttachment draftAttachment, int i, MediaAttachFailure mediaAttachFailure) {
        this.c = draftAttachment;
        this.a = i;
        this.b = mediaAttachFailure;
    }

    MediaAttachment(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = MediaAttachFailure.values()[parcel.readInt()];
        this.c = (DraftAttachment) parcel.readParcelable(DraftAttachment.class.getClassLoader());
    }

    public Uri a() {
        return this.c.e;
    }

    public MediaType b() {
        return this.c.g;
    }

    public MediaSource c() {
        return this.c.h;
    }

    public EditableMedia a(int i) {
        return this.c.a(i);
    }

    public boolean b(int i) {
        return this.c.b(i);
    }

    public DraftAttachment d() {
        return this.c;
    }

    public void a(MediaAttachment mediaAttachment) {
        this.c.b(mediaAttachment == null ? null : mediaAttachment.c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MediaAttachment mediaAttachment = (MediaAttachment) obj;
        if (this.a == mediaAttachment.a && this.b == mediaAttachment.b && this.c.equals(mediaAttachment.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.c.hashCode() * 31) + this.b.hashCode()) * 31) + this.a;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b.ordinal());
        parcel.writeParcelable(this.c, i);
    }
}

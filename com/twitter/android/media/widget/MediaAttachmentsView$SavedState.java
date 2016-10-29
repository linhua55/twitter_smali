package com.twitter.android.media.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;
import com.twitter.model.media.EditableImage;

/* compiled from: Twttr */
class MediaAttachmentsView$SavedState extends BaseSavedState {
    public static final Creator<MediaAttachmentsView$SavedState> CREATOR;
    EditableImage a;

    static {
        CREATOR = new bd();
    }

    MediaAttachmentsView$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    MediaAttachmentsView$SavedState(Parcel parcel) {
        super(parcel);
        this.a = (EditableImage) parcel.readParcelable(EditableImage.class.getClassLoader());
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.a, i);
    }
}

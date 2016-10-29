package com.twitter.android.profilecompletionmodule.chooseheader;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.model.media.EditableImage;

/* compiled from: Twttr */
public class ChooseHeaderState implements Parcelable {
    public static final Creator<ChooseHeaderState> CREATOR;
    public String a;
    public EditableImage b;

    static {
        CREATOR = new f();
    }

    protected ChooseHeaderState(Parcel parcel) {
        this.a = parcel.readString();
        this.b = (EditableImage) parcel.readParcelable(EditableImage.class.getClassLoader());
    }

    public ChooseHeaderState(EditableImage editableImage, String str) {
        this.b = editableImage;
        this.a = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeParcelable(this.b, i);
    }
}

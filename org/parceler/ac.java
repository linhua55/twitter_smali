package org.parceler;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.parceler.NonParcelRepository.IBinderParcelable;

/* compiled from: Twttr */
final class ac implements Creator<IBinderParcelable> {
    private ac() {
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }

    public IBinderParcelable a(Parcel parcel) {
        return new IBinderParcelable(parcel);
    }

    public IBinderParcelable[] a(int i) {
        return new IBinderParcelable[i];
    }
}

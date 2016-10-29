package com.twitter.app.common.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class StateSaver<T> implements Parcelable {
    private static final StateSaver a;

    /* compiled from: Twttr */
    class Empty extends StateSaver {
        public static final Creator<Empty> CREATOR;

        static {
            CREATOR = new x();
        }

        Empty() {
        }

        public void a(Object obj) {
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
        }
    }

    public abstract void a(T t);

    static {
        a = new Empty();
    }

    public static <T> StateSaver<T> a() {
        return (StateSaver) ObjectUtils.a(a);
    }
}

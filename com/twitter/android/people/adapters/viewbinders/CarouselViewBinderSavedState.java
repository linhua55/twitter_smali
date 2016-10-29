package com.twitter.android.people.adapters.viewbinders;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import aoa;
import com.twitter.android.people.adapters.m;
import com.twitter.android.widget.l;
import com.twitter.app.common.util.BaseStateSaver;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import defpackage.apx;
import java.io.IOException;
import java.util.Map;

@aoa
/* compiled from: Twttr */
public class CarouselViewBinderSavedState<OBJ extends h<T, A, C>, T, A extends l<T>, C extends m<T>> extends BaseStateSaver<OBJ> {
    public static final Creator CREATOR;

    static {
        CREATOR = new l();
    }

    public CarouselViewBinderSavedState(OBJ obj) {
        super((Object) obj);
    }

    protected CarouselViewBinderSavedState(Parcel parcel) {
        super(parcel);
    }

    protected void a(q qVar, OBJ obj) throws IOException {
        super.a(qVar, (Object) obj);
        qVar.a(obj.b, apx.a);
    }

    protected OBJ a(p pVar, OBJ obj) throws IOException, ClassNotFoundException {
        h hVar = (h) super.a(pVar, (Object) obj);
        hVar.b = (Map) pVar.a(apx.a);
        return hVar;
    }
}

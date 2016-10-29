package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class StreetViewPanoramaView extends FrameLayout {
    private final y a;
    private v b;

    public StreetViewPanoramaView(Context context) {
        super(context);
        this.a = new y(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new y(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new y(this, context, null);
    }

    @Deprecated
    public final v getStreetViewPanorama() {
        if (this.b != null) {
            return this.b;
        }
        this.a.g();
        if (this.a.a() == null) {
            return null;
        }
        try {
            this.b = new v(((w) this.a.a()).f().a());
            return this.b;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}

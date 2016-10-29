package com.twitter.library.scribe;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.fasterxml.jackson.core.JsonGenerator;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.object.ObjectUtils;
import java.io.IOException;

/* compiled from: Twttr */
public class NativeCardUserAction implements Parcelable {
    public static final Creator<NativeCardUserAction> CREATOR;
    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private String f;
    private String g;
    private int h;

    static {
        CREATOR = new r();
    }

    public static NativeCardUserAction a(View view, View view2, MotionEvent motionEvent, int i) {
        return motionEvent == null ? null : new NativeCardUserAction(view, view2, motionEvent, i);
    }

    private NativeCardUserAction(View view, View view2, MotionEvent motionEvent, int i) {
        this.a = -1;
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.h = -1;
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        this.a = (int) (motionEvent.getRawX() - ((float) iArr[0]));
        this.b = (int) (motionEvent.getRawY() - ((float) iArr[1]));
        this.c = view.getWidth();
        this.d = view.getHeight();
        this.h = i;
        Object tag = view2.getTag();
        if (tag instanceof String) {
            this.f = (String) tag;
        }
        if (view2 instanceof MediaImageView) {
            String a;
            this.e = 1;
            a imageRequest = ((MediaImageView) view2).getImageRequest();
            if (imageRequest != null) {
                a = imageRequest.a();
            } else {
                a = null;
            }
            this.g = a;
        } else if (view2 instanceof Button) {
            this.e = 4;
            this.g = ((Button) view2).getText().toString();
        } else if (view2 instanceof TextView) {
            this.e = 2;
            this.g = ((TextView) view2).getText().toString();
        } else if (view2 instanceof VideoPlayerView) {
            this.e = 5;
            this.g = ((VideoPlayerView) view2).getCurrentMediaSource();
        } else if (view2 instanceof ViewGroup) {
            this.e = 0;
        }
    }

    public NativeCardUserAction(Parcel parcel) {
        this.a = -1;
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.h = -1;
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeInt(this.h);
    }

    public void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.a("x_coord", this.a);
        jsonGenerator.a("y_coord", this.b);
        jsonGenerator.a("width", this.c);
        jsonGenerator.a("height", this.d);
        jsonGenerator.a("card_elements");
        jsonGenerator.a();
        jsonGenerator.c();
        jsonGenerator.a("element_type", this.e);
        if (this.f != null) {
            jsonGenerator.a("element_name", this.f);
        }
        if (this.g != null) {
            jsonGenerator.a("element_value", this.g);
        }
        jsonGenerator.d();
        jsonGenerator.b();
        jsonGenerator.a("action_type", this.h);
        jsonGenerator.d();
    }

    public String toString() {
        return "NativeCardUserAction{mXCoord=" + this.a + ", mYCoord=" + this.b + ", mCardWidth=" + this.c + ", mCardHeight=" + this.d + ", mElementType=" + this.e + ", mElementName='" + this.f + '\'' + ", mElementValue='" + this.g + '\'' + ", mActionType=" + this.h + '}';
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && (obj instanceof NativeCardUserAction) && a((NativeCardUserAction) obj));
    }

    public boolean a(NativeCardUserAction nativeCardUserAction) {
        return this == nativeCardUserAction || (nativeCardUserAction != null && this.h == nativeCardUserAction.h && this.d == nativeCardUserAction.d && this.c == nativeCardUserAction.c && this.e == nativeCardUserAction.e && this.a == nativeCardUserAction.a && this.b == nativeCardUserAction.b && ObjectUtils.a(this.f, nativeCardUserAction.f) && ObjectUtils.a(this.g, nativeCardUserAction.g));
    }

    public int hashCode() {
        return (((((((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.h;
    }
}

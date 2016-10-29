package com.twitter.android.widget.tweet.content.utils;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;

/* compiled from: Twttr */
public class MutableForegroundColorSpan extends ForegroundColorSpan {
    static final Creator<MutableForegroundColorSpan> a;
    private int b;

    static {
        a = new a();
    }

    public MutableForegroundColorSpan(Parcel parcel) {
        super(parcel);
        this.b = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.b);
    }

    public void updateDrawState(TextPaint textPaint) {
        textPaint.setColor(getForegroundColor());
    }

    public int getForegroundColor() {
        return this.b;
    }
}

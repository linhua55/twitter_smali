package android.support.v4.widget;

import android.support.annotation.NonNull;
import android.support.annotation.StyleRes;
import android.widget.TextView;

/* compiled from: Twttr */
class TextViewCompatApi23 {
    TextViewCompatApi23() {
    }

    public static void setTextAppearance(@NonNull TextView textView, @StyleRes int i) {
        textView.setTextAppearance(i);
    }
}

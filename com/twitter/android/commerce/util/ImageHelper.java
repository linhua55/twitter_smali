package com.twitter.android.commerce.util;

import android.content.Context;
import android.util.TypedValue;
import com.twitter.library.commerce.model.CreditCard.Type;
import java.util.Collections;
import java.util.Map;

/* compiled from: Twttr */
public class ImageHelper {
    private static final Map<Type, Image> a;

    /* compiled from: Twttr */
    public class Image {
        private final int a;
        private final int b;
        private final AnimationType c;

        public int a() {
            return this.a;
        }

        public int b() {
            return this.b;
        }

        public AnimationType c() {
            return this.c;
        }

        public Image(int i, int i2, AnimationType animationType) {
            this.a = i;
            this.b = i2;
            this.c = animationType;
        }

        public Image(int i, int i2) {
            this(i, i2, AnimationType.b);
        }
    }

    static {
        a = Collections.unmodifiableMap(new 1());
    }

    public static Image a(Type type) {
        return (Image) a.get(type);
    }

    public static int a(int i, Context context) {
        return (int) TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
    }
}

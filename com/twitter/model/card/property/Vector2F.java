package com.twitter.model.card.property;

import android.graphics.PointF;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class Vector2F extends PointF {
    public static final n<Vector2F> a;
    public static final Vector2F b;

    static {
        a = new d();
        b = a();
    }

    public static Vector2F a() {
        return new Vector2F(0.0f, 0.0f);
    }

    public Vector2F(float f, float f2) {
        super(f, f2);
    }

    public Size b() {
        return Size.a(this.x, this.y);
    }

    public String toString() {
        return "(" + this.x + ", " + this.y + ")";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Vector2F)) {
            return false;
        }
        Vector2F vector2F = (Vector2F) obj;
        if (Float.compare(vector2F.x, this.x) == 0 && Float.compare(vector2F.y, this.y) == 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (ObjectUtils.a(this.x) * 31) + ObjectUtils.a(this.y);
    }
}

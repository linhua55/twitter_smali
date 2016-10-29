package com.twitter.model.card.property;

import android.graphics.Point;

/* compiled from: Twttr */
public class Vector2 extends Point {
    public void set(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Vector2)) {
            return false;
        }
        Vector2 vector2 = (Vector2) obj;
        if (this.x == vector2.x && this.y == vector2.y) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.x * 31) + this.y;
    }
}

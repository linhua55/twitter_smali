package com.twitter.util.units;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class Unit<Type extends Unit, NormalizedUnit extends Type> extends Number implements Comparable<Unit<Type, NormalizedUnit>> {
    private static final long serialVersionUID = 5518805907731014561L;
    private final double mValue;

    public abstract NormalizedUnit a();

    public /* synthetic */ int compareTo(Object obj) {
        return a((Unit) obj);
    }

    protected Unit(double d) {
        this.mValue = d;
    }

    protected Unit(Unit<Type, NormalizedUnit> unit) {
        this.mValue = (unit.a().doubleValue() / a().doubleValue()) * unit.doubleValue();
    }

    public double doubleValue() {
        return this.mValue;
    }

    public float floatValue() {
        return (float) this.mValue;
    }

    public int intValue() {
        return (int) this.mValue;
    }

    public long longValue() {
        return (long) this.mValue;
    }

    public int a(Unit<Type, NormalizedUnit> unit) {
        return Double.valueOf(doubleValue() * a().doubleValue()).compareTo(Double.valueOf(unit.doubleValue() * unit.a().doubleValue()));
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj != null) {
            try {
                if (a((Unit) ObjectUtils.a(obj)) == 0) {
                    z = true;
                    return z;
                }
            } catch (ClassCastException e) {
                return false;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        return Double.valueOf(this.mValue).hashCode();
    }
}

package com.twitter.util.units.data;

import com.twitter.util.units.Unit;

/* compiled from: Twttr */
public abstract class Data extends Unit<Data, Bytes> {
    private static final long serialVersionUID = -2293899907199703923L;

    protected Data(double d) {
        super(d);
    }

    protected Data(Data data) {
        super((Unit) data);
    }
}

package com.twitter.library.commerce.model;

/* compiled from: Twttr */
public enum ShippingType {
    UNKNOWN(-1),
    CALCULATED(1),
    INCLUDED_IN_PRICE(2);
    
    private final int mValue;

    private ShippingType(int i) {
        this.mValue = i;
    }

    public int a() {
        return this.mValue;
    }

    public static ShippingType a(int i) {
        for (ShippingType shippingType : values()) {
            if (shippingType.ordinal() == i) {
                return shippingType;
            }
        }
        return UNKNOWN;
    }

    public static ShippingType a(String str) {
        if (str == null) {
            return UNKNOWN;
        }
        try {
            return valueOf(str);
        } catch (IllegalArgumentException e) {
            return UNKNOWN;
        }
    }
}

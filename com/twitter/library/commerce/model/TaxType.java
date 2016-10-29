package com.twitter.library.commerce.model;

/* compiled from: Twttr */
public enum TaxType {
    UNKNOWN(-1),
    CALCULATED(1),
    INCLUDED_IN_PRICE(2),
    ESTIMATED(3);
    
    private final int mValue;

    private TaxType(int i) {
        this.mValue = i;
    }

    public int a() {
        return this.mValue;
    }

    public static TaxType a(int i) {
        for (TaxType taxType : values()) {
            if (taxType.ordinal() == i) {
                return taxType;
            }
        }
        return UNKNOWN;
    }

    public static TaxType a(String str) {
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

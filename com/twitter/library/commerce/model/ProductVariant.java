package com.twitter.library.commerce.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.math.BigDecimal;

/* compiled from: Twttr */
public class ProductVariant implements Parcelable {
    public static final Creator<ProductVariant> CREATOR;
    private String a;
    private int b;
    private BigDecimal c;
    private String d;
    private BigDecimal e;
    private String f;
    private ShippingType g;
    private BigDecimal h;
    private String i;
    private TaxType j;

    static {
        CREATOR = new al();
    }

    private ProductVariant(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readInt();
        this.c = new BigDecimal(parcel.readString());
        this.d = parcel.readString();
        this.e = new BigDecimal(parcel.readString());
        this.f = parcel.readString();
        this.g = ShippingType.a(parcel.readInt());
        this.h = new BigDecimal(parcel.readString());
        this.i = parcel.readString();
        this.j = TaxType.a(parcel.readInt());
    }

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public int b() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }

    public BigDecimal c() {
        return this.c;
    }

    public void a(BigDecimal bigDecimal) {
        this.c = bigDecimal;
    }

    public String d() {
        return this.d;
    }

    public void b(String str) {
        this.d = str;
    }

    public BigDecimal e() {
        return this.e;
    }

    public void b(BigDecimal bigDecimal) {
        this.e = bigDecimal;
    }

    public void c(String str) {
        this.f = str;
    }

    public ShippingType f() {
        return this.g;
    }

    public void a(ShippingType shippingType) {
        this.g = shippingType;
    }

    public BigDecimal g() {
        return this.h;
    }

    public void c(BigDecimal bigDecimal) {
        this.h = bigDecimal;
    }

    public void d(String str) {
        this.i = str;
    }

    public TaxType h() {
        return this.j;
    }

    public void a(TaxType taxType) {
        this.j = taxType;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeString(this.c.toString());
        parcel.writeString(this.d);
        parcel.writeString(this.e.toString());
        parcel.writeString(this.f);
        parcel.writeInt(this.g.a());
        parcel.writeString(this.h.toString());
        parcel.writeString(this.i);
        parcel.writeInt(this.j.a());
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductVariant)) {
            return false;
        }
        ProductVariant productVariant = (ProductVariant) obj;
        if (this.b != productVariant.b) {
            return false;
        }
        if (this.a != null) {
            if (!this.a.equals(productVariant.a)) {
                return false;
            }
        } else if (productVariant.a != null) {
            return false;
        }
        if (this.c != null) {
            if (!this.c.equals(productVariant.c)) {
                return false;
            }
        } else if (productVariant.c != null) {
            return false;
        }
        if (this.d != null) {
            if (!this.d.equals(productVariant.d)) {
                return false;
            }
        } else if (productVariant.d != null) {
            return false;
        }
        if (this.f != null) {
            if (!this.f.equals(productVariant.f)) {
                return false;
            }
        } else if (productVariant.f != null) {
            return false;
        }
        if (this.e != null) {
            if (!this.e.equals(productVariant.e)) {
                return false;
            }
        } else if (productVariant.e != null) {
            return false;
        }
        if (this.g != productVariant.g) {
            return false;
        }
        if (this.h != null) {
            if (!this.h.equals(productVariant.h)) {
                return false;
            }
        } else if (productVariant.h != null) {
            return false;
        }
        if (this.i != null) {
            if (!this.i.equals(productVariant.i)) {
                return false;
            }
        } else if (productVariant.i != null) {
            return false;
        }
        if (this.j != productVariant.j) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = (((this.a != null ? this.a.hashCode() : 0) * 31) + this.b) * 31;
        if (this.c != null) {
            hashCode = this.c.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.d != null) {
            hashCode = this.d.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.e != null) {
            hashCode = this.e.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.f != null) {
            hashCode = this.f.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.g != null) {
            hashCode = this.g.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.h != null) {
            hashCode = this.h.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.i != null) {
            hashCode = this.i.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (this.j != null) {
            i = this.j.hashCode();
        }
        return hashCode + i;
    }
}

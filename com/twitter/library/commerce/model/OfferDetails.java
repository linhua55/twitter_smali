package com.twitter.library.commerce.model;

import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class OfferDetails {
    public static final n<OfferDetails> a;
    private String b;
    private boolean c;
    private long d;
    private long e;
    private OfferStatus f;
    private List<Type> g;

    /* compiled from: Twttr */
    public enum OfferStatus {
        UNKNOWN,
        AVAILABLE,
        SAVED,
        REDEEMED,
        EXPIRED,
        INACTIVE
    }

    static {
        a = new q(null);
    }

    public OfferDetails() {
        this.f = OfferStatus.UNKNOWN;
    }

    public String a() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public boolean b() {
        return this.c;
    }

    public void a(boolean z) {
        this.c = z;
    }

    public long c() {
        return this.d;
    }

    public void a(long j) {
        this.d = j;
    }

    public long d() {
        return this.e;
    }

    public void b(long j) {
        this.e = j;
    }

    public OfferStatus e() {
        return this.f;
    }

    public void a(OfferStatus offerStatus) {
        this.f = offerStatus;
    }

    public List<Type> f() {
        return this.g;
    }

    public void a(List<Type> list) {
        this.g = list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OfferDetails)) {
            return false;
        }
        OfferDetails offerDetails = (OfferDetails) obj;
        if (this.d == offerDetails.d && this.e == offerDetails.e && this.c == offerDetails.c && ObjectUtils.a(this.b, offerDetails.b) && this.f == offerDetails.f && ObjectUtils.a(this.g, offerDetails.g)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((ObjectUtils.b(this.b) * 31) + ObjectUtils.a(this.c)) * 31) + ObjectUtils.a(this.d)) * 31) + ObjectUtils.a(this.e);
    }
}

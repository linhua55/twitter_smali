package com.twitter.library.commerce.model;

import android.content.Context;
import bdc;
import com.twitter.android.mx;
import com.twitter.util.aj;
import com.twitter.util.serialization.l;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.regex.Pattern;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class CreditCard {
    public static final n<CreditCard> d;
    private String a;
    private String b;
    private Integer c;
    private Integer e;
    private a f;
    private String g;
    private boolean h;
    private boolean i;
    private boolean j;

    /* compiled from: Twttr */
    public enum Type {
        INVALID(null, null, 3),
        VISA("^4(([0-9]{15})|([0-9]{12}))?", "^4[0-9]{3}?", 3),
        MASTERCARD("^5[1-5][0-9]{14}$", "^5[1-5][0-9]{2}$", 3),
        AMEX("^3[47][0-9]{13}$", "^3[47][0-9]{2}$", 4),
        DISCOVER("^6(?:011|5[0-9]{2})[0-9]{12}$", "^6(?:011|5[0-9]{2})$", 3),
        DINERS("^3(?:0[0-5]|[68][0-9])[0-9]{11}$", "^3(?:0[0-5]|[68][0-9])[0-9]$", 3),
        JCB("^(?:2131|1800|2100|35\\d{3})\\d{11}$", "^(?:2131|1800|2100|35\\d{2})$", 3);
        
        private final int mCCVDigits;
        private final String mFullValidationRegex;
        private final String mPartialValidationRegex;

        private Type(String str, String str2, int i) {
            this.mPartialValidationRegex = str2;
            this.mFullValidationRegex = str;
            this.mCCVDigits = i;
        }

        protected String a() {
            return this.mFullValidationRegex;
        }

        protected String b() {
            return this.mPartialValidationRegex;
        }

        public boolean a(String str) {
            if (aj.a((CharSequence) str) || str.length() < 4) {
                return false;
            }
            String b = b();
            if (b != null) {
                return Pattern.compile(b).matcher(str.substring(0, 4)).matches();
            }
            return false;
        }

        public static boolean b(String str) {
            boolean z = true;
            if (str == null) {
                return false;
            }
            try {
                int length = str.length() - 1;
                boolean z2 = false;
                int i = 0;
                while (length >= 0) {
                    boolean z3;
                    int parseInt = Integer.parseInt(str.substring(length, length + 1));
                    if (z2) {
                        parseInt *= 2;
                        if (parseInt > 9) {
                            parseInt -= 9;
                        }
                    }
                    i += parseInt;
                    if (z2) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    length--;
                    z2 = z3;
                }
                if (i % 10 != 0) {
                    z = false;
                }
                return z;
            } catch (NumberFormatException e) {
                return false;
            }
        }

        public int c() {
            return this.mCCVDigits;
        }

        public static int c(String str) {
            return e(str).mCCVDigits;
        }

        public boolean d(String str) {
            if (str == null) {
                return false;
            }
            String a = a();
            if (a != null && Pattern.compile(a).matcher(str).matches() && b(str)) {
                return true;
            }
            return false;
        }

        public static Type e(String str) {
            for (Type type : values()) {
                if (type.a(str)) {
                    return type;
                }
            }
            return INVALID;
        }

        public static Type f(String str) {
            String toUpperCase = str.toUpperCase();
            Object obj = -1;
            switch (toUpperCase.hashCode()) {
                case -1553624974:
                    if (toUpperCase.equals("MASTERCARD")) {
                        obj = 1;
                        break;
                    }
                    break;
                case 73257:
                    if (toUpperCase.equals("JCB")) {
                        obj = 5;
                        break;
                    }
                    break;
                case 2012639:
                    if (toUpperCase.equals("AMEX")) {
                        obj = 2;
                        break;
                    }
                    break;
                case 2634817:
                    if (toUpperCase.equals("VISA")) {
                        obj = null;
                        break;
                    }
                    break;
                case 1055811561:
                    if (toUpperCase.equals("DISCOVER")) {
                        obj = 3;
                        break;
                    }
                    break;
                case 2016591933:
                    if (toUpperCase.equals("DINERS")) {
                        obj = 4;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case mx.View_android_theme /*0*/:
                    return VISA;
                case WireMessage.WIRE_CHAT /*1*/:
                    return MASTERCARD;
                case WireMessage.WIRE_CONTROL /*2*/:
                    return AMEX;
                case WireMessage.WIRE_AUTH /*3*/:
                    return DISCOVER;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    return DINERS;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    return JCB;
                default:
                    return INVALID;
            }
        }

        public static String a(Context context, Type type) {
            switch (k.a[type.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    return context.getString(bdc.commerce_cc_amex);
                case WireMessage.WIRE_CONTROL /*2*/:
                    return context.getString(bdc.commerce_cc_visa);
                case WireMessage.WIRE_AUTH /*3*/:
                    return context.getString(bdc.commerce_cc_mastercard);
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    return context.getString(bdc.commerce_cc_jcb);
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    return context.getString(bdc.commerce_cc_diners);
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    return context.getString(bdc.commerce_cc_discover);
                default:
                    return null;
            }
        }
    }

    public abstract Type a();

    public abstract String b();

    static {
        d = s.a(l.a(ap.class, aq.a), l.a(f.class, h.a));
    }

    protected CreditCard() {
    }

    public List<Integer> c() {
        ArrayList arrayList = new ArrayList();
        if (j() == null) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_card_month_empty));
        } else if (j().intValue() < 1 || j().intValue() > 12) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_card_month));
        }
        if (k() == null) {
            arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_card_year_empty));
        } else {
            int i = Calendar.getInstance().get(1);
            int i2 = Calendar.getInstance().get(2) + 1;
            if (k().intValue() < i) {
                arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_card_year));
            } else if (k().intValue() == i && j().intValue() < i2) {
                arrayList.add(Integer.valueOf(bdc.commerce_error_invalid_card_expired));
            }
        }
        return arrayList;
    }

    public String toString() {
        if (aj.b(this.b)) {
            return this.b;
        }
        String str;
        switch (k.a[a().ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                str = "AMEX";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                str = "VISA";
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                str = "MASTERCARD";
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                str = "JCB";
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                str = "DINERS";
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                str = "DISCOVER";
                break;
            default:
                str = "CARD";
                break;
        }
        return str + " ending in " + b();
    }

    public String i() {
        return this.a;
    }

    public void d(String str) {
        this.a = str;
    }

    public Integer j() {
        return this.c;
    }

    public void a(Integer num) {
        this.c = num;
    }

    public Integer k() {
        return this.e;
    }

    public void b(Integer num) {
        this.e = num;
    }

    public a l() {
        return this.f;
    }

    public void a(a aVar) {
        this.f = aVar;
    }

    public String m() {
        return this.b;
    }

    public void e(String str) {
        this.b = str;
    }

    public boolean n() {
        return this.h;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public boolean o() {
        return this.i;
    }

    public void b(boolean z) {
        this.i = z;
    }

    public boolean p() {
        return this.j;
    }

    public void c(boolean z) {
        this.j = z;
    }

    public String q() {
        return this.g;
    }

    public void f(String str) {
        this.g = str;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CreditCard)) {
            return false;
        }
        CreditCard creditCard = (CreditCard) obj;
        if (this.h != creditCard.h) {
            return false;
        }
        if (this.f != null) {
            if (!this.f.equals(creditCard.f)) {
                return false;
            }
        } else if (creditCard.f != null) {
            return false;
        }
        if (this.g != null) {
            if (!this.g.equals(creditCard.g)) {
                return false;
            }
        } else if (creditCard.g != null) {
            return false;
        }
        if (this.b != null) {
            if (!this.b.equals(creditCard.b)) {
                return false;
            }
        } else if (creditCard.b != null) {
            return false;
        }
        if (this.a != null) {
            if (!this.a.equals(creditCard.a)) {
                return false;
            }
        } else if (creditCard.a != null) {
            return false;
        }
        if (this.c != null) {
            if (!this.c.equals(creditCard.c)) {
                return false;
            }
        } else if (creditCard.c != null) {
            return false;
        }
        if (this.e != null) {
            z = this.e.equals(creditCard.e);
        } else if (creditCard.e != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        int hashCode2 = (this.a != null ? this.a.hashCode() : 0) * 31;
        if (this.b != null) {
            hashCode = this.b.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.c != null) {
            hashCode = this.c.hashCode();
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
        hashCode = (hashCode + hashCode2) * 31;
        if (this.h) {
            i = 1;
        }
        return hashCode + i;
    }

    public static boolean a(CreditCard creditCard, List<Type> list) {
        if (list == null || list.size() <= 0) {
            return creditCard.a() != Type.INVALID;
        } else {
            return list.contains(creditCard.a());
        }
    }
}

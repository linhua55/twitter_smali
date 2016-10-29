package com.twitter.library.commerce.model;

import com.twitter.android.mx;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class CardVariantList {
    private final ArrayList<e> a;
    private final StringBuilder b;
    private int c;

    /* compiled from: Twttr */
    public class CardVariantListException extends Exception {
        public CardVariantListException(String str) {
            super(str);
        }
    }

    public CardVariantList(HashMap<String, Object> hashMap) throws CardVariantListException {
        this.a = new ArrayList();
        this.b = new StringBuilder();
        a((HashMap) hashMap);
    }

    public final ArrayList<e> a() {
        return this.a;
    }

    public int b() {
        return this.c;
    }

    public List<String> a(int i, String[] strArr) throws CardVariantListException {
        if (i >= this.c || strArr.length != this.c) {
            throw new CardVariantListException("Attribute size mismatch");
        }
        List arrayList = new ArrayList();
        if (this.a.size() > 0) {
            if (strArr[i] != null) {
                arrayList.add(strArr[i]);
            } else {
                for (e f : b(strArr)) {
                    String str = (String) f.f().get(i);
                    if (!arrayList.contains(str)) {
                        arrayList.add(str);
                    }
                }
            }
        }
        return arrayList;
    }

    public List<e> a(String[] strArr) {
        for (CharSequence a : strArr) {
            if (aj.a(a)) {
                return null;
            }
        }
        return b(strArr);
    }

    public void a(List<ProductVariant> list) throws CardVariantListException {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            for (ProductVariant productVariant : list) {
                if (eVar.a().equals(productVariant.a())) {
                    eVar.a(productVariant);
                    break;
                }
            }
        }
    }

    private List<e> b(String[] strArr) {
        List arrayList = new ArrayList();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            int i = 0;
            while (i < strArr.length) {
                String str = strArr[i];
                if (str != null && !str.equals(eVar.f().get(i))) {
                    Object obj = null;
                    break;
                }
                i++;
            }
            i = 1;
            if (obj != null) {
                arrayList.add(eVar);
            }
        }
        return arrayList;
    }

    private void a(HashMap<String, Object> hashMap) throws CardVariantListException {
        if (hashMap != null) {
            for (Entry entry : hashMap.entrySet()) {
                String str = (String) entry.getKey();
                if (str.startsWith("variant")) {
                    str = str.substring("variant".length());
                    String a = a(str);
                    if (a == null) {
                        throw new CardVariantListException("Expected a variant index");
                    }
                    int parseInt = Integer.parseInt(a) - 1;
                    if (parseInt < 0) {
                        throw new CardVariantListException("Invalid variant index. Index < 0");
                    }
                    if (parseInt >= this.a.size()) {
                        d.a(this.a, parseInt + 1);
                    }
                    if (this.a.get(parseInt) == null) {
                        this.a.set(parseInt, new e());
                    }
                    a(str.substring(a.length()), entry.getValue(), (e) this.a.get(parseInt));
                }
            }
            if (!c()) {
                throw new CardVariantListException("Invalid variant list. Null entries.");
            } else if (!d()) {
                throw new CardVariantListException("Invalid attributes. Mismatched size.");
            } else if (this.a.size() > 0) {
                this.c = ((e) this.a.get(0)).f().size();
            }
        }
    }

    private void a(String str, Object obj, e eVar) throws CardVariantListException {
        if (str.startsWith("_")) {
            str = str.substring("_".length());
        }
        if (str.startsWith("attribute")) {
            String substring = str.substring("attribute".length());
            String a = a(substring);
            if (a == null) {
                throw new CardVariantListException("Expected an attribute index");
            }
            int parseInt = Integer.parseInt(a) - 1;
            if (parseInt < 0) {
                throw new CardVariantListException("Invalid attribute index. Index < 0");
            }
            a(substring.substring(a.length()), obj, eVar, parseInt);
            return;
        }
        Object obj2 = -1;
        switch (str.hashCode()) {
            case -1724546052:
                if (str.equals("description")) {
                    obj2 = 1;
                    break;
                }
                break;
            case -1042655124:
                if (str.equals("inventory_count")) {
                    obj2 = 3;
                    break;
                }
                break;
            case 3355:
                if (str.equals("id")) {
                    obj2 = null;
                    break;
                }
                break;
            case 100313435:
                if (str.equals("image")) {
                    obj2 = 2;
                    break;
                }
                break;
            case 106934601:
                if (str.equals("price")) {
                    obj2 = 5;
                    break;
                }
                break;
            case 110371416:
                if (str.equals("title")) {
                    obj2 = 7;
                    break;
                }
                break;
            case 338699282:
                if (str.equals("last_updated")) {
                    obj2 = 4;
                    break;
                }
                break;
            case 1912315666:
                if (str.equals("tax_category")) {
                    obj2 = 6;
                    break;
                }
                break;
        }
        switch (obj2) {
            case mx.View_android_theme /*0*/:
                eVar.a((String) obj);
            case WireMessage.WIRE_CHAT /*1*/:
                eVar.c((String) obj);
            case WireMessage.WIRE_CONTROL /*2*/:
                eVar.h((String) obj);
            case WireMessage.WIRE_AUTH /*3*/:
                eVar.d((String) obj);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                eVar.e((String) obj);
            case mx.UserView_actionButtonPaddingRight /*5*/:
                eVar.f((String) obj);
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                eVar.g((String) obj);
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                eVar.b((String) obj);
            default:
        }
    }

    private void a(String str, Object obj, e eVar, int i) {
        if (str.startsWith("_")) {
            str = str.substring("_".length());
        }
        if (str.equals("text")) {
            eVar.a(i, (String) obj);
        }
    }

    private boolean c() {
        if (this.a.size() > 0) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                if (((e) it.next()) == null) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean d() {
        if (this.a.size() > 0) {
            int size = ((e) this.a.get(0)).f().size();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                if (eVar.f().size() != size) {
                    return false;
                }
                Iterator it2 = eVar.f().iterator();
                while (it2.hasNext()) {
                    if (((String) it2.next()) == null) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private String a(String str) {
        int i = 0;
        this.b.setLength(0);
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (!Character.isDigit(charAt)) {
                break;
            }
            this.b.append(charAt);
            i++;
        }
        if (this.b.length() == 0) {
            return null;
        }
        return this.b.toString();
    }
}

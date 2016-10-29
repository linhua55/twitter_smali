package org.spongycastle.asn1.eac;

import java.util.Hashtable;

/* compiled from: Twttr */
public class BidirectionalMap extends Hashtable {
    private static final long serialVersionUID = -7457289971962812909L;
    Hashtable reverseMap;

    public BidirectionalMap() {
        this.reverseMap = new Hashtable();
    }

    public Object put(Object obj, Object obj2) {
        this.reverseMap.put(obj2, obj);
        return super.put(obj, obj2);
    }
}

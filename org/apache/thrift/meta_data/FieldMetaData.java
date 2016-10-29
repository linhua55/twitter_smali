package org.apache.thrift.meta_data;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.apache.thrift.TBase;
import org.apache.thrift.d;

/* compiled from: Twttr */
public class FieldMetaData implements Serializable {
    private static Map<Class<? extends TBase>, Map<? extends d, FieldMetaData>> a;
    public final String fieldName;
    public final byte requirementType;
    public final FieldValueMetaData valueMetaData;

    static {
        a = new HashMap();
    }

    public FieldMetaData(String str, byte b, FieldValueMetaData fieldValueMetaData) {
        this.fieldName = str;
        this.requirementType = b;
        this.valueMetaData = fieldValueMetaData;
    }

    public static void a(Class<? extends TBase> cls, Map<? extends d, FieldMetaData> map) {
        a.put(cls, map);
    }
}

package org.apache.thrift.meta_data;

/* compiled from: Twttr */
public class MapMetaData extends FieldValueMetaData {
    public final FieldValueMetaData keyMetaData;
    public final FieldValueMetaData valueMetaData;

    public MapMetaData(byte b, FieldValueMetaData fieldValueMetaData, FieldValueMetaData fieldValueMetaData2) {
        super(b);
        this.keyMetaData = fieldValueMetaData;
        this.valueMetaData = fieldValueMetaData2;
    }
}

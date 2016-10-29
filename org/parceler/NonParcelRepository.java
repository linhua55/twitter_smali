package org.parceler;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import defpackage.cxu;
import defpackage.cxv;
import defpackage.cxw;
import defpackage.cxx;
import defpackage.cxy;
import defpackage.cxz;
import defpackage.cya;
import defpackage.cyb;
import defpackage.cyc;
import defpackage.cye;
import defpackage.cyf;
import defpackage.cyg;
import defpackage.cyh;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

/* compiled from: Twttr */
final class NonParcelRepository implements by<bw> {
    private static final NonParcelRepository a;
    private final Map<Class, bw> b;

    /* compiled from: Twttr */
    class ConverterParcelable<T> implements Parcelable, bt<T> {
        private final T a;
        private final bz<T, T> b;

        private ConverterParcelable(Parcel parcel, bz<T, T> bzVar) {
            this(bzVar.c(parcel), (bz) bzVar);
        }

        private ConverterParcelable(T t, bz<T, T> bzVar) {
            this.b = bzVar;
            this.a = t;
        }

        public void writeToParcel(Parcel parcel, int i) {
            this.b.c(this.a, parcel);
        }

        public int describeContents() {
            return 0;
        }

        public T getParcel() {
            return this.a;
        }
    }

    /* compiled from: Twttr */
    public final class BooleanArrayParcelable extends ConverterParcelable<boolean[]> {
        public static final b CREATOR;
        private static final cxv a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new cxv();
            CREATOR = new b();
        }

        public BooleanArrayParcelable(Parcel parcel) {
            super(a, null);
        }

        public BooleanArrayParcelable(boolean[] zArr) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class BooleanParcelable extends ConverterParcelable<Boolean> {
        public static final e CREATOR;
        private static final cye<Boolean> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new d();
            CREATOR = new e();
        }

        public BooleanParcelable(Parcel parcel) {
            super(a, null);
        }

        public BooleanParcelable(boolean z) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class ByteArrayParcelable extends ConverterParcelable<byte[]> {
        public static final i CREATOR;
        private static final cye<byte[]> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new h();
            CREATOR = new i();
        }

        public ByteArrayParcelable(Parcel parcel) {
            super(a, null);
        }

        public ByteArrayParcelable(byte[] bArr) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class ByteParcelable extends ConverterParcelable<Byte> {
        public static final l CREATOR;
        private static final cye<Byte> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new k();
            CREATOR = new l();
        }

        public ByteParcelable(Parcel parcel) {
            super(a, null);
        }

        public ByteParcelable(Byte b) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class CharArrayParcelable extends ConverterParcelable<char[]> {
        public static final n CREATOR;
        private static final cxw a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new cxw();
            CREATOR = new n();
        }

        public CharArrayParcelable(Parcel parcel) {
            super(a, null);
        }

        public CharArrayParcelable(char[] cArr) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class CharacterParcelable extends ConverterParcelable<Character> {
        public static final q CREATOR;
        private static final cye<Character> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new p();
            CREATOR = new q();
        }

        public CharacterParcelable(Parcel parcel) {
            super(a, null);
        }

        public CharacterParcelable(Character ch) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class CollectionParcelable extends ConverterParcelable<Collection> {
        public static final t CREATOR;
        private static final cxx a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new s();
            CREATOR = new t();
        }

        public CollectionParcelable(Parcel parcel) {
            super(a, null);
        }

        public CollectionParcelable(Collection collection) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class DoubleParcelable extends ConverterParcelable<Double> {
        public static final w CREATOR;
        private static final cye<Double> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new v();
            CREATOR = new w();
        }

        public DoubleParcelable(Parcel parcel) {
            super(a, null);
        }

        public DoubleParcelable(Double d) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class FloatParcelable extends ConverterParcelable<Float> {
        public static final z CREATOR;
        private static final cye<Float> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new y();
            CREATOR = new z();
        }

        public FloatParcelable(Parcel parcel) {
            super(a, null);
        }

        public FloatParcelable(Float f) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class IBinderParcelable extends ConverterParcelable<IBinder> {
        public static final ac CREATOR;
        private static final cye<IBinder> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new ab();
            CREATOR = new ac();
        }

        public IBinderParcelable(Parcel parcel) {
            super(a, null);
        }

        public IBinderParcelable(IBinder iBinder) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class IntegerParcelable extends ConverterParcelable<Integer> {
        public static final af CREATOR;
        private static final cye<Integer> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new ae();
            CREATOR = new af();
        }

        public IntegerParcelable(Parcel parcel) {
            super(a, null);
        }

        public IntegerParcelable(Integer num) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class LinkedHashMapParcelable extends ConverterParcelable<LinkedHashMap> {
        public static final ai CREATOR;
        private static final cya a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new ah();
            CREATOR = new ai();
        }

        public LinkedHashMapParcelable(Parcel parcel) {
            super(a, null);
        }

        public LinkedHashMapParcelable(LinkedHashMap linkedHashMap) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class LinkedHashSetParcelable extends ConverterParcelable<LinkedHashSet> {
        public static final al CREATOR;
        private static final cyb a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new ak();
            CREATOR = new al();
        }

        public LinkedHashSetParcelable(Parcel parcel) {
            super(a, null);
        }

        public LinkedHashSetParcelable(LinkedHashSet linkedHashSet) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class LinkedListParcelable extends ConverterParcelable<LinkedList> {
        public static final ao CREATOR;
        private static final cyc a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new an();
            CREATOR = new ao();
        }

        public LinkedListParcelable(Parcel parcel) {
            super(a, null);
        }

        public LinkedListParcelable(LinkedList linkedList) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class ListParcelable extends ConverterParcelable<List> {
        public static final ar CREATOR;
        private static final cxu a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new aq();
            CREATOR = new ar();
        }

        public ListParcelable(Parcel parcel) {
            super(a, null);
        }

        public ListParcelable(List list) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class LongParcelable extends ConverterParcelable<Long> {
        public static final au CREATOR;
        private static final cye<Long> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new at();
            CREATOR = new au();
        }

        public LongParcelable(Parcel parcel) {
            super(a, null);
        }

        public LongParcelable(Long l) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class MapParcelable extends ConverterParcelable<Map> {
        public static final ax CREATOR;
        private static final cxy a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new aw();
            CREATOR = new ax();
        }

        public MapParcelable(Parcel parcel) {
            super(a, null);
        }

        public MapParcelable(Map map) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class ParcelableParcelable implements Parcelable, bt<Parcelable> {
        public static final az CREATOR;
        private Parcelable a;

        public /* synthetic */ Object getParcel() {
            return a();
        }

        private ParcelableParcelable(Parcel parcel) {
            this.a = parcel.readParcelable(ParcelableParcelable.class.getClassLoader());
        }

        private ParcelableParcelable(Parcelable parcelable) {
            this.a = parcelable;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
        }

        public int describeContents() {
            return 0;
        }

        public Parcelable a() {
            return this.a;
        }

        static {
            CREATOR = new az();
        }
    }

    /* compiled from: Twttr */
    public final class SetParcelable extends ConverterParcelable<Set> {
        public static final bc CREATOR;
        private static final cxz a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new bb();
            CREATOR = new bc();
        }

        public SetParcelable(Parcel parcel) {
            super(a, null);
        }

        public SetParcelable(Set set) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class SparseArrayParcelable extends ConverterParcelable<SparseArray> {
        public static final bf CREATOR;
        private static final cyf a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new be();
            CREATOR = new bf();
        }

        public SparseArrayParcelable(Parcel parcel) {
            super(a, null);
        }

        public SparseArrayParcelable(SparseArray sparseArray) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class SparseBooleanArrayParcelable extends ConverterParcelable<SparseBooleanArray> {
        public static final bi CREATOR;
        private static final cye<SparseBooleanArray> a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new bh();
            CREATOR = new bi();
        }

        public SparseBooleanArrayParcelable(Parcel parcel) {
            super(a, null);
        }

        public SparseBooleanArrayParcelable(SparseBooleanArray sparseBooleanArray) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class StringParcelable implements Parcelable, bt<String> {
        public static final bk CREATOR;
        private String a;

        public /* synthetic */ Object getParcel() {
            return a();
        }

        static {
            CREATOR = new bk();
        }

        private StringParcelable(Parcel parcel) {
            this.a = parcel.readString();
        }

        private StringParcelable(String str) {
            this.a = str;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.a);
        }

        public int describeContents() {
            return 0;
        }

        public String a() {
            return this.a;
        }
    }

    /* compiled from: Twttr */
    public final class TreeMapParcelable extends ConverterParcelable<Map> {
        public static final bn CREATOR;
        private static final cyg a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new bm();
            CREATOR = new bn();
        }

        public TreeMapParcelable(Parcel parcel) {
            super(a, null);
        }

        public TreeMapParcelable(Map map) {
            super(a, null);
        }
    }

    /* compiled from: Twttr */
    public final class TreeSetParcelable extends ConverterParcelable<Set> {
        public static final bq CREATOR;
        private static final cyh a;

        public /* bridge */ /* synthetic */ int describeContents() {
            return super.describeContents();
        }

        public /* bridge */ /* synthetic */ void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
        }

        static {
            a = new bp();
            CREATOR = new bq();
        }

        public TreeSetParcelable(Parcel parcel) {
            super(a, null);
        }

        public TreeSetParcelable(Set set) {
            super(a, null);
        }
    }

    static {
        a = new NonParcelRepository();
    }

    private NonParcelRepository() {
        this.b = new HashMap();
        this.b.put(Collection.class, new u());
        this.b.put(List.class, new as());
        this.b.put(ArrayList.class, new as());
        this.b.put(Set.class, new bd());
        this.b.put(HashSet.class, new bd());
        this.b.put(TreeSet.class, new br());
        this.b.put(SparseArray.class, new bg());
        this.b.put(Map.class, new ay());
        this.b.put(HashMap.class, new ay());
        this.b.put(TreeMap.class, new bo());
        this.b.put(Integer.class, new ag());
        this.b.put(Long.class, new av());
        this.b.put(Double.class, new x());
        this.b.put(Float.class, new aa());
        this.b.put(Byte.class, new m());
        this.b.put(String.class, new bl());
        this.b.put(Character.class, new r());
        this.b.put(Boolean.class, new f());
        this.b.put(byte[].class, new j());
        this.b.put(char[].class, new o());
        this.b.put(boolean[].class, new c());
        this.b.put(IBinder.class, new ad());
        this.b.put(Bundle.class, new g());
        this.b.put(SparseBooleanArray.class, new bj());
        this.b.put(LinkedList.class, new ap());
        this.b.put(LinkedHashMap.class, new aj());
        this.b.put(SortedMap.class, new bo());
        this.b.put(SortedSet.class, new br());
        this.b.put(LinkedHashSet.class, new am());
    }

    public static NonParcelRepository a() {
        return a;
    }

    public Map<Class, bw> b() {
        return this.b;
    }
}

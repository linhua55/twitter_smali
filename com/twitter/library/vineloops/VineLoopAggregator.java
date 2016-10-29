package com.twitter.library.vineloops;

import android.content.Context;
import android.content.SharedPreferences;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.library.api.at;
import com.twitter.util.collection.n;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.cfb;
import defpackage.cun;
import java.io.Closeable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;

/* compiled from: Twttr */
public class VineLoopAggregator {
    private static final int[] a;
    private static VineLoopAggregator b;
    private final SharedPreferences c;
    private LinkedList<Record> d;

    static {
        a = new int[0];
    }

    private VineLoopAggregator(Context context) {
        this.d = new LinkedList();
        this.c = context.getSharedPreferences("VineLoops", 0);
        for (String a : a(this.c.getString("LoopCountRecords", "[]"))) {
            Record a2 = Record.a(a);
            if (a2 != null) {
                a(a2);
            }
        }
    }

    static List<String> a(String str) {
        List<String> linkedList = new LinkedList();
        try {
            JsonParser a = at.a.a(str);
            JsonToken a2 = a.a();
            while (a2 != null && a2 != JsonToken.e) {
                if (a2 == JsonToken.h) {
                    linkedList.add(a.s());
                }
                a2 = a.a();
            }
            cun.a((Closeable) a);
        } catch (Throwable e) {
            if (cfb.a()) {
                cfb.c("VineLoopAggregator", "error parsing loop records JSON:\n" + str, e);
            } else {
                bbn.a(new bbl(e).a("serialized records", str));
            }
            cun.a(null);
        } catch (Throwable th) {
            cun.a(null);
        }
        return linkedList;
    }

    public static VineLoopAggregator a(Context context) {
        synchronized (a) {
            if (b == null) {
                b = new VineLoopAggregator(context);
            }
        }
        return b;
    }

    public void a(String str, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("numLoops must be positive");
        }
        Record record = new Record(str);
        record.a(i);
        a(record);
        cfb.b("VineLoopAggregator", String.format("incremented %s by %d to %d", new Object[]{str, Integer.valueOf(i), Integer.valueOf(record.b)}));
    }

    private void a(Record record) {
        synchronized (a) {
            this.d.add(record);
        }
    }

    public void a() {
        if (!this.d.isEmpty()) {
            Collection linkedList = new LinkedList();
            synchronized (a) {
                Iterator it = this.d.iterator();
                while (it.hasNext()) {
                    linkedList.add(((Record) it.next()).a());
                }
                cfb.b("VineLoopAggregator", "Committing these loop records:\n" + toString());
            }
            this.c.edit().putString("LoopCountRecords", new JSONArray(linkedList).toString()).apply();
        }
    }

    public List<Record> b() {
        if (this.d.isEmpty()) {
            return n.g();
        }
        List<Record> list;
        LinkedList linkedList = new LinkedList();
        synchronized (a) {
            list = this.d;
            this.d = linkedList;
        }
        return list;
    }

    public void a(List<Record> list) {
        synchronized (a) {
            this.d.addAll(0, list);
            a();
        }
    }

    public String toString() {
        String stringBuilder;
        synchronized (a) {
            StringBuilder stringBuilder2 = new StringBuilder();
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                stringBuilder2.append((Record) it.next()).append('\n');
            }
            stringBuilder = stringBuilder2.toString();
        }
        return stringBuilder;
    }
}

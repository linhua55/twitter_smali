package com.google.android.gms.internal;

import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.PriorityQueue;

@oi
public class bu {
    static long a(int i, int i2, long j, long j2, long j3) {
        return ((((((j + 1073807359) - ((((((long) i) + 2147483647L) % 1073807359) * j2) % 1073807359)) % 1073807359) * j3) % 1073807359) + ((((long) i2) + 2147483647L) % 1073807359)) % 1073807359;
    }

    static long a(long j, int i) {
        return i == 0 ? 1 : i != 1 ? i % 2 == 0 ? a((j * j) % 1073807359, i / 2) % 1073807359 : ((a((j * j) % 1073807359, i / 2) % 1073807359) * j) % 1073807359 : j;
    }

    static String a(String[] strArr, int i, int i2) {
        if (strArr.length < i + i2) {
            b.b("Unable to construct shingle");
            return BuildConfig.VERSION_NAME;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = i; i3 < (i + i2) - 1; i3++) {
            stringBuffer.append(strArr[i3]);
            stringBuffer.append(' ');
        }
        stringBuffer.append(strArr[(i + i2) - 1]);
        return stringBuffer.toString();
    }

    static void a(int i, long j, String str, int i2, PriorityQueue<bv> priorityQueue) {
        bv bvVar = new bv(j, str, i2);
        if ((priorityQueue.size() != i || ((bv) priorityQueue.peek()).a <= bvVar.a) && !priorityQueue.contains(bvVar)) {
            priorityQueue.add(bvVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static void a(String[] strArr, int i, int i2, PriorityQueue<bv> priorityQueue) {
        if (strArr.length < i2) {
            int i3 = i;
            a(i3, b(strArr, 0, strArr.length), a(strArr, 0, strArr.length), strArr.length, (PriorityQueue) priorityQueue);
            return;
        }
        long b = b(strArr, 0, i2);
        a(i, b, a(strArr, 0, i2), i2, (PriorityQueue) priorityQueue);
        long a = a(16785407, i2 - 1);
        int i4 = 1;
        while (i4 < (strArr.length - i2) + 1) {
            long a2 = a(bs.a(strArr[i4 - 1]), bs.a(strArr[(i4 + i2) - 1]), b, a, 16785407);
            a(i, a2, a(strArr, i4, i2), strArr.length, (PriorityQueue) priorityQueue);
            i4++;
            b = a2;
        }
    }

    private static long b(String[] strArr, int i, int i2) {
        long a = (((long) bs.a(strArr[i])) + 2147483647L) % 1073807359;
        for (int i3 = i + 1; i3 < i + i2; i3++) {
            a = (((a * 16785407) % 1073807359) + ((((long) bs.a(strArr[i3])) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return a;
    }
}

package com.twitter.library.metrics;

import arf;
import ark;
import com.twitter.library.scribe.performance.MemoryPerformanceScribeLog;
import com.twitter.library.scribe.performance.PerformanceScribeLog;
import defpackage.asl;

/* compiled from: Twttr */
public class o {
    public static PerformanceScribeLog a(ark ark) {
        if (ark instanceof asl) {
            PerformanceScribeLog memoryPerformanceScribeLog = new MemoryPerformanceScribeLog(ark.a(), ark.x(), ((asl) ark).C());
            memoryPerformanceScribeLog.b(ark.u());
            return memoryPerformanceScribeLog;
        }
        PerformanceScribeLog performanceScribeLog = new PerformanceScribeLog(ark.a(), ark.x());
        Long d = ark.d();
        if (ark instanceof arf) {
            performanceScribeLog.a(ark.u(), d.longValue());
        } else if (d != null) {
            performanceScribeLog.b(ark.u(), d.longValue());
        } else {
            performanceScribeLog.d(ark.u());
        }
        String t = ark.t();
        if (t == null) {
            return performanceScribeLog;
        }
        performanceScribeLog.n(t);
        return performanceScribeLog;
    }
}

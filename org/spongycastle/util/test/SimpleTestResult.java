package org.spongycastle.util.test;

/* compiled from: Twttr */
public class SimpleTestResult implements TestResult {
    private static final String a;
    private String b;

    static {
        a = System.getProperty("line.separator");
    }

    public String toString() {
        return this.b;
    }
}

package org.spongycastle.pqc.math.linearalgebra;

import java.math.BigInteger;
import java.security.SecureRandom;

/* compiled from: Twttr */
public final class IntegerFunctions {
    private static final BigInteger a;
    private static final BigInteger b;
    private static final BigInteger c;
    private static final BigInteger d;
    private static final int[] e;
    private static SecureRandom f;
    private static final int[] g;

    static {
        a = BigInteger.valueOf(0);
        b = BigInteger.valueOf(1);
        c = BigInteger.valueOf(2);
        d = BigInteger.valueOf(4);
        e = new int[]{3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41};
        f = null;
        g = new int[]{0, 1, 0, -1, 0, -1, 0, 1};
    }

    private IntegerFunctions() {
    }

    public static int a(int i) {
        if (i == 0) {
            return 1;
        }
        if (i < 0) {
            i = -i;
        }
        int i2 = 0;
        for (i = 
        /* Method generation error in method: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.a(int):int
jadx.core.utils.exceptions.CodegenException: Error generate insn: PHI: (r1_2 'i' int) = (r1_0 'i' int), (r1_1 'i' int) binds: {(r1_1 'i' int)=B:3:0x0006, (r1_0 'i' int)=B:2:0x0004} in method: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.a(int):int
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:225)
	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:184)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:61)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:177)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:324)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:263)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:226)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:116)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:81)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:19)
	at jadx.core.ProcessClass.process(ProcessClass.java:43)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
Caused by: jadx.core.utils.exceptions.CodegenException: Unknown instruction: PHI in method: org.spongycastle.pqc.math.linearalgebra.IntegerFunctions.a(int):int
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:512)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:219)
	... 19 more
 */

        public static BigInteger a(int i, int i2) {
            BigInteger bigInteger = b;
            if (i != 0) {
                if (i2 > (i >>> 1)) {
                    i2 = i - i2;
                }
                int i3 = 1;
                while (i3 <= i2) {
                    BigInteger divide = bigInteger.multiply(BigInteger.valueOf((long) (i - (i3 - 1)))).divide(BigInteger.valueOf((long) i3));
                    i3++;
                    bigInteger = divide;
                }
                return bigInteger;
            } else if (i2 == 0) {
                return bigInteger;
            } else {
                return a;
            }
        }
    }

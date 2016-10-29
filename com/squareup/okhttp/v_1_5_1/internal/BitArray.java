package com.squareup.okhttp.v_1_5_1.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
public interface BitArray {

    /* compiled from: Twttr */
    public final class FixedCapacity implements BitArray {
        long data;

        public FixedCapacity() {
            this.data = 0;
        }

        public void clear() {
            this.data = 0;
        }

        public void set(int i) {
            this.data |= 1 << checkInput(i);
        }

        public void toggle(int i) {
            this.data ^= 1 << checkInput(i);
        }

        public boolean get(int i) {
            return ((this.data >> checkInput(i)) & 1) == 1;
        }

        public void shiftLeft(int i) {
            this.data <<= checkInput(i);
        }

        public String toString() {
            return Long.toBinaryString(this.data);
        }

        public BitArray toVariableCapacity() {
            return new VariableCapacity();
        }

        private static int checkInput(int i) {
            if (i >= 0 && i <= 63) {
                return i;
            }
            throw new IllegalArgumentException(String.format("input must be between 0 and 63: %s", new Object[]{Integer.valueOf(i)}));
        }
    }

    /* compiled from: Twttr */
    public final class VariableCapacity implements BitArray {
        long[] data;
        private int start;

        public VariableCapacity() {
            this.data = new long[1];
        }

        private VariableCapacity(FixedCapacity fixedCapacity) {
            this.data = new long[]{fixedCapacity.data, 0};
        }

        private void growToSize(int i) {
            Object obj = new long[i];
            if (this.data != null) {
                System.arraycopy(this.data, 0, obj, 0, this.data.length);
            }
            this.data = obj;
        }

        private int offsetOf(int i) {
            int i2 = (this.start + i) / 64;
            if (i2 > this.data.length - 1) {
                growToSize(i2 + 1);
            }
            return i2;
        }

        private int shiftOf(int i) {
            return (this.start + i) % 64;
        }

        public void clear() {
            Arrays.fill(this.data, 0);
        }

        public void set(int i) {
            checkInput(i);
            int offsetOf = offsetOf(i);
            long[] jArr = this.data;
            jArr[offsetOf] = jArr[offsetOf] | (1 << shiftOf(i));
        }

        public void toggle(int i) {
            checkInput(i);
            int offsetOf = offsetOf(i);
            long[] jArr = this.data;
            jArr[offsetOf] = jArr[offsetOf] ^ (1 << shiftOf(i));
        }

        public boolean get(int i) {
            checkInput(i);
            return (this.data[offsetOf(i)] & (1 << shiftOf(i))) != 0;
        }

        public void shiftLeft(int i) {
            this.start -= checkInput(i);
            if (this.start < 0) {
                int i2 = (this.start / -64) + 1;
                Object obj = new long[(this.data.length + i2)];
                System.arraycopy(this.data, 0, obj, i2, this.data.length);
                this.data = obj;
                this.start = (this.start % 64) + 64;
            }
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder("{");
            List toIntegerList = toIntegerList();
            int size = toIntegerList.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    stringBuilder.append(',');
                }
                stringBuilder.append(toIntegerList.get(i));
            }
            return stringBuilder.append('}').toString();
        }

        List<Integer> toIntegerList() {
            List<Integer> arrayList = new ArrayList();
            int length = (this.data.length * 64) - this.start;
            for (int i = 0; i < length; i++) {
                if (get(i)) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            return arrayList;
        }

        private static int checkInput(int i) {
            if (i >= 0) {
                return i;
            }
            throw new IllegalArgumentException(String.format("input must be a positive number: %s", new Object[]{Integer.valueOf(i)}));
        }
    }

    void clear();

    boolean get(int i);

    void set(int i);

    void shiftLeft(int i);

    void toggle(int i);
}

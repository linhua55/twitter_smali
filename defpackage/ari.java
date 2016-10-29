package defpackage;

import android.os.AsyncTask;
import bbn;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.regex.Matcher;

/* compiled from: Twttr */
/* renamed from: ari */
class ari extends AsyncTask<Void, Void, Integer> {
    final /* synthetic */ arg a;

    private ari(arg arg) {
        this.a = arg;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Integer) obj);
    }

    protected Integer a(Void... voidArr) {
        int i;
        int i2;
        Throwable th;
        int i3;
        if (new File("/proc/cpuinfo").exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/cpuinfo")));
                i = 0;
                i3 = 0;
                while (true) {
                    try {
                        CharSequence readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        Matcher matcher = arg.d.matcher(readLine);
                        if (matcher.matches()) {
                            i3++;
                            i = Integer.valueOf(matcher.group(1)).intValue();
                        }
                    } catch (Throwable e) {
                        Throwable th2 = e;
                        i2 = i3;
                        i3 = i;
                        th = th2;
                    }
                }
                bufferedReader.close();
                int i4 = i;
                i = i3;
                i3 = i4;
            } catch (IOException e2) {
                th = e2;
                i3 = 0;
                i2 = 0;
                bbn.a(th);
                i = i2;
                if (i3 + 1 != i) {
                    i = 0;
                }
                return Integer.valueOf(i);
            }
        }
        i3 = 0;
        i = 0;
        if (i3 + 1 != i) {
            i = 0;
        }
        return Integer.valueOf(i);
    }

    protected void a(Integer num) {
        this.a.a = num.intValue();
    }
}

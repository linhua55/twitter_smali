package tv.periscope.model.chat;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.apache.commons.net.ntp.TimeStamp;
import tv.periscope.model.chat.MessageType.ReportType;
import tv.periscope.model.chat.MessageType.SentenceType;
import tv.periscope.model.chat.MessageType.VerdictType;

/* compiled from: Twttr */
public abstract class Message implements Serializable {
    public abstract String A();

    public abstract String B();

    public abstract String C();

    public abstract VerdictType D();

    public abstract String E();

    public abstract Integer F();

    public abstract SentenceType G();

    public abstract Integer H();

    public abstract String I();

    public abstract Integer a();

    public abstract MessageType b();

    public abstract String c();

    public abstract Integer d();

    public abstract BigInteger e();

    public abstract String f();

    public abstract Long g();

    public abstract String h();

    public abstract String i();

    public abstract String j();

    public abstract String k();

    public abstract String l();

    public abstract String m();

    public abstract Double n();

    public abstract Double o();

    public abstract Double p();

    public abstract Integer q();

    public abstract String r();

    public abstract String s();

    public abstract String t();

    public abstract BigInteger u();

    public abstract String v();

    public abstract String w();

    public abstract String x();

    public abstract String y();

    public abstract ReportType z();

    public static long J() {
        return TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
    }

    public static String K() {
        return UUID.randomUUID().toString();
    }

    public static d L() {
        return new c().a(Integer.valueOf(2));
    }

    public static Message a(String str, String str2, String str3, String str4, String str5, String str6, Integer num, long j, long j2) {
        return L().a(MessageType.Chat).a(str5).b(num).a(a(j)).b(K()).a(Long.valueOf(J())).c(str2).d(str3).e(str4).f(str6).g(str).b(a(j2)).a();
    }

    public static BigInteger a(long j) {
        TimeStamp b = TimeStamp.b(j);
        return BigInteger.valueOf(b.b()).multiply(BigInteger.valueOf(4294967296L)).add(BigInteger.valueOf(b.c()));
    }

    public static Message a(String str, String str2, String str3, String str4, String str5, Integer num, long j, long j2) {
        return L().a(MessageType.Join).a(str4).b(num).a(a(j)).b(K()).a(Long.valueOf(J())).c(str).d(str2).e(str3).f(str5).b(a(j2)).a();
    }
}

package com.twitter.model.businessprofiles;

import com.twitter.util.h;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/* compiled from: Twttr */
public class an {
    public static final n<an> a;
    public final Date b;
    public final Date c;

    static {
        a = new ap();
    }

    public an(Date date, Date date2) {
        h.b(date.compareTo(date2) < 0);
        this.b = date;
        this.c = date2;
    }

    public static an a(Date date) {
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        instance.set(11, instance.getActualMinimum(11));
        instance.set(12, instance.getActualMinimum(12));
        instance.set(13, instance.getActualMinimum(13));
        instance.set(14, instance.getActualMinimum(14));
        Date time = instance.getTime();
        instance.add(5, 1);
        return new an(time, instance.getTime());
    }

    public static an a(List<an> list) {
        if (list.isEmpty()) {
            return null;
        }
        Date date = null;
        for (an anVar : list) {
            if (date != null) {
                Calendar instance = Calendar.getInstance();
                instance.setTime(date);
                instance.add(13, -1);
                instance.add(5, 1);
                instance.set(11, instance.getActualMaximum(11));
                instance.set(12, instance.getActualMaximum(12));
                instance.set(13, instance.getActualMaximum(13));
                instance.set(14, instance.getActualMaximum(14));
                if (instance.getTime().compareTo(anVar.b) < 0) {
                    break;
                }
            }
            date = anVar.c;
        }
        return new an(((an) list.get(0)).b, date);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        an anVar = (an) obj;
        if (ObjectUtils.a(this.b, anVar.b) && ObjectUtils.a(this.c, anVar.c)) {
            return true;
        }
        return false;
    }

    public boolean a(an anVar) {
        return b(anVar.b) && b(new Date(anVar.c.getTime() - 1));
    }

    public boolean b(Date date) {
        return c(date) == 0;
    }

    public int c(Date date) {
        if (this.c.compareTo(date) <= 0) {
            return -1;
        }
        if (this.b.compareTo(date) > 0) {
            return 1;
        }
        return 0;
    }

    public Date a() {
        return new Date(this.c.getTime() - 1);
    }

    public int hashCode() {
        return (ObjectUtils.b(this.b) * 31) + ObjectUtils.b(this.c);
    }

    public String toString() {
        return String.format("Time Range - Start Date: %s, End Date: %s", new Object[]{this.b, this.c});
    }
}

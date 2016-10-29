package com.google.ads.mediation;

import com.google.android.gms.ads.internal.util.client.b;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

@Deprecated
public abstract class MediationServerParameters {
    protected void a() {
    }

    public void a(Map<String, String> map) throws MappingException {
        Map hashMap = new HashMap();
        for (Field field : getClass().getFields()) {
            n nVar = (n) field.getAnnotation(n.class);
            if (nVar != null) {
                hashMap.put(nVar.a(), field);
            }
        }
        if (hashMap.isEmpty()) {
            b.d("No server options fields detected. To suppress this message either add a field with the @Parameter annotation, or override the load() method.");
        }
        for (Entry entry : map.entrySet()) {
            Field field2 = (Field) hashMap.remove(entry.getKey());
            if (field2 != null) {
                try {
                    field2.set(this, entry.getValue());
                } catch (IllegalAccessException e) {
                    b.d("Server option \"" + ((String) entry.getKey()) + "\" could not be set: Illegal Access");
                } catch (IllegalArgumentException e2) {
                    b.d("Server option \"" + ((String) entry.getKey()) + "\" could not be set: Bad Type");
                }
            } else {
                b.a("Unexpected server option: " + ((String) entry.getKey()) + " = \"" + ((String) entry.getValue()) + "\"");
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (Field field22 : hashMap.values()) {
            if (((n) field22.getAnnotation(n.class)).b()) {
                b.d("Required server option missing: " + ((n) field22.getAnnotation(n.class)).a());
                if (stringBuilder.length() > 0) {
                    stringBuilder.append(", ");
                }
                stringBuilder.append(((n) field22.getAnnotation(n.class)).a());
            }
        }
        if (stringBuilder.length() > 0) {
            throw new MappingException("Required server option(s) missing: " + stringBuilder.toString());
        }
        a();
    }
}

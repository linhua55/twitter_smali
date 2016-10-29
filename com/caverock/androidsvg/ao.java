package com.caverock.androidsvg;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.xml.sax.SAXException;

/* compiled from: Twttr */
public class ao extends ar implements an, aq {
    public List<au> i;
    public Set<String> j;
    public String k;
    public Set<String> l;
    public Set<String> m;
    public Set<String> n;

    protected ao() {
        this.i = new ArrayList();
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
    }

    public List<au> a() {
        return this.i;
    }

    public void a(au auVar) throws SAXException {
        this.i.add(auVar);
    }

    public void a(Set<String> set) {
        this.j = set;
    }

    public Set<String> b() {
        return this.j;
    }

    public void a(String str) {
        this.k = str;
    }

    public String c() {
        return this.k;
    }

    public void b(Set<String> set) {
        this.l = set;
    }

    public Set<String> d() {
        return null;
    }

    public void c(Set<String> set) {
        this.m = set;
    }

    public Set<String> e() {
        return this.m;
    }

    public void d(Set<String> set) {
        this.n = set;
    }

    public Set<String> f() {
        return this.n;
    }
}

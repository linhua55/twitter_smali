.class public final Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;
.super Lcom/twitter/database/internal/f;
.source "Twttr"

# interfaces
.implements Lcom/twitter/database/schema/TwitterSchema;


# annotations
.annotation build Latx;
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    .line 110
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbbr;

    const-class v2, Lcom/twitter/database/generated/w;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbgq;

    const-class v2, Lcom/twitter/database/generated/kh;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbcv;

    const-class v2, Lcom/twitter/database/generated/bw;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdv;

    const-class v2, Lcom/twitter/database/generated/ds;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbef;

    const-class v2, Lcom/twitter/database/generated/ex;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbcr;

    const-class v2, Lcom/twitter/database/generated/bo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbep;

    const-class v2, Lcom/twitter/database/generated/ft;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbeb;

    const-class v2, Lcom/twitter/database/generated/ep;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdz;

    const-class v2, Lcom/twitter/database/generated/eg;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbgs;

    const-class v2, Lcom/twitter/database/generated/kl;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbcn;

    const-class v2, Lcom/twitter/database/generated/bi;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbcx;

    const-class v2, Lcom/twitter/database/generated/ca;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbha;

    const-class v2, Lcom/twitter/database/generated/lf;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbej;

    const-class v2, Lcom/twitter/database/generated/ff;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lben;

    const-class v2, Lcom/twitter/database/generated/fp;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbel;

    const-class v2, Lcom/twitter/database/generated/fj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbgk;

    const-class v2, Lcom/twitter/database/generated/jx;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdd;

    const-class v2, Lcom/twitter/database/generated/ck;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdf;

    const-class v2, Lcom/twitter/database/generated/co;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdj;

    const-class v2, Lcom/twitter/database/generated/cw;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdh;

    const-class v2, Lcom/twitter/database/generated/cs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdr;

    const-class v2, Lcom/twitter/database/generated/dk;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbig;

    const-class v2, Lcom/twitter/database/generated/nx;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbii;

    const-class v2, Lcom/twitter/database/generated/og;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbih;

    const-class v2, Lcom/twitter/database/generated/ob;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdl;

    const-class v2, Lcom/twitter/database/generated/da;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbbz;

    const-class v2, Lcom/twitter/database/generated/ak;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdt;

    const-class v2, Lcom/twitter/database/generated/do;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbeh;

    const-class v2, Lcom/twitter/database/generated/fb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbev;

    const-class v2, Lcom/twitter/database/generated/go;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbgw;

    const-class v2, Lcom/twitter/database/generated/kx;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfi;

    const-class v2, Lcom/twitter/database/generated/hg;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfk;

    const-class v2, Lcom/twitter/database/generated/hk;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfm;

    const-class v2, Lcom/twitter/database/generated/ho;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfo;

    const-class v2, Lcom/twitter/database/generated/hs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfw;

    const-class v2, Lcom/twitter/database/generated/ja;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfe;

    const-class v2, Lcom/twitter/database/generated/ha;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfq;

    const-class v2, Lcom/twitter/database/generated/hw;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfs;

    const-class v2, Lcom/twitter/database/generated/ik;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfu;

    const-class v2, Lcom/twitter/database/generated/io;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbgc;

    const-class v2, Lcom/twitter/database/generated/jk;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbge;

    const-class v2, Lcom/twitter/database/generated/jo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbcd;

    const-class v2, Lcom/twitter/database/generated/aq;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbcf;

    const-class v2, Lcom/twitter/database/generated/au;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbgy;

    const-class v2, Lcom/twitter/database/generated/lb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbcz;

    const-class v2, Lcom/twitter/database/generated/ce;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbct;

    const-class v2, Lcom/twitter/database/generated/bs;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbfy;

    const-class v2, Lcom/twitter/database/generated/je;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbgm;

    const-class v2, Lcom/twitter/database/generated/kb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbik;

    const-class v2, Lcom/twitter/database/generated/ok;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbhc;

    const-class v2, Lcom/twitter/database/generated/lj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbhe;

    const-class v2, Lcom/twitter/database/generated/ln;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbhg;

    const-class v2, Lcom/twitter/database/generated/mb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbed;

    const-class v2, Lcom/twitter/database/generated/et;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbdx;

    const-class v2, Lcom/twitter/database/generated/dw;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbia;

    const-class v2, Lcom/twitter/database/generated/nm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbhs;

    const-class v2, Lcom/twitter/database/generated/na;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbhu;

    const-class v2, Lcom/twitter/database/generated/ne;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbie;

    const-class v2, Lcom/twitter/database/generated/ns;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lber;

    const-class v2, Lcom/twitter/database/generated/fx;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbet;

    const-class v2, Lcom/twitter/database/generated/gb;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbim;

    const-class v2, Lcom/twitter/database/generated/oo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbio;

    const-class v2, Lcom/twitter/database/generated/os;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbhk;

    const-class v2, Lcom/twitter/database/generated/mh;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbhm;

    const-class v2, Lcom/twitter/database/generated/ml;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbho;

    const-class v2, Lcom/twitter/database/generated/mp;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbhq;

    const-class v2, Lcom/twitter/database/generated/mv;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    const-class v1, Lbex;

    const-class v2, Lcom/twitter/database/generated/gu;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->c:Ljava/util/Map;

    .line 181
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->c:Ljava/util/Map;

    const-class v1, Lbgg;

    const-class v2, Lcom/twitter/database/generated/js;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    .line 185
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbgu;

    const-class v2, Lcom/twitter/database/generated/kv;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbcp;

    const-class v2, Lcom/twitter/database/generated/bm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbcb;

    const-class v2, Lcom/twitter/database/generated/ao;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbfh;

    const-class v2, Lcom/twitter/database/generated/he;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbgi;

    const-class v2, Lcom/twitter/database/generated/jv;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbch;

    const-class v2, Lcom/twitter/database/generated/ba;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbdc;

    const-class v2, Lcom/twitter/database/generated/ci;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbgb;

    const-class v2, Lcom/twitter/database/generated/ji;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbgo;

    const-class v2, Lcom/twitter/database/generated/kf;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbhi;

    const-class v2, Lcom/twitter/database/generated/mf;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbhy;

    const-class v2, Lcom/twitter/database/generated/nk;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbic;

    const-class v2, Lcom/twitter/database/generated/nq;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbhw;

    const-class v2, Lcom/twitter/database/generated/ni;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    const-class v1, Lbez;

    const-class v2, Lcom/twitter/database/generated/gy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/twitter/database/model/b;)V
    .locals 1
    .annotation build Latx;
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/f;-><init>(Lcom/twitter/database/model/b;)V

    .line 204
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/twitter/database/model/b;->a(Z)V

    .line 205
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string/jumbo v0, "twitter_schema"

    return-object v0
.end method

.method protected final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/p;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->b:Ljava/util/Map;

    return-object v0
.end method

.method protected final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/q;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->c:Ljava/util/Map;

    return-object v0
.end method

.method protected final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/database/model/r;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lcom/twitter/database/generated/com$twitter$database$schema$TwitterSchema$$Impl;->d:Ljava/util/Map;

    return-object v0
.end method

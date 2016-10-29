.class public Lcom/twitter/library/provider/ea;
.super Lbam;
.source "Twttr"


# instance fields
.field private final b:J


# direct methods
.method constructor <init>(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lbam;-><init>(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    iput-wide p3, p0, Lcom/twitter/library/provider/ea;->b:J

    .line 79
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x34

    return v0
.end method

.method protected b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lbao;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 89
    sget-object v0, Lcom/twitter/library/provider/ea;->a:Lbao;

    const/16 v1, 0x32

    new-array v1, v1, [Lbao;

    const/4 v2, 0x0

    new-instance v3, Lcom/twitter/library/provider/eb;

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/eb;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/twitter/library/provider/em;

    invoke-direct {v3, p0, v5}, Lcom/twitter/library/provider/em;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/twitter/library/provider/ex;

    invoke-direct {v3, p0, v6}, Lcom/twitter/library/provider/ex;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/twitter/library/provider/fe;

    invoke-direct {v2, p0, v7}, Lcom/twitter/library/provider/fe;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/twitter/library/provider/ff;

    invoke-direct {v2, p0, v8}, Lcom/twitter/library/provider/ff;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v2, v1, v5

    sget-object v2, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v2, v1, v6

    new-instance v2, Lcom/twitter/library/provider/fg;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lcom/twitter/library/provider/fg;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/twitter/library/provider/fh;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lcom/twitter/library/provider/fh;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v2, v1, v8

    const/16 v2, 0x8

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/twitter/library/provider/fi;

    const/16 v4, 0xc

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/fi;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/twitter/library/provider/fj;

    const/16 v4, 0xd

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/fj;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/twitter/library/provider/ec;

    const/16 v4, 0xe

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ec;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/twitter/library/provider/ed;

    const/16 v4, 0x10

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ed;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/twitter/library/provider/ee;

    const/16 v4, 0x12

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ee;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/twitter/library/provider/ef;

    const/16 v4, 0x14

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ef;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/twitter/library/provider/eg;

    const/16 v4, 0x16

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/eg;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/twitter/library/provider/eh;

    const/16 v4, 0x17

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/eh;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/twitter/library/provider/ei;

    const/16 v4, 0x18

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ei;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/twitter/library/provider/ej;

    const/16 v4, 0x19

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ej;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lcom/twitter/library/provider/ek;

    const/16 v4, 0x1a

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ek;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lcom/twitter/library/provider/el;

    const/16 v4, 0x1d

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/el;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lcom/twitter/library/provider/en;

    const/16 v4, 0x1e

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/en;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lcom/twitter/library/provider/eo;

    const/16 v4, 0x1f

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/eo;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lcom/twitter/library/provider/ep;

    const/16 v4, 0x20

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ep;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lcom/twitter/library/provider/eq;

    const/16 v4, 0x21

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/eq;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lcom/twitter/library/provider/er;

    const/16 v4, 0x22

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/er;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lcom/twitter/library/provider/es;

    const/16 v4, 0x23

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/es;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Lcom/twitter/library/provider/et;

    const/16 v4, 0x27

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/et;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Lcom/twitter/library/provider/eu;

    const/16 v4, 0x28

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/eu;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Lcom/twitter/library/provider/ev;

    const/16 v4, 0x29

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ev;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x28

    new-instance v3, Lcom/twitter/library/provider/ew;

    const/16 v4, 0x2b

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ew;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Lcom/twitter/library/provider/ey;

    const/16 v4, 0x2d

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ey;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Lcom/twitter/library/provider/ez;

    const/16 v4, 0x2f

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/ez;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    sget-object v3, Lcom/twitter/library/provider/ea;->a:Lbao;

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-instance v3, Lcom/twitter/library/provider/fa;

    const/16 v4, 0x31

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/fa;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-instance v3, Lcom/twitter/library/provider/fb;

    const/16 v4, 0x32

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/fb;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-instance v3, Lcom/twitter/library/provider/fc;

    const/16 v4, 0x33

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/fc;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-instance v3, Lcom/twitter/library/provider/fd;

    const/16 v4, 0x34

    invoke-direct {v3, p0, v4}, Lcom/twitter/library/provider/fd;-><init>(Lcom/twitter/library/provider/ea;I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

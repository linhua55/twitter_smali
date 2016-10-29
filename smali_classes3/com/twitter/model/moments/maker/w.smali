.class public abstract Lcom/twitter/model/moments/maker/w;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final f:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/twitter/model/moments/maker/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/twitter/util/serialization/af;

    const/4 v1, 0x0

    const-class v2, Lcom/twitter/model/moments/maker/MomentEditOperation;

    new-instance v3, Lcom/twitter/model/moments/maker/m;

    invoke-direct {v3}, Lcom/twitter/model/moments/maker/m;-><init>()V

    .line 13
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/twitter/model/moments/maker/a;

    new-instance v3, Lcom/twitter/model/moments/maker/c;

    invoke-direct {v3}, Lcom/twitter/model/moments/maker/c;-><init>()V

    .line 14
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/twitter/model/moments/maker/s;

    new-instance v3, Lcom/twitter/model/moments/maker/v;

    invoke-direct {v3}, Lcom/twitter/model/moments/maker/v;-><init>()V

    .line 15
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/twitter/model/moments/maker/h;

    new-instance v3, Lcom/twitter/model/moments/maker/k;

    invoke-direct {v3}, Lcom/twitter/model/moments/maker/k;-><init>()V

    .line 16
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/twitter/model/moments/maker/e;

    new-instance v3, Lcom/twitter/model/moments/maker/g;

    invoke-direct {v3}, Lcom/twitter/model/moments/maker/g;-><init>()V

    .line 18
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/twitter/model/moments/maker/q;

    new-instance v3, Lcom/twitter/model/moments/maker/r;

    invoke-direct {v3}, Lcom/twitter/model/moments/maker/r;-><init>()V

    .line 20
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/twitter/model/moments/maker/al;

    new-instance v3, Lcom/twitter/model/moments/maker/am;

    invoke-direct {v3}, Lcom/twitter/model/moments/maker/am;-><init>()V

    .line 22
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    .line 12
    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a([Lcom/twitter/util/serialization/af;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/moments/maker/w;->f:Lcom/twitter/util/serialization/ah;

    .line 25
    new-instance v0, Lcom/twitter/model/moments/maker/x;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/x;-><init>()V

    sput-object v0, Lcom/twitter/model/moments/maker/w;->g:Lcom/twitter/model/moments/maker/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

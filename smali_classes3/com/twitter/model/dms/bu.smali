.class public Lcom/twitter/model/dms/bu;
.super Lcom/twitter/model/dms/n;
.source "Twttr"


# static fields
.field public static final i:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/bu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/twitter/model/dms/bw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/dms/bw;-><init>(Lcom/twitter/model/dms/bp;)V

    sput-object v0, Lcom/twitter/model/dms/bu;->i:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/dms/bv;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/n;-><init>(Lcom/twitter/model/dms/p;)V

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/bv;Lcom/twitter/model/dms/bp;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/bu;-><init>(Lcom/twitter/model/dms/bv;)V

    return-void
.end method

.class public Lcom/twitter/model/dms/cj;
.super Lcom/twitter/model/dms/i;
.source "Twttr"


# static fields
.field public static final c:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/cj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/twitter/model/dms/cm;

    invoke-direct {v0}, Lcom/twitter/model/dms/cm;-><init>()V

    sput-object v0, Lcom/twitter/model/dms/cj;->c:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/dms/cl;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/i;-><init>(Lcom/twitter/model/dms/j;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/dms/cl;Lcom/twitter/model/dms/ck;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/cj;-><init>(Lcom/twitter/model/dms/cl;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, -0x1

    return v0
.end method

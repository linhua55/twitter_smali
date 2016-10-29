.class public Lcom/twitter/model/core/t;
.super Lcom/twitter/model/core/e;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/twitter/model/core/v;

    invoke-direct {v0}, Lcom/twitter/model/core/v;-><init>()V

    sput-object v0, Lcom/twitter/model/core/t;->a:Lcom/twitter/util/serialization/ah;

    .line 16
    sget-object v0, Lcom/twitter/model/core/t;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/model/core/j;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/core/t;->b:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method constructor <init>(Lcom/twitter/model/core/u;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/twitter/model/core/e;-><init>(Lcom/twitter/model/core/f;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/u;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/model/core/u;

    invoke-direct {v0, p0}, Lcom/twitter/model/core/u;-><init>(Lcom/twitter/model/core/t;)V

    return-object v0
.end method

.method public synthetic b()Lcom/twitter/model/core/f;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/twitter/model/core/t;->a()Lcom/twitter/model/core/u;

    move-result-object v0

    return-object v0
.end method

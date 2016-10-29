.class public abstract Lcom/twitter/model/topic/d;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/topic/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twitter/util/serialization/af;

    const/4 v1, 0x0

    const-class v2, Lcom/twitter/model/topic/e;

    new-instance v3, Lcom/twitter/model/topic/f;

    invoke-direct {v3}, Lcom/twitter/model/topic/f;-><init>()V

    .line 11
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/twitter/model/topic/g;

    new-instance v3, Lcom/twitter/model/topic/h;

    invoke-direct {v3}, Lcom/twitter/model/topic/h;-><init>()V

    .line 13
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/twitter/model/topic/i;

    new-instance v3, Lcom/twitter/model/topic/j;

    invoke-direct {v3}, Lcom/twitter/model/topic/j;-><init>()V

    .line 14
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a([Lcom/twitter/util/serialization/af;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/topic/d;->a:Lcom/twitter/util/serialization/ah;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

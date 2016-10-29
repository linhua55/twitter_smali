.class public Lcrt;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcrt;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Ljava/util/List",
            "<",
            "Lcrt;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcrw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrw;-><init>(Lcru;)V

    sput-object v0, Lcrt;->a:Lcom/twitter/util/serialization/ah;

    .line 23
    sget-object v0, Lcrt;->a:Lcom/twitter/util/serialization/ah;

    .line 24
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcrt;->b:Lcom/twitter/util/serialization/ah;

    .line 23
    return-void
.end method

.method private constructor <init>(Lcrv;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcrv;->a(Lcrv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrt;->c:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcrv;->b(Lcrv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrt;->d:Ljava/lang/String;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcrv;Lcru;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcrt;-><init>(Lcrv;)V

    return-void
.end method

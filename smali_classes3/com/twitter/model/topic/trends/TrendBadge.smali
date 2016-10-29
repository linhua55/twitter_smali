.class public final enum Lcom/twitter/model/topic/trends/TrendBadge;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/model/topic/trends/TrendBadge;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/model/topic/trends/TrendBadge;

.field public static final b:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/topic/trends/TrendBadge;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lcom/twitter/model/topic/trends/TrendBadge;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/twitter/model/topic/trends/TrendBadge;

    const-string/jumbo v1, "LIVE_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/twitter/model/topic/trends/TrendBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/model/topic/trends/TrendBadge;->a:Lcom/twitter/model/topic/trends/TrendBadge;

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/twitter/model/topic/trends/TrendBadge;

    sget-object v1, Lcom/twitter/model/topic/trends/TrendBadge;->a:Lcom/twitter/model/topic/trends/TrendBadge;

    aput-object v1, v0, v2

    sput-object v0, Lcom/twitter/model/topic/trends/TrendBadge;->c:[Lcom/twitter/model/topic/trends/TrendBadge;

    .line 24
    new-instance v0, Lcom/twitter/model/topic/trends/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/topic/trends/r;-><init>(Lcom/twitter/model/topic/trends/q;)V

    sput-object v0, Lcom/twitter/model/topic/trends/TrendBadge;->b:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/model/topic/trends/TrendBadge;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/twitter/model/topic/trends/TrendBadge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/trends/TrendBadge;

    return-object v0
.end method

.method public static values()[Lcom/twitter/model/topic/trends/TrendBadge;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/twitter/model/topic/trends/TrendBadge;->c:[Lcom/twitter/model/topic/trends/TrendBadge;

    invoke-virtual {v0}, [Lcom/twitter/model/topic/trends/TrendBadge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/model/topic/trends/TrendBadge;

    return-object v0
.end method

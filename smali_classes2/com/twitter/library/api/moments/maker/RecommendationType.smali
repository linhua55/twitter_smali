.class public final enum Lcom/twitter/library/api/moments/maker/RecommendationType;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/library/api/moments/maker/RecommendationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/library/api/moments/maker/RecommendationType;

.field public static final enum b:Lcom/twitter/library/api/moments/maker/RecommendationType;

.field public static final enum c:Lcom/twitter/library/api/moments/maker/RecommendationType;

.field private static final synthetic d:[Lcom/twitter/library/api/moments/maker/RecommendationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/twitter/library/api/moments/maker/RecommendationType;

    const-string/jumbo v1, "TWEETS"

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/api/moments/maker/RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/api/moments/maker/RecommendationType;->a:Lcom/twitter/library/api/moments/maker/RecommendationType;

    .line 5
    new-instance v0, Lcom/twitter/library/api/moments/maker/RecommendationType;

    const-string/jumbo v1, "LIKES"

    invoke-direct {v0, v1, v3}, Lcom/twitter/library/api/moments/maker/RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/api/moments/maker/RecommendationType;->b:Lcom/twitter/library/api/moments/maker/RecommendationType;

    .line 6
    new-instance v0, Lcom/twitter/library/api/moments/maker/RecommendationType;

    const-string/jumbo v1, "SUGGESTIONS"

    invoke-direct {v0, v1, v4}, Lcom/twitter/library/api/moments/maker/RecommendationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/library/api/moments/maker/RecommendationType;->c:Lcom/twitter/library/api/moments/maker/RecommendationType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twitter/library/api/moments/maker/RecommendationType;

    sget-object v1, Lcom/twitter/library/api/moments/maker/RecommendationType;->a:Lcom/twitter/library/api/moments/maker/RecommendationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/library/api/moments/maker/RecommendationType;->b:Lcom/twitter/library/api/moments/maker/RecommendationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/library/api/moments/maker/RecommendationType;->c:Lcom/twitter/library/api/moments/maker/RecommendationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twitter/library/api/moments/maker/RecommendationType;->d:[Lcom/twitter/library/api/moments/maker/RecommendationType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/library/api/moments/maker/RecommendationType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/twitter/library/api/moments/maker/RecommendationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/moments/maker/RecommendationType;

    return-object v0
.end method

.method public static values()[Lcom/twitter/library/api/moments/maker/RecommendationType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/twitter/library/api/moments/maker/RecommendationType;->d:[Lcom/twitter/library/api/moments/maker/RecommendationType;

    invoke-virtual {v0}, [Lcom/twitter/library/api/moments/maker/RecommendationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/library/api/moments/maker/RecommendationType;

    return-object v0
.end method

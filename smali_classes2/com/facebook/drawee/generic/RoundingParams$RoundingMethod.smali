.class public final enum Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

.field public static final enum b:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

.field private static final synthetic c:[Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    const-string/jumbo v1, "OVERLAY_COLOR"

    invoke-direct {v0, v1, v2}, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 37
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    const-string/jumbo v1, "BITMAP_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->b:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->a:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->b:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->c:[Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    return-object v0
.end method

.method public static values()[Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->c:[Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    invoke-virtual {v0}, [Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    return-object v0
.end method

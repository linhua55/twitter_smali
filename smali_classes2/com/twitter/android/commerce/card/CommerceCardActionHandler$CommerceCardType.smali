.class public final enum Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

.field public static final enum b:Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

.field private static final synthetic c:[Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    const-string/jumbo v1, "BUYNOW"

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;->a:Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    .line 32
    new-instance v0, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    const-string/jumbo v1, "OFFERS"

    invoke-direct {v0, v1, v3}, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;->b:Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    sget-object v1, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;->a:Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;->b:Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;->c:[Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    return-object v0
.end method

.method public static values()[Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;->c:[Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    invoke-virtual {v0}, [Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/commerce/card/CommerceCardActionHandler$CommerceCardType;

    return-object v0
.end method

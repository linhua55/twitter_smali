.class final enum Lcom/twitter/android/card/CallToAction$State;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/android/card/CallToAction$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/android/card/CallToAction$State;

.field public static final enum b:Lcom/twitter/android/card/CallToAction$State;

.field public static final enum c:Lcom/twitter/android/card/CallToAction$State;

.field public static final enum d:Lcom/twitter/android/card/CallToAction$State;

.field private static final synthetic e:[Lcom/twitter/android/card/CallToAction$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/twitter/android/card/CallToAction$State;

    const-string/jumbo v1, "EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/card/CallToAction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/card/CallToAction$State;->a:Lcom/twitter/android/card/CallToAction$State;

    .line 29
    new-instance v0, Lcom/twitter/android/card/CallToAction$State;

    const-string/jumbo v1, "OPEN_APP"

    invoke-direct {v0, v1, v3}, Lcom/twitter/android/card/CallToAction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/card/CallToAction$State;->b:Lcom/twitter/android/card/CallToAction$State;

    .line 30
    new-instance v0, Lcom/twitter/android/card/CallToAction$State;

    const-string/jumbo v1, "GET_APP"

    invoke-direct {v0, v1, v4}, Lcom/twitter/android/card/CallToAction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/card/CallToAction$State;->c:Lcom/twitter/android/card/CallToAction$State;

    .line 31
    new-instance v0, Lcom/twitter/android/card/CallToAction$State;

    const-string/jumbo v1, "VIEW_ON_WEB"

    invoke-direct {v0, v1, v5}, Lcom/twitter/android/card/CallToAction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/card/CallToAction$State;->d:Lcom/twitter/android/card/CallToAction$State;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twitter/android/card/CallToAction$State;

    sget-object v1, Lcom/twitter/android/card/CallToAction$State;->a:Lcom/twitter/android/card/CallToAction$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/android/card/CallToAction$State;->b:Lcom/twitter/android/card/CallToAction$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/android/card/CallToAction$State;->c:Lcom/twitter/android/card/CallToAction$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/android/card/CallToAction$State;->d:Lcom/twitter/android/card/CallToAction$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/android/card/CallToAction$State;->e:[Lcom/twitter/android/card/CallToAction$State;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/card/CallToAction$State;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/twitter/android/card/CallToAction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/CallToAction$State;

    return-object v0
.end method

.method public static values()[Lcom/twitter/android/card/CallToAction$State;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/twitter/android/card/CallToAction$State;->e:[Lcom/twitter/android/card/CallToAction$State;

    invoke-virtual {v0}, [Lcom/twitter/android/card/CallToAction$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/card/CallToAction$State;

    return-object v0
.end method

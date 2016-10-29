.class Lcom/twitter/android/revenue/card/u;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/twitter/android/revenue/card/u;->a:Ljava/lang/String;

    .line 346
    iput-object p2, p0, Lcom/twitter/android/revenue/card/u;->b:Ljava/lang/String;

    .line 347
    iput-object p3, p0, Lcom/twitter/android/revenue/card/u;->c:Ljava/lang/String;

    .line 348
    iput p4, p0, Lcom/twitter/android/revenue/card/u;->d:I

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/android/revenue/card/q;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/revenue/card/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/twitter/android/revenue/card/u;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/revenue/card/u;)Z
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/twitter/android/revenue/card/u;->a()Z

    move-result v0

    return v0
.end method

.class public Lcom/twitter/library/card/bm;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static a:Lcom/twitter/library/card/bm;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a()Lcom/twitter/library/card/bm;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/twitter/library/card/bm;->a:Lcom/twitter/library/card/bm;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/twitter/library/card/bm;

    invoke-direct {v0}, Lcom/twitter/library/card/bm;-><init>()V

    sput-object v0, Lcom/twitter/library/card/bm;->a:Lcom/twitter/library/card/bm;

    .line 15
    :cond_0
    sget-object v0, Lcom/twitter/library/card/bm;->a:Lcom/twitter/library/card/bm;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/twitter/library/card/bk;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/library/card/f;

    invoke-direct {v0}, Lcom/twitter/library/card/f;-><init>()V

    return-object v0
.end method

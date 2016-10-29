.class public Lcom/twitter/android/moments/viewmodels/aq;
.super Lcom/twitter/android/moments/viewmodels/ag;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/moments/viewmodels/ag",
        "<",
        "Lcom/twitter/android/moments/viewmodels/ap;",
        "Lcom/twitter/android/moments/viewmodels/aq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/util/math/Size;

.field private b:Lcom/twitter/model/moments/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/twitter/android/moments/viewmodels/ag;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/viewmodels/aq;)Lcom/twitter/util/math/Size;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/aq;->a:Lcom/twitter/util/math/Size;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/viewmodels/aq;)Lcom/twitter/model/moments/k;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/viewmodels/aq;->b:Lcom/twitter/model/moments/k;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/k;)Lcom/twitter/android/moments/viewmodels/aq;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/aq;->b:Lcom/twitter/model/moments/k;

    .line 72
    return-object p0
.end method

.method public a(Lcom/twitter/util/math/Size;)Lcom/twitter/android/moments/viewmodels/aq;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/android/moments/viewmodels/aq;->a:Lcom/twitter/util/math/Size;

    .line 66
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/twitter/android/moments/viewmodels/aq;->d()Lcom/twitter/android/moments/viewmodels/ap;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/twitter/android/moments/viewmodels/ap;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/twitter/android/moments/viewmodels/ap;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/viewmodels/ap;-><init>(Lcom/twitter/android/moments/viewmodels/aq;)V

    return-object v0
.end method

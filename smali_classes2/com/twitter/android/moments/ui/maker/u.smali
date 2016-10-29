.class public Lcom/twitter/android/moments/ui/maker/u;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/cw;

.field private final b:Lcom/twitter/android/moments/ui/maker/du;

.field private final c:Lcom/twitter/model/moments/viewmodels/MomentPage;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/android/moments/ui/maker/cw;Lcom/twitter/android/moments/ui/maker/du;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/u;->c:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 26
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/u;->a:Lcom/twitter/android/moments/ui/maker/cw;

    .line 27
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/u;->b:Lcom/twitter/android/moments/ui/maker/du;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/u;)Lcom/twitter/model/moments/viewmodels/MomentPage;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/u;->c:Lcom/twitter/model/moments/viewmodels/MomentPage;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/u;)Lcom/twitter/android/moments/ui/maker/du;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/u;->b:Lcom/twitter/android/moments/ui/maker/du;

    return-object v0
.end method

.method private c()Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjf",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/twitter/android/moments/ui/maker/v;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/v;-><init>(Lcom/twitter/android/moments/ui/maker/u;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/u;->b:Lcom/twitter/android/moments/ui/maker/du;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/u;->c:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/du;->a(Lcom/twitter/model/moments/ak;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/u;->b:Lcom/twitter/android/moments/ui/maker/du;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/u;->c:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/du;->a(Lcom/twitter/model/moments/ak;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-static {v0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/u;->a:Lcom/twitter/android/moments/ui/maker/cw;

    .line 41
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/cw;->a()Lrx/w;

    move-result-object v0

    .line 42
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/u;->c()Ldjf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->b(Ldjf;)Lrx/w;

    move-result-object v0

    goto :goto_0
.end method

.class public Lcom/twitter/android/moments/ui/maker/cw;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/moments/viewmodels/MomentPage;

.field private final b:Lcom/twitter/android/moments/ui/maker/el;

.field private final c:Lcom/twitter/android/moments/ui/maker/eh;

.field private final d:Lcom/twitter/util/math/Size;

.field private final e:Lcom/twitter/util/math/Size;

.field private final f:Lcom/twitter/util/object/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/object/d",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Lcom/twitter/android/moments/ui/maker/el;Lcom/twitter/android/moments/ui/maker/eh;Lcom/twitter/util/object/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            "Lcom/twitter/util/math/Size;",
            "Lcom/twitter/util/math/Size;",
            "Lcom/twitter/android/moments/ui/maker/el;",
            "Lcom/twitter/android/moments/ui/maker/eh;",
            "Lcom/twitter/util/object/d",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/cw;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 43
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/cw;->b:Lcom/twitter/android/moments/ui/maker/el;

    .line 44
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/cw;->c:Lcom/twitter/android/moments/ui/maker/eh;

    .line 45
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/cw;->d:Lcom/twitter/util/math/Size;

    .line 46
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/cw;->e:Lcom/twitter/util/math/Size;

    .line 47
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/cw;->f:Lcom/twitter/util/object/d;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/cw;)Lcom/twitter/util/object/d;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cw;->f:Lcom/twitter/util/object/d;

    return-object v0
.end method

.method private a(Lcom/twitter/util/math/Size;)Ldjf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/math/Size;",
            ")",
            "Ldjf",
            "<",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/twitter/android/moments/ui/maker/cx;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/maker/cx;-><init>(Lcom/twitter/android/moments/ui/maker/cw;Lcom/twitter/util/math/Size;)V

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ")",
            "Ldjj",
            "<",
            "Lcom/twitter/android/moments/ui/maker/el;",
            "Lrx/o",
            "<",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/twitter/android/moments/ui/maker/da;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/moments/ui/maker/da;-><init>(Lcom/twitter/android/moments/ui/maker/cw;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    return-object v0
.end method

.method private a(Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;)Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/math/Size;",
            "Lcom/twitter/util/math/Size;",
            ")",
            "Ldjj",
            "<",
            "Lcom/twitter/android/moments/ui/maker/bl;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/twitter/android/moments/ui/maker/db;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/db;-><init>(Lcom/twitter/android/moments/ui/maker/cw;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;)V

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/cw;)Lcom/twitter/android/moments/ui/maker/eh;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cw;->c:Lcom/twitter/android/moments/ui/maker/eh;

    return-object v0
.end method

.method private b()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Ljava/util/List",
            "<",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;",
            "Lcom/twitter/android/moments/ui/maker/bl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/twitter/android/moments/ui/maker/cy;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/cy;-><init>(Lcom/twitter/android/moments/ui/maker/cw;)V

    return-object v0
.end method

.method private c()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;",
            "Lrx/o",
            "<+",
            "Lalk",
            "<+",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/twitter/android/moments/ui/maker/cz;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/cz;-><init>(Lcom/twitter/android/moments/ui/maker/cw;)V

    return-object v0
.end method


# virtual methods
.method public a()Lrx/w;
    .locals 3
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
    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cw;->b:Lcom/twitter/android/moments/ui/maker/el;

    .line 53
    invoke-static {v0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/cw;->a:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 54
    invoke-direct {p0, v1}, Lcom/twitter/android/moments/ui/maker/cw;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->b(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/cw;->d:Lcom/twitter/util/math/Size;

    .line 57
    invoke-direct {p0, v1}, Lcom/twitter/android/moments/ui/maker/cw;->a(Lcom/twitter/util/math/Size;)Ldjf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->a(Ldjf;)Lrx/o;

    move-result-object v0

    .line 58
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/cw;->c()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjj;)Lrx/o;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lrx/o;->p()Lrx/o;

    move-result-object v0

    .line 60
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/cw;->b()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/cw;->d:Lcom/twitter/util/math/Size;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/cw;->e:Lcom/twitter/util/math/Size;

    .line 61
    invoke-direct {p0, v1, v2}, Lcom/twitter/android/moments/ui/maker/cw;->a(Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;)Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldcn;->a(Lrx/o;Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    return-object v0
.end method
